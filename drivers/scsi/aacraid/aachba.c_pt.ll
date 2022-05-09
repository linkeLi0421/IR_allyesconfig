; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/aachba.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/aachba.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hw_fib = type { %struct.aac_fibhdr, [480 x i8] }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon.83, i32, i32, i32 }
%union.anon.83 = type { i32 }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.90, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.90 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.fsa_dev_info = type { i64, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, [8 x i8], %struct.sense_data, i32, [16 x i8] }
%struct.sense_data = type { i8, i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, [2 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
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
%struct.execute_work = type { %struct.work_struct }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.aac_srb_unit = type { %struct.aac_srb, %struct.aac_srb_reply }
%struct.aac_srb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], %struct.sgmap }
%struct.sgmap = type { i32, [1 x %struct.sgentry] }
%struct.sgentry = type { i32, i32 }
%struct.aac_srb_reply = type { i32, i32, i32, i32, i32, [30 x i8] }
%struct.aac_ciss_phys_luns_resp = type { [4 x i8], i8, [3 x i8], [1 x %struct._ciss_lun] }
%struct._ciss_lun = type { [3 x i8], i8, [2 x i8], [2 x i8], [16 x i8] }
%struct.aac_ciss_identify_pd = type <{ i8, i8, i16, i32, i32, [40 x i8], [40 x i8], [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, [2 x i8], i8, i8, i32, i8, i8, i64, i64, i32, [20 x i8], [32 x i8], i16, [256 x i8], [256 x i8], [256 x i16], i8, i8, i16, [256 x i8], [256 x i8], i8, i8, i8, [8 x i16], [8 x i8], i8, [8 x i8], [20 x i8], i8, i8, i8, i8, i16, [10 x i8], i16, [40 x i8], [8 x i8], i16, i16, i8, i8, i8, i8, i8, i8, [64 x i8], i32, i16, i16, [6 x i8], i8, [4 x i8], [64 x i8], [16 x i8], [17 x i8] }>
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.aac_driver_ident = type { ptr, ptr, ptr, ptr, i16, i32 }
%struct.inquiry_data = type { i8, i8, i8, i8, i8, [2 x i8], i8, [8 x i8], [16 x i8], [4 x i8] }
%struct.aac_modep_data = type { %struct.anon.92, %struct.anon.93, [3 x i8] }
%struct.anon.92 = type { i8, i8, i8, i8 }
%struct.anon.93 = type { i8, [3 x i8], i8, [3 x i8] }
%struct.aac_modep10_data = type { %struct.anon.94, %struct.anon.95, [3 x i8] }
%struct.anon.94 = type { [2 x i8], i8, i8, [2 x i8], [2 x i8] }
%struct.anon.95 = type { i8, [3 x i8], i8, [3 x i8] }
%struct.aac_hba_cmd_req = type { i8, i8, i8, i8, i32, i32, i32, [16 x i8], [8 x i8], i32, i8, i8, i16, i32, i32, i32, i32, [92 x %struct.aac_hba_sgl] }
%struct.aac_hba_sgl = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_inq = type { [8 x i8], [16 x i8], [4 x i8] }
%struct.aac_delete_disk = type { i32, i32 }
%struct.aac_query_disk = type { i32, i32, i32, i32, i32, i32, i32, i32, [10 x i8], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aac_native_hba = type { %union.anon.96, %union.anon.97 }
%union.anon.96 = type { %struct.aac_hba_cmd_req }
%union.anon.97 = type { %struct.aac_hba_resp, [460 x i8] }
%struct.aac_hba_resp = type { i8, [3 x i8], i32, i32, i8, i8, i8, i8, i32, [32 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.sgmap64 = type { i32, [1 x %struct.sgentry64] }
%struct.sgentry64 = type { [2 x i32], i32 }
%struct.aac_raw_io2 = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, i8, i8, [4 x i8], [0 x %struct.sge_ieee1212] }
%struct.sge_ieee1212 = type { i32, i32, i32, i32 }
%struct.sgmapraw = type { i32, [1 x %struct.sgentryraw] }
%struct.sgentryraw = type { i32, i32, [2 x i32], i32, i32 }
%struct.tvpd_page83 = type { i8, i8, i8, i8, %struct.tvpd_id_descriptor_type_1, %struct.tvpd_id_descriptor_type_2, %struct.tvpd_id_descriptor_type_3 }
%struct.tvpd_id_descriptor_type_1 = type { i16, i8, i8, [8 x i8], [16 x i8], [8 x i8] }
%struct.tvpd_id_descriptor_type_2 = type { i16, i8, i8, %struct.teu64id }
%struct.teu64id = type { i32, i8, [3 x i8] }
%struct.tvpd_id_descriptor_type_3 = type { i16, i8, i8, [16 x i8] }

@aac_commit = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@startup_timeout = dso_local global { i32, [28 x i8] } { i32 180, [28 x i8] zeroinitializer }, align 32
@aif_timeout = dso_local global { i32, [28 x i8] } { i32 120, [28 x i8] zeroinitializer }, align 32
@__param_str_aac_sync_mode = internal constant [22 x i8] c"aacraid.aac_sync_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@aac_sync_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_aac_sync_mode = internal constant %struct.kernel_param { ptr @__param_str_aac_sync_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_sync_mode } }, section "__param", align 4
@__UNIQUE_ID_aac_sync_modetype287 = internal constant [35 x i8] c"aacraid.parmtype=aac_sync_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aac_sync_mode288 = internal constant [65 x i8] c"aacraid.parm=aac_sync_mode:Force sync. transfer mode 0=off, 1=on\00", section ".modinfo", align 1
@__param_str_aac_convert_sgl = internal constant [24 x i8] c"aacraid.aac_convert_sgl\00", align 1
@aac_convert_sgl = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_aac_convert_sgl = internal constant %struct.kernel_param { ptr @__param_str_aac_convert_sgl, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_convert_sgl } }, section "__param", align 4
@__UNIQUE_ID_aac_convert_sgltype289 = internal constant [37 x i8] c"aacraid.parmtype=aac_convert_sgl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aac_convert_sgl290 = internal constant [74 x i8] c"aacraid.parm=aac_convert_sgl:Convert non-conformable s/g list 0=off, 1=on\00", section ".modinfo", align 1
@__param_str_nondasd = internal constant [16 x i8] c"aacraid.nondasd\00", align 1
@nondasd = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nondasd = internal constant %struct.kernel_param { ptr @__param_str_nondasd, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @nondasd } }, section "__param", align 4
@__UNIQUE_ID_nondasdtype291 = internal constant [29 x i8] c"aacraid.parmtype=nondasd:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nondasd292 = internal constant [78 x i8] c"aacraid.parm=nondasd:Control scanning of hba for nondasd devices. 0=off, 1=on\00", section ".modinfo", align 1
@__param_str_cache = internal constant [14 x i8] c"aacraid.cache\00", align 1
@aac_cache = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_cache = internal constant %struct.kernel_param { ptr @__param_str_cache, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_cache } }, section "__param", align 4
@__UNIQUE_ID_cachetype293 = internal constant [27 x i8] c"aacraid.parmtype=cache:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cache294 = internal constant [194 x i8] c"aacraid.parm=cache:Disable Queue Flush commands:\0A\09bit 0 - Disable FUA in WRITE SCSI commands\0A\09bit 1 - Disable SYNCHRONIZE_CACHE SCSI command\0A\09bit 2 - Disable only if Battery is protecting Cache\00", section ".modinfo", align 1
@__param_str_dacmode = internal constant [16 x i8] c"aacraid.dacmode\00", align 1
@dacmode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_dacmode = internal constant %struct.kernel_param { ptr @__param_str_dacmode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dacmode } }, section "__param", align 4
@__UNIQUE_ID_dacmodetype295 = internal constant [29 x i8] c"aacraid.parmtype=dacmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dacmode296 = internal constant [85 x i8] c"aacraid.parm=dacmode:Control whether dma addressing is using 64 bit DAC. 0=off, 1=on\00", section ".modinfo", align 1
@__param_str_commit = internal constant [15 x i8] c"aacraid.commit\00", align 1
@__param_commit = internal constant %struct.kernel_param { ptr @__param_str_commit, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_commit } }, section "__param", align 4
@__UNIQUE_ID_committype297 = internal constant [28 x i8] c"aacraid.parmtype=commit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_commit298 = internal constant [170 x i8] c"aacraid.parm=commit:Control whether a COMMIT_CONFIG is issued to the adapter for foreign arrays.\0AThis is typically needed in systems that do not have a BIOS. 0=off, 1=on\00", section ".modinfo", align 1
@__param_str_msi = internal constant [12 x i8] c"aacraid.msi\00", align 1
@aac_msi = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_msi } }, section "__param", align 4
@__UNIQUE_ID_msitype299 = internal constant [25 x i8] c"aacraid.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi300 = internal constant [63 x i8] c"aacraid.parm=msi:IRQ handling. 0=PIC(default), 1=MSI, 2=MSI-X)\00", section ".modinfo", align 1
@__param_str_startup_timeout = internal constant [24 x i8] c"aacraid.startup_timeout\00", align 1
@__param_startup_timeout = internal constant %struct.kernel_param { ptr @__param_str_startup_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @startup_timeout } }, section "__param", align 4
@__UNIQUE_ID_startup_timeouttype301 = internal constant [37 x i8] c"aacraid.parmtype=startup_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_startup_timeout302 = internal constant [186 x i8] c"aacraid.parm=startup_timeout:The duration of time in seconds to wait for adapter to have its kernel up and\0Arunning. This is typically adjusted for large systems that do not have a BIOS.\00", section ".modinfo", align 1
@__param_str_aif_timeout = internal constant [20 x i8] c"aacraid.aif_timeout\00", align 1
@__param_aif_timeout = internal constant %struct.kernel_param { ptr @__param_str_aif_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aif_timeout } }, section "__param", align 4
@__UNIQUE_ID_aif_timeouttype303 = internal constant [33 x i8] c"aacraid.parmtype=aif_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aif_timeout304 = internal constant [182 x i8] c"aacraid.parm=aif_timeout:The duration of time in seconds to wait for applications to pick up AIFs before\0Aderegistering them. This is typically adjusted for heavily burdened systems.\00", section ".modinfo", align 1
@__param_str_aac_fib_dump = internal constant [21 x i8] c"aacraid.aac_fib_dump\00", align 1
@aac_fib_dump = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_aac_fib_dump = internal constant %struct.kernel_param { ptr @__param_str_aac_fib_dump, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_fib_dump } }, section "__param", align 4
@__UNIQUE_ID_aac_fib_dumptype305 = internal constant [34 x i8] c"aacraid.parmtype=aac_fib_dump:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aac_fib_dump306 = internal constant [78 x i8] c"aacraid.parm=aac_fib_dump:Dump controller fibs prior to IOP_RESET 0=off, 1=on\00", section ".modinfo", align 1
@numacb = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_numacb = internal constant [15 x i8] c"aacraid.numacb\00", align 1
@__param_numacb = internal constant %struct.kernel_param { ptr @__param_str_numacb, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @numacb } }, section "__param", align 4
@__UNIQUE_ID_numacbtype307 = internal constant [28 x i8] c"aacraid.parmtype=numacb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_numacb308 = internal constant [168 x i8] c"aacraid.parm=numacb:Request a limit to the number of adapter control blocks (FIB) allocated. Valid values are 512 and down. Default is to use suggestion from Firmware.\00", section ".modinfo", align 1
@__param_str_acbsize = internal constant [16 x i8] c"aacraid.acbsize\00", align 1
@acbsize = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_acbsize = internal constant %struct.kernel_param { ptr @__param_str_acbsize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @acbsize } }, section "__param", align 4
@__UNIQUE_ID_acbsizetype309 = internal constant [29 x i8] c"aacraid.parmtype=acbsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_acbsize310 = internal constant [161 x i8] c"aacraid.parm=acbsize:Request a specific adapter control block (FIB) size. Valid values are 512, 2048, 4096 and 8192. Default is to use suggestion from Firmware.\00", section ".modinfo", align 1
@update_interval = dso_local global { i32, [28 x i8] } { i32 1800, [28 x i8] zeroinitializer }, align 32
@__param_str_update_interval = internal constant [24 x i8] c"aacraid.update_interval\00", align 1
@__param_update_interval = internal constant %struct.kernel_param { ptr @__param_str_update_interval, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @update_interval } }, section "__param", align 4
@__UNIQUE_ID_update_intervaltype311 = internal constant [37 x i8] c"aacraid.parmtype=update_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_update_interval312 = internal constant [94 x i8] c"aacraid.parm=update_interval:Interval in seconds between time sync updates issued to adapter.\00", section ".modinfo", align 1
@check_interval = dso_local global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_str_check_interval = internal constant [23 x i8] c"aacraid.check_interval\00", align 1
@__param_check_interval = internal constant %struct.kernel_param { ptr @__param_str_check_interval, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @check_interval } }, section "__param", align 4
@__UNIQUE_ID_check_intervaltype313 = internal constant [36 x i8] c"aacraid.parmtype=check_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check_interval314 = internal constant [79 x i8] c"aacraid.parm=check_interval:Interval in seconds between adapter health checks.\00", section ".modinfo", align 1
@aac_check_reset = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_check_reset = internal constant [20 x i8] c"aacraid.check_reset\00", align 1
@__param_check_reset = internal constant %struct.kernel_param { ptr @__param_str_check_reset, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_check_reset } }, section "__param", align 4
@__UNIQUE_ID_check_resettype315 = internal constant [33 x i8] c"aacraid.parmtype=check_reset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check_reset316 = internal constant [143 x i8] c"aacraid.parm=check_reset:If adapter fails health check, reset the adapter. a value of -1 forces the reset to adapters programmed to ignore it.\00", section ".modinfo", align 1
@expose_physicals = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_expose_physicals = internal constant [25 x i8] c"aacraid.expose_physicals\00", align 1
@__param_expose_physicals = internal constant %struct.kernel_param { ptr @__param_str_expose_physicals, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @expose_physicals } }, section "__param", align 4
@__UNIQUE_ID_expose_physicalstype317 = internal constant [38 x i8] c"aacraid.parmtype=expose_physicals:int\00", section ".modinfo", align 1
@__UNIQUE_ID_expose_physicals318 = internal constant [95 x i8] c"aacraid.parm=expose_physicals:Expose physical components of the arrays. -1=protect 0=off, 1=on\00", section ".modinfo", align 1
@__param_str_reset_devices = internal constant [22 x i8] c"aacraid.reset_devices\00", align 1
@aac_reset_devices = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reset_devices = internal constant %struct.kernel_param { ptr @__param_str_reset_devices, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_reset_devices } }, section "__param", align 4
@__UNIQUE_ID_reset_devicestype319 = internal constant [35 x i8] c"aacraid.parmtype=reset_devices:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_devices320 = internal constant [69 x i8] c"aacraid.parm=reset_devices:Force an adapter reset at initialization.\00", section ".modinfo", align 1
@__param_str_wwn = internal constant [12 x i8] c"aacraid.wwn\00", align 1
@aac_wwn = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_wwn = internal constant %struct.kernel_param { ptr @__param_str_wwn, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @aac_wwn } }, section "__param", align 4
@__UNIQUE_ID_wwntype321 = internal constant [25 x i8] c"aacraid.parmtype=wwn:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wwn322 = internal constant [132 x i8] c"aacraid.parm=wwn:Select a WWN type for the arrays:\0A\090 - Disable\0A\091 - Array Meta Data Signature (default)\0A\092 - Adapter Serial Number\00", section ".modinfo", align 1
@aac_get_config_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014aac_get_config_status: SendFIB failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aac_get_config_status\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/aacraid/aachba.c\00", [34 x i8] zeroinitializer }, align 32
@aac_get_config_status._entry_ptr = internal global ptr @aac_get_config_status._entry, section ".printk_index", align 4
@aac_get_config_status._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014aac_get_config_status: Will not issue the Commit Configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@aac_get_config_status._entry_ptr.5 = internal global ptr @aac_get_config_status._entry.3, section ".printk_index", align 4
@aac_get_config_status._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014aac_get_config_status: Foreign device configurations are being ignored\0A\00", [54 x i8] zeroinitializer }, align 32
@aac_get_config_status._entry_ptr.8 = internal global ptr @aac_get_config_status._entry.6, section ".printk_index", align 4
@aac_get_containers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014aac_get_containers: SendFIB failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aac_get_containers\00", [45 x i8] zeroinitializer }, align 32
@aac_get_containers._entry_ptr = internal global ptr @aac_get_containers._entry, section ".printk_index", align 4
@container_types = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [44 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 2148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s%d: kernel %d.%d-%d[%d] %.*s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aac_get_adapter_info\00", [43 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr = internal global ptr @aac_get_adapter_info._entry, section ".printk_index", align 4
@aac_get_adapter_info._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s%d: monitor %d.%d-%d[%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.15 = internal global ptr @aac_get_adapter_info._entry.13, section ".printk_index", align 4
@aac_get_adapter_info._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s%d: bios %d.%d-%d[%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.18 = internal global ptr @aac_get_adapter_info._entry.16, section ".printk_index", align 4
@aac_get_adapter_info._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 2163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s%d: serial %s\00", [46 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.21 = internal global ptr @aac_get_adapter_info._entry.19, section ".printk_index", align 4
@aac_get_adapter_info._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s%d: TSID %.*s\0A\00", [45 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.24 = internal global ptr @aac_get_adapter_info._entry.22, section ".printk_index", align 4
@aac_get_adapter_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 2175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s%d: Reset Adapter Ignored\0A\00", [33 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.27 = internal global ptr @aac_get_adapter_info._entry.25, section ".printk_index", align 4
@aac_get_adapter_info._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 2205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s%d: ROMB RAID/SCSI mode enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.30 = internal global ptr @aac_get_adapter_info._entry.28, section ".printk_index", align 4
@aac_get_adapter_info._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 2210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s%d: Non-DASD support enabled.\0A\00", [61 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.33 = internal global ptr @aac_get_adapter_info._entry.31, section ".printk_index", align 4
@aac_get_adapter_info._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.2, i32 2238, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"64 Bit DAC enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.38 = internal global ptr @aac_get_adapter_info._entry.34, section ".printk_index", align 4
@aac_get_adapter_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.12, ptr @.str.2, i32 2240, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA mask set failed, 64 Bit DAC disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.41 = internal global ptr @aac_get_adapter_info._entry.39, section ".printk_index", align 4
@aac_get_adapter_info._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.12, ptr @.str.2, i32 2243, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No suitable DMA available\0A\00", [37 x i8] zeroinitializer }, align 32
@aac_get_adapter_info._entry_ptr.44 = internal global ptr @aac_get_adapter_info._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Volume\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mirror\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stripe\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID5\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSRW\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSRO\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Morph\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID4\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID10\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID00\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"V-MIRRORS\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PSEUDO R4\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID50\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID5D\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RAID5D0\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID1E\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID6\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID60\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@aac_build_sg64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 3867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014aacraid: cmd len %08lX cmd underflow %08X\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aac_build_sg64\00", [17 x i8] zeroinitializer }, align 32
@aac_build_sg64._entry_ptr = internal global ptr @aac_build_sg64._entry, section ".printk_index", align 4
@aac_srb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 3417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014aac_srb_callback: srb failed, status = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_srb_callback\00", [47 x i8] zeroinitializer }, align 32
@aac_srb_callback._entry_ptr = internal global ptr @aac_srb_callback._entry, section ".printk_index", align 4
@aac_srb_callback._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 3446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014aacraid: SCSI CMD underflow\0A\00", [33 x i8] zeroinitializer }, align 32
@aac_srb_callback._entry_ptr.74 = internal global ptr @aac_srb_callback._entry.72, section ".printk_index", align 4
@aac_srb_callback._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 3448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014aacraid: SCSI CMD Data Overrun\0A\00", [62 x i8] zeroinitializer }, align 32
@aac_srb_callback._entry_ptr.77 = internal global ptr @aac_srb_callback._entry.75, section ".printk_index", align 4
@aac_build_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.78, ptr @.str.2, i32 3823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aac_build_sg\00", [19 x i8] zeroinitializer }, align 32
@aac_build_sg._entry_ptr = internal global ptr @aac_build_sg._entry, section ".printk_index", align 4
@aac_build_sgraw2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.79, ptr @.str.2, i32 3996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_build_sgraw2\00", [47 x i8] zeroinitializer }, align 32
@aac_build_sgraw2._entry_ptr = internal global ptr @aac_build_sgraw2._entry, section ".printk_index", align 4
@aac_build_sgraw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.80, ptr @.str.2, i32 3915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aac_build_sgraw\00", [16 x i8] zeroinitializer }, align 32
@aac_build_sgraw._entry_ptr = internal global ptr @aac_build_sgraw._entry, section ".printk_index", align 4
@aac_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 2498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014aac_read: aac_fib_send failed with status: %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aac_read\00", [23 x i8] zeroinitializer }, align 32
@aac_read._entry_ptr = internal global ptr @aac_read._entry, section ".printk_index", align 4
@aac_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 2589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014aac_write: aac_fib_send failed with status: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aac_write\00", [22 x i8] zeroinitializer }, align 32
@aac_write._entry_ptr = internal global ptr @aac_write._entry, section ".printk_index", align 4
@aac_synchronize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 2683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014aac_synchronize: aac_fib_send failed with status: %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aac_synchronize\00", [16 x i8] zeroinitializer }, align 32
@aac_synchronize._entry_ptr = internal global ptr @aac_synchronize._entry, section ".printk_index", align 4
@synchronize_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 2623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014synchronize_callback: synchronize failed, status = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synchronize_callback\00", [43 x i8] zeroinitializer }, align 32
@synchronize_callback._entry_ptr = internal global ptr @synchronize_callback._entry, section ".printk_index", align 4
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%08X%02X\00", [23 x i8] zeroinitializer }, align 32
@aac_get_container_serial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014aac_get_container_serial: aac_fib_send failed with status: %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aac_get_container_serial\00", [39 x i8] zeroinitializer }, align 32
@aac_get_container_serial._entry_ptr = internal global ptr @aac_get_container_serial._entry, section ".printk_index", align 4
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ARRAY           \00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08X\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAID\00", [27 x i8] zeroinitializer }, align 32
@aac_get_container_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014aac_get_container_name: aac_fib_send failed with status: %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aac_get_container_name\00", [41 x i8] zeroinitializer }, align 32
@aac_get_container_name._entry_ptr = internal global ptr @aac_get_container_name._entry, section ".printk_index", align 4
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@aac_send_srb_fib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 3737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014aac_srb: aac_fib_send failed with status: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_send_srb_fib\00", [47 x i8] zeroinitializer }, align 32
@aac_send_srb_fib._entry_ptr = internal global ptr @aac_send_srb_fib._entry, section ".printk_index", align 4
@aac_send_hba_fib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 3782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014aac_hba_cmd_req: aac_fib_send failed with status: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_send_hba_fib\00", [47 x i8] zeroinitializer }, align 32
@aac_send_hba_fib._entry_ptr = internal global ptr @aac_send_hba_fib._entry, section ".printk_index", align 4
@aac_build_sghba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.107, ptr @.str.2, i32 4100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aac_build_sghba\00", [16 x i8] zeroinitializer }, align 32
@aac_build_sghba._entry_ptr = internal global ptr @aac_build_sghba._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 18, i64 37, i64 158]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 18]
@__sancov_gen_cov_switch_values.112 = internal global [25 x i64] [i64 23, i64 8, i64 0, i64 1, i64 3, i64 7, i64 8, i64 10, i64 18, i64 22, i64 23, i64 26, i64 27, i64 30, i64 37, i64 40, i64 42, i64 43, i64 53, i64 90, i64 136, i64 138, i64 158, i64 168, i64 170]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 128, i64 131]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 63]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 63]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 136, i64 168]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 138, i64 170]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 355, i64 371, i64 2131, i64 270627]
@__sancov_gen_cov_switch_values.129 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.130 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 8, i64 64]
@__sancov_gen_cov_switch_values.131 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 14, i64 81]
@__sancov_gen_cov_switch_values.132 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15, i64 18, i64 32, i64 33, i64 35]
@__sancov_gen_cov_switch_values.133 = internal global [11 x i64] [i64 9, i64 8, i64 8, i64 10, i64 18, i64 40, i64 42, i64 136, i64 138, i64 168, i64 170]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 133, i64 161]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 72]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"aac_commit\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 241, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"startup_timeout\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 242, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"aif_timeout\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 243, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"aac_sync_mode\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 244, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"aac_convert_sgl\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 245, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant [8 x i8] c"nondasd\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 237, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [10 x i8] c"aac_cache\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 238, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [8 x i8] c"dacmode\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 239, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [8 x i8] c"aac_msi\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 240, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"aac_fib_dump\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 283, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"numacb\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 287, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant [8 x i8] c"acbsize\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 293, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"update_interval\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 299, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"check_interval\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 304, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"aac_check_reset\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 309, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"expose_physicals\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 315, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"aac_reset_devices\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 320, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant [8 x i8] c"aac_wwn\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 324, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 383, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 395, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 424, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 514, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"container_types\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 866, i32 14 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2140, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2150, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2155, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2162, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2165, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2174, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2204, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2210, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2238, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2240, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2243, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 867, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 868, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 869, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 870, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 871, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 872, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 873, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 874, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 875, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 876, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 877, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 878, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 879, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 880, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 881, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 882, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 883, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 884, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 885, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 886, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 887, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 326, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3866, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3416, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3446, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3448, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3822, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3995, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3914, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2498, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2589, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2682, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2621, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1168, i32 63 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1147, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1045, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1098, i32 41 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 959, i32 24 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 616, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 156, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3737, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 3781, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.511 = private constant [33 x i8] c"../drivers/scsi/aacraid/aachba.c\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4099, i32 3 }
@llvm.compiler.used = appending global [210 x ptr] [ptr @__UNIQUE_ID_aac_convert_sgl290, ptr @__UNIQUE_ID_aac_convert_sgltype289, ptr @__UNIQUE_ID_aac_fib_dump306, ptr @__UNIQUE_ID_aac_fib_dumptype305, ptr @__UNIQUE_ID_aac_sync_mode288, ptr @__UNIQUE_ID_aac_sync_modetype287, ptr @__UNIQUE_ID_acbsize310, ptr @__UNIQUE_ID_acbsizetype309, ptr @__UNIQUE_ID_aif_timeout304, ptr @__UNIQUE_ID_aif_timeouttype303, ptr @__UNIQUE_ID_cache294, ptr @__UNIQUE_ID_cachetype293, ptr @__UNIQUE_ID_check_interval314, ptr @__UNIQUE_ID_check_intervaltype313, ptr @__UNIQUE_ID_check_reset316, ptr @__UNIQUE_ID_check_resettype315, ptr @__UNIQUE_ID_commit298, ptr @__UNIQUE_ID_committype297, ptr @__UNIQUE_ID_dacmode296, ptr @__UNIQUE_ID_dacmodetype295, ptr @__UNIQUE_ID_expose_physicals318, ptr @__UNIQUE_ID_expose_physicalstype317, ptr @__UNIQUE_ID_msi300, ptr @__UNIQUE_ID_msitype299, ptr @__UNIQUE_ID_nondasd292, ptr @__UNIQUE_ID_nondasdtype291, ptr @__UNIQUE_ID_numacb308, ptr @__UNIQUE_ID_numacbtype307, ptr @__UNIQUE_ID_reset_devices320, ptr @__UNIQUE_ID_reset_devicestype319, ptr @__UNIQUE_ID_startup_timeout302, ptr @__UNIQUE_ID_startup_timeouttype301, ptr @__UNIQUE_ID_update_interval312, ptr @__UNIQUE_ID_update_intervaltype311, ptr @__UNIQUE_ID_wwn322, ptr @__UNIQUE_ID_wwntype321, ptr @__param_aac_convert_sgl, ptr @__param_aac_fib_dump, ptr @__param_aac_sync_mode, ptr @__param_acbsize, ptr @__param_aif_timeout, ptr @__param_cache, ptr @__param_check_interval, ptr @__param_check_reset, ptr @__param_commit, ptr @__param_dacmode, ptr @__param_expose_physicals, ptr @__param_msi, ptr @__param_nondasd, ptr @__param_numacb, ptr @__param_reset_devices, ptr @__param_startup_timeout, ptr @__param_update_interval, ptr @__param_wwn, ptr @aac_build_sg._entry, ptr @aac_build_sg._entry_ptr, ptr @aac_build_sg64._entry, ptr @aac_build_sg64._entry_ptr, ptr @aac_build_sghba._entry, ptr @aac_build_sghba._entry_ptr, ptr @aac_build_sgraw._entry, ptr @aac_build_sgraw._entry_ptr, ptr @aac_build_sgraw2._entry, ptr @aac_build_sgraw2._entry_ptr, ptr @aac_get_adapter_info._entry, ptr @aac_get_adapter_info._entry.13, ptr @aac_get_adapter_info._entry.16, ptr @aac_get_adapter_info._entry.19, ptr @aac_get_adapter_info._entry.22, ptr @aac_get_adapter_info._entry.25, ptr @aac_get_adapter_info._entry.28, ptr @aac_get_adapter_info._entry.31, ptr @aac_get_adapter_info._entry.34, ptr @aac_get_adapter_info._entry.39, ptr @aac_get_adapter_info._entry.42, ptr @aac_get_adapter_info._entry_ptr, ptr @aac_get_adapter_info._entry_ptr.15, ptr @aac_get_adapter_info._entry_ptr.18, ptr @aac_get_adapter_info._entry_ptr.21, ptr @aac_get_adapter_info._entry_ptr.24, ptr @aac_get_adapter_info._entry_ptr.27, ptr @aac_get_adapter_info._entry_ptr.30, ptr @aac_get_adapter_info._entry_ptr.33, ptr @aac_get_adapter_info._entry_ptr.38, ptr @aac_get_adapter_info._entry_ptr.41, ptr @aac_get_adapter_info._entry_ptr.44, ptr @aac_get_config_status._entry, ptr @aac_get_config_status._entry.3, ptr @aac_get_config_status._entry.6, ptr @aac_get_config_status._entry_ptr, ptr @aac_get_config_status._entry_ptr.5, ptr @aac_get_config_status._entry_ptr.8, ptr @aac_get_container_name._entry, ptr @aac_get_container_name._entry_ptr, ptr @aac_get_container_serial._entry, ptr @aac_get_container_serial._entry_ptr, ptr @aac_get_containers._entry, ptr @aac_get_containers._entry_ptr, ptr @aac_read._entry, ptr @aac_read._entry_ptr, ptr @aac_send_hba_fib._entry, ptr @aac_send_hba_fib._entry_ptr, ptr @aac_send_srb_fib._entry, ptr @aac_send_srb_fib._entry_ptr, ptr @aac_srb_callback._entry, ptr @aac_srb_callback._entry.72, ptr @aac_srb_callback._entry.75, ptr @aac_srb_callback._entry_ptr, ptr @aac_srb_callback._entry_ptr.74, ptr @aac_srb_callback._entry_ptr.77, ptr @aac_synchronize._entry, ptr @aac_synchronize._entry_ptr, ptr @aac_write._entry, ptr @aac_write._entry_ptr, ptr @synchronize_callback._entry, ptr @synchronize_callback._entry_ptr, ptr @aac_commit, ptr @startup_timeout, ptr @aif_timeout, ptr @aac_sync_mode, ptr @aac_convert_sgl, ptr @nondasd, ptr @aac_cache, ptr @dacmode, ptr @aac_msi, ptr @aac_fib_dump, ptr @numacb, ptr @acbsize, ptr @update_interval, ptr @check_interval, ptr @aac_check_reset, ptr @expose_physicals, ptr @aac_reset_devices, ptr @aac_wwn, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @container_types, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_commit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_sync_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_convert_sgl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nondasd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_dump to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numacb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acbsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_check_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expose_physicals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_reset_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_wwn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_config_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_config_status._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_config_status._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_containers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @container_types to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_adapter_info._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_build_sg64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srb_callback._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srb_callback._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_build_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_build_sgraw2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_build_sgraw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_synchronize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synchronize_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_container_serial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_container_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_send_srb_fib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_send_hba_fib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_build_sghba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_get_config_status(ptr noundef %dev, i32 noundef %commit_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aac_fib_alloc(ptr noundef %dev) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1828716544, ptr %type, align 4
  %count = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 134217728, ptr %count, align 4
  %call1 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %call, i32 noundef 32, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %if.end52

if.else:                                          ; preds = %if.end
  %5 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_fib_va, align 4
  %data5 = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %lor.lhs.false, label %if.else.if.end52.thread81_crit_edge

if.else.if.end52.thread81_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.thread81

lor.lhs.false:                                    ; preds = %if.else
  %status8 = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -637534208, i32 %10)
  %cmp9.not = icmp eq i32 %10, -637534208
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false.if.end52.thread81_crit_edge

lor.lhs.false.if.end52.thread81_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.thread81

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %data11 = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 32
  %11 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data11, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp ugt i32 %13, 1
  br i1 %cmp12, label %lor.lhs.false10.if.end52.thread81_crit_edge, label %if.then22

lor.lhs.false10.if.end52.thread81_crit_edge:      ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.thread81

if.end52.thread81:                                ; preds = %lor.lhs.false10.if.end52.thread81_crit_edge, %lor.lhs.false.if.end52.thread81_crit_edge, %if.else.if.end52.thread81_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  br label %if.then54

if.then22:                                        ; preds = %lor.lhs.false10
  %call23 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call) #15
  %14 = load i32, ptr @aac_commit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp27 = icmp ne i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit_flag)
  %tobool29.not = icmp eq i32 %commit_flag, 0
  %or.cond = and i1 %tobool29.not, %cmp27
  br i1 %or.cond, label %if.else42, label %if.then30

if.then30:                                        ; preds = %if.then22
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %15 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_fib_va, align 4
  %data33 = getelementptr inbounds %struct.hw_fib, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 33554432, ptr %data33, align 4
  %type36 = getelementptr inbounds %struct.hw_fib, ptr %16, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1744830464, ptr %type36, align 4
  %call37 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %call, i32 noundef 8, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, -1
  br i1 %cmp38, label %if.then39, label %if.then30.if.end52_crit_edge

if.then30.if.end52_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then39:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call) #15
  br label %if.then54

if.else42:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp43 = icmp eq i32 %14, 0
  br i1 %cmp43, label %do.end47, label %if.else42.if.then54_crit_edge

if.else42.if.then54_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then54

do.end47:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #17
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #18
  br label %if.then54

if.end52:                                         ; preds = %if.then30.if.end52_crit_edge, %do.end
  %status.2 = phi i32 [ %call37, %if.then30.if.end52_crit_edge ], [ %call1, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %status.2)
  %cmp53.not = icmp eq i32 %status.2, -512
  br i1 %cmp53.not, label %if.end52.cleanup_crit_edge, label %if.end52.if.then54_crit_edge

if.end52.if.then54_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then54:                                        ; preds = %if.end52.if.then54_crit_edge, %do.end47, %if.else42.if.then54_crit_edge, %if.then39, %if.end52.thread81
  %status.280 = phi i32 [ %status.2, %if.end52.if.then54_crit_edge ], [ %call37, %if.then39 ], [ %call1, %if.else42.if.then54_crit_edge ], [ %call1, %do.end47 ], [ -22, %if.end52.thread81 ]
  tail call void @aac_fib_free(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end52.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %status.280, %if.then54 ], [ -512, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_fib_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_send(i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_get_containers(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aac_fib_alloc(ptr noundef %dev) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108864, ptr %type, align 4
  %call1 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %call, i32 noundef 8, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_fib_va, align 4
  %ContainerSwitchEntries = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %ContainerSwitchEntries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ContainerSwitchEntries, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %dev6 = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  %supported_options2 = getelementptr inbounds %struct.aac_dev, ptr %10, i32 0, i32 52, i32 19
  %11 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supported_options2, align 8
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then2.if.end11.thread_crit_edge, label %if.then8

if.then2.if.end11.thread_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.thread

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %MaxSimpleVolumes = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %MaxSimpleVolumes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %MaxSimpleVolumes, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then8, %if.then2.if.end11.thread_crit_edge
  %maximum_num_containers.0 = phi i32 [ %15, %if.then8 ], [ %8, %if.then2.if.end11.thread_crit_edge ]
  %call10 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call) #15
  br label %if.then13

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call1)
  %cmp12.not = icmp eq i32 %call1, -512
  br i1 %cmp12.not, label %if.end11.if.end14_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.end11.thread
  %maximum_num_containers.178 = phi i32 [ %maximum_num_containers.0, %if.end11.thread ], [ 32, %if.end11.if.then13_crit_edge ]
  tail call void @aac_fib_free(ptr noundef nonnull %call) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %maximum_num_containers.179 = phi i32 [ %maximum_num_containers.178, %if.then13 ], [ 32, %if.end11.if.end14_crit_edge ]
  %16 = tail call i32 @llvm.smax.i32(i32 %maximum_num_containers.179, i32 32)
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %17 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fsa_dev, align 8
  %cmp18 = icmp eq ptr %18, null
  br i1 %cmp18, label %if.end14.if.then21_crit_edge, label %lor.lhs.false

if.end14.if.then21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end14
  %maximum_num_containers19 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %19 = ptrtoint ptr %maximum_num_containers19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maximum_num_containers19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %16)
  %cmp20.not = icmp eq i32 %20, %16
  br i1 %cmp20.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end14.if.then21_crit_edge
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 88) #15
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.then21.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !363

if.then21.kcalloc.exit_crit_edge:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #19
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.then21.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.then21.kcalloc.exit_crit_edge ]
  %24 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i.i, ptr %fsa_dev, align 8
  tail call void @kfree(ptr noundef %18) #15
  %25 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fsa_dev, align 8
  %tobool26.not = icmp eq ptr %26, null
  br i1 %tobool26.not, label %kcalloc.exit.cleanup_crit_edge, label %if.end28

kcalloc.exit.cleanup_crit_edge:                   ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %maximum_num_containers29 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %27 = ptrtoint ptr %maximum_num_containers29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %16, ptr %maximum_num_containers29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %lor.lhs.false.if.end30_crit_edge
  %maximum_num_containers31 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %28 = ptrtoint ptr %maximum_num_containers31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maximum_num_containers31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3281.not = icmp eq i32 %29, 0
  br i1 %cmp3281.not, label %if.end30.cleanup_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %index.082, 1
  %30 = ptrtoint ptr %maximum_num_containers31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maximum_num_containers31, align 4
  %cmp32 = icmp ult i32 %inc, %31
  br i1 %cmp32, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end30.for.body_crit_edge
  %index.082 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %32 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fsa_dev, align 8
  %devname = getelementptr %struct.fsa_dev_info, ptr %33, i32 %index.082, i32 11
  %34 = ptrtoint ptr %devname to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %devname, align 1
  %35 = load ptr, ptr %fsa_dev, align 8
  %valid = getelementptr %struct.fsa_dev_info, ptr %35, i32 %index.082, i32 7
  %36 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %valid, align 1
  %call37 = tail call i32 @aac_probe_container(ptr noundef %dev, i32 noundef %index.082)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %kcalloc.exit.cleanup_crit_edge ], [ %call37, %do.end ], [ %call1, %if.end30.cleanup_crit_edge ], [ %call37, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_probe_container(ptr nocapture noundef readonly %dev, i32 noundef %cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 292) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2488) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i23, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %call7.i.i) #15
  tail call void @kfree(ptr noundef %call7.i.i23) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i23, ptr %device, align 4
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %call7.i.i23, i32 0, i32 69
  %3 = ptrtoint ptr %sdev_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sdev_state, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %call7.i.i23, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cid, ptr %id, align 8
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %5 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scsi_host_ptr, align 8
  %7 = ptrtoint ptr %call7.i.i23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i.i23, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 53
  %call.i = tail call ptr @aac_fib_alloc(ptr noundef %hostdata.i) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then19.i_crit_edge, label %if.then.i

if.end.if.then19.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19.i

if.then.i:                                        ; preds = %if.end
  tail call void @aac_fib_init(ptr noundef nonnull %call.i) #15
  %hw_fib_va.i = getelementptr inbounds %struct.fib, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_fib_va.i, align 4
  %data.i = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.fib, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %supported_options2.i = getelementptr inbounds %struct.aac_dev, ptr %11, i32 0, i32 52, i32 19
  %12 = ptrtoint ptr %supported_options2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %supported_options2.i, align 8
  %and.i = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool2.not.i, i32 16777216, i32 503316480
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %..i, ptr %data.i, align 4
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  %count.i = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count.i, align 4
  %type.i = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 134217728, ptr %type.i, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %call7.i.i, i32 0, i32 22
  %22 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @aac_probe_container_callback1, ptr %SCp.i, align 8
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %call7.i.i, i32 0, i32 22, i32 9
  %23 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 262, ptr %phase.i, align 4
  %call8.i = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %call.i, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_aac_probe_container1, ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, -115
  br i1 %cmp.i, label %if.then.i.while.cond.preheader_crit_edge, label %if.end10.i

if.then.i.while.cond.preheader_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

if.end10.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp11.i = icmp slt i32 %call8.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %_aac_probe_container.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %SCp.i, align 8
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef nonnull %call.i) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call.i) #15
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.then12.i, %if.end.if.then19.i_crit_edge
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %fsa_dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %29 = ptrtoint ptr %fsa_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fsa_dev.i, align 8
  %tobool24.not.i = icmp eq ptr %30, null
  br i1 %tobool24.not.i, label %if.then19.i.if.end7_crit_edge, label %if.then25.i

if.then19.i.if.end7_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then25.i:                                      ; preds = %if.then19.i
  %id.i68.i = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %id.i68.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i68.i, align 8
  %valid.i = getelementptr %struct.fsa_dev_info, ptr %30, i32 %32, i32 7
  %33 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valid.i, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp29.i = icmp eq i8 %35, 0
  br i1 %cmp29.i, label %cleanup36.i, label %if.then25.i.if.end7_crit_edge

if.then25.i.if.end7_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

cleanup36.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %valid.i, align 1
  %37 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %device, align 4
  br label %while.cond.preheader

_aac_probe_container.exit:                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp = icmp eq i32 %call8.i, 0
  br i1 %cmp, label %_aac_probe_container.exit.while.cond.preheader_crit_edge, label %_aac_probe_container.exit.if.end7_crit_edge

_aac_probe_container.exit.if.end7_crit_edge:      ; preds = %_aac_probe_container.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

_aac_probe_container.exit.while.cond.preheader_crit_edge: ; preds = %_aac_probe_container.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %_aac_probe_container.exit.while.cond.preheader_crit_edge, %cleanup36.i, %if.then.i.while.cond.preheader_crit_edge
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %cmp627 = icmp eq ptr %39, %call7.i.i23
  br i1 %cmp627, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end7_crit_edge

while.cond.preheader.if.end7_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @schedule() #15
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %cmp6 = icmp eq ptr %41, %call7.i.i23
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.body.if.end7_crit_edge

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end7:                                          ; preds = %while.body.if.end7_crit_edge, %while.cond.preheader.if.end7_crit_edge, %_aac_probe_container.exit.if.end7_crit_edge, %if.then25.i.if.end7_crit_edge, %if.then19.i.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i23) #15
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %call7.i.i, i32 0, i32 22, i32 5
  %42 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %Status, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %43, %if.end7 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_aac_probe_container(ptr noundef %scsicmd, ptr noundef %callback) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %call = tail call ptr @aac_fib_alloc(ptr noundef %hostdata) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then19_crit_edge, label %if.then

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19

if.then:                                          ; preds = %entry
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1
  %dev = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %supported_options2 = getelementptr inbounds %struct.aac_dev, ptr %7, i32 0, i32 52, i32 19
  %8 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported_options2, align 8
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %. = select i1 %tobool2.not, i32 16777216, i32 503316480
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %., ptr %data, align 4
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %count = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217728, ptr %type, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22
  %18 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %callback, ptr %SCp, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %19 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 262, ptr %phase, align 4
  %call8 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %call, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_aac_probe_container1, ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call8)
  %cmp = icmp eq i32 %call8, -115
  br i1 %cmp, label %if.then.cleanup40_crit_edge, label %if.end10

if.then.cleanup40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup40

if.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp11 = icmp slt i32 %call8, 0
  br i1 %cmp11, label %if.then12, label %if.end10.cleanup40_crit_edge

if.end10.cleanup40_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup40

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %SCp, align 4
  %call15 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call) #15
  br label %if.then19

if.then19:                                        ; preds = %if.then12, %entry.if.then19_crit_edge
  %status.0.ph = phi i32 [ %call8, %if.then12 ], [ -12, %entry.if.then19_crit_edge ]
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fsa_dev, align 8
  %tobool24.not = icmp eq ptr %26, null
  br i1 %tobool24.not, label %if.then19.cleanup40_crit_edge, label %if.then25

if.then19.cleanup40_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup40

if.then25:                                        ; preds = %if.then19
  %id.i68 = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 16
  %27 = ptrtoint ptr %id.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i68, align 8
  %valid = getelementptr %struct.fsa_dev_info, ptr %26, i32 %28, i32 7
  %29 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %valid, align 1
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp29 = icmp eq i8 %31, 0
  br i1 %cmp29, label %cleanup36, label %if.then25.cleanup40_crit_edge

if.then25.cleanup40_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup40

cleanup36:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %valid, align 1
  %call33 = tail call i32 %callback(ptr noundef %scsicmd) #15, !callees !364
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup36, %if.then25.cleanup40_crit_edge, %if.then19.cleanup40_crit_edge, %if.end10.cleanup40_crit_edge, %if.then.cleanup40_crit_edge
  %retval.3 = phi i32 [ %call33, %cleanup36 ], [ 0, %if.then.cleanup40_crit_edge ], [ %call8, %if.end10.cleanup40_crit_edge ], [ %status.0.ph, %if.then25.cleanup40_crit_edge ], [ %status.0.ph, %if.then19.cleanup40_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aac_probe_container_callback1(ptr nocapture noundef writeonly %scsicmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %device, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_container_type(i32 noundef %tindex) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %tindex, i32 20)
  %arrayidx = getelementptr [21 x ptr], ptr @container_types, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_setup_safw_adapter(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %srbu.i.i.i = alloca %struct.aac_srb_unit, align 4
  %srbu.i.i = alloca %struct.aac_srb_unit, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aac_get_containers(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.aac_setup_safw_targets.exit_crit_edge, label %if.end.i, !prof !363

entry.aac_setup_safw_targets.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_setup_safw_targets.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %srbu.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 6152) #20
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %if.end.i.aac_get_safw_ciss_luns.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.aac_get_safw_ciss_luns.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_get_safw_ciss_luns.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %1 = call ptr @memset(ptr %srbu.i.i, i32 0, i32 116)
  %flags.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1073741824, ptr %flags.i.i, align 4
  %cdb.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %cdb.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -61, ptr %cdb.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i, i32 0, i32 9, i32 8
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %arrayidx4.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i, i32 0, i32 9, i32 9
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %arrayidx7.i.i, align 1
  %call8.i.i = call fastcc i32 @aac_send_safw_bmic_cmd(ptr noundef %dev, ptr noundef nonnull %srbu.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 6152) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end.i.i.mem_free_all.i.i_crit_edge, label %if.end13.i.i, !prof !363

if.end.i.i.mem_free_all.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mem_free_all.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %resp_flag.i.i = getelementptr inbounds %struct.aac_ciss_phys_luns_resp, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %resp_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %resp_flag.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp15.not.i.i = icmp eq i8 %8, 2
  br i1 %cmp15.not.i.i, label %if.end11.i, label %if.end13.i.i.mem_free_all.i.i_crit_edge

if.end13.i.i.mem_free_all.i.i_crit_edge:          ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mem_free_all.i.i

mem_free_all.i.i:                                 ; preds = %if.end13.i.i.mem_free_all.i.i_crit_edge, %if.end.i.i.mem_free_all.i.i_crit_edge
  %rcode.1.i.i = phi i32 [ %call8.i.i, %if.end.i.i.mem_free_all.i.i_crit_edge ], [ -42, %if.end13.i.i.mem_free_all.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %aac_get_safw_ciss_luns.exit.thread.i

aac_get_safw_ciss_luns.exit.thread.i:             ; preds = %mem_free_all.i.i, %if.end.i.aac_get_safw_ciss_luns.exit.thread.i_crit_edge
  %rcode.0.i.ph.i = phi i32 [ %rcode.1.i.i, %mem_free_all.i.i ], [ -12, %if.end.i.aac_get_safw_ciss_luns.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %srbu.i.i) #15
  br label %aac_setup_safw_targets.exit

if.end11.i:                                       ; preds = %if.end13.i.i
  %safw_phys_luns.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 82
  %9 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %safw_phys_luns.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %srbu.i.i) #15
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %12 = icmp ult i32 %11, 24
  br i1 %12, label %if.end11.i.if.end21.i_crit_edge, label %for.body.lr.ph.i.i

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

for.body.lr.ph.i.i:                               ; preds = %if.end11.i
  %div.i.i.i = udiv i32 %11, 24
  %flags.i.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i.i, i32 0, i32 5
  %cdb.i.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i.i, i32 0, i32 9
  %arrayidx2.i21.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i.i, i32 0, i32 9, i32 2
  %arrayidx4.i.i.i = getelementptr inbounds %struct.aac_srb, ptr %srbu.i.i.i, i32 0, i32 9, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i30.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i30.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %14, i32 0, i32 3, i32 %i.033.i.i, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i.i.i, align 1
  %17 = and i8 %16, 63
  %and.i.i.i = zext i8 %17 to i32
  %level2.i.i.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %14, i32 0, i32 3, i32 %i.033.i.i, i32 3
  %18 = ptrtoint ptr %level2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %level2.i.i.i, align 1
  %conv.i.i.i = zext i8 %19 to i32
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %srbu.i.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 2048) #20
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.free_identify_resp.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.free_identify_resp.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_identify_resp.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %21 = call ptr @memset(ptr %srbu.i.i.i, i32 0, i32 116)
  %22 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1073741824, ptr %flags.i.i.i, align 4
  %23 = ptrtoint ptr %cdb.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 38, ptr %cdb.i.i.i, align 4
  %24 = ptrtoint ptr %arrayidx2.i21.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %19, ptr %arrayidx2.i21.i.i, align 2
  %25 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 21, ptr %arrayidx4.i.i.i, align 2
  %call5.i.i.i = call fastcc i32 @aac_send_safw_bmic_cmd(ptr noundef %dev, ptr noundef nonnull %srbu.i.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2048) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp.i.i.i, label %mem_free_all.i.i.i, label %if.end.i30.i, !prof !363

mem_free_all.i.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %free_identify_resp.i.i

if.end.i30.i:                                     ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %srbu.i.i.i) #15
  %safw_identify_resp.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i.i, i32 %conv.i.i.i, i32 5
  %26 = ptrtoint ptr %safw_identify_resp.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i.i, ptr %safw_identify_resp.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i.i.i
  br i1 %exitcond.not.i.i, label %if.end.i30.i.if.end21.i_crit_edge, label %if.end.i30.i.for.body.i.i_crit_edge

if.end.i30.i.for.body.i.i_crit_edge:              ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i30.i.if.end21.i_crit_edge:                ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

free_identify_resp.i.i:                           ; preds = %mem_free_all.i.i.i, %for.body.i.i.free_identify_resp.i.i_crit_edge
  %rcode.0.i.ph.i.i = phi i32 [ %call5.i.i.i, %mem_free_all.i.i.i ], [ -12, %for.body.i.i.free_identify_resp.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %srbu.i.i.i) #15
  %27 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %28, align 1
  %div.i.i55.i = udiv i32 %30, 24
  %31 = tail call i32 @llvm.umin.i32(i32 %div.i.i55.i, i32 %i.033.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp419.not.i56.i = icmp eq i32 %31, 0
  br i1 %cmp419.not.i56.i, label %free_identify_resp.i.i.free_ciss_luns.i_crit_edge, label %free_identify_resp.i.i.for.body.i65.i_crit_edge

free_identify_resp.i.i.for.body.i65.i_crit_edge:  ; preds = %free_identify_resp.i.i
  br label %for.body.i65.i

free_identify_resp.i.i.free_ciss_luns.i_crit_edge: ; preds = %free_identify_resp.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_ciss_luns.i

for.body.i65.i:                                   ; preds = %for.body.i65.i.for.body.i65.i_crit_edge, %free_identify_resp.i.i.for.body.i65.i_crit_edge
  %i.020.i57.i = phi i32 [ %inc.i63.i, %for.body.i65.i.for.body.i65.i_crit_edge ], [ 0, %free_identify_resp.i.i.for.body.i65.i_crit_edge ]
  %32 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %arrayidx2.i.i58.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %33, i32 0, i32 3, i32 %i.020.i57.i, i32 3, i32 1
  %34 = ptrtoint ptr %arrayidx2.i.i58.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.i.i58.i, align 1
  %36 = and i8 %35, 63
  %and.i.i59.i = zext i8 %36 to i32
  %level2.i.i60.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %33, i32 0, i32 3, i32 %i.020.i57.i, i32 3
  %37 = ptrtoint ptr %level2.i.i60.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %level2.i.i60.i, align 1
  %conv.i.i61.i = zext i8 %38 to i32
  %safw_identify_resp.i.i62.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i59.i, i32 %conv.i.i61.i, i32 5
  %39 = ptrtoint ptr %safw_identify_resp.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %safw_identify_resp.i.i62.i, align 4
  tail call void @kfree(ptr noundef %40) #15
  %41 = ptrtoint ptr %safw_identify_resp.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %safw_identify_resp.i.i62.i, align 4
  %inc.i63.i = add nuw nsw i32 %i.020.i57.i, 1
  %exitcond.not.i64.i = icmp eq i32 %inc.i63.i, %31
  br i1 %exitcond.not.i64.i, label %aac_get_safw_attr_all_targets.exit.i, label %for.body.i65.i.for.body.i65.i_crit_edge

for.body.i65.i.for.body.i65.i_crit_edge:          ; preds = %for.body.i65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i65.i

aac_get_safw_attr_all_targets.exit.i:             ; preds = %for.body.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode.0.i.ph.i.i)
  %cmp13.i = icmp slt i32 %rcode.0.i.ph.i.i, 0
  br i1 %cmp13.i, label %aac_get_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge, label %aac_get_safw_attr_all_targets.exit.i.if.end21.i_crit_edge, !prof !363

aac_get_safw_attr_all_targets.exit.i.if.end21.i_crit_edge: ; preds = %aac_get_safw_attr_all_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

aac_get_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge: ; preds = %aac_get_safw_attr_all_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_ciss_luns.i

if.end21.i:                                       ; preds = %aac_get_safw_attr_all_targets.exit.i.if.end21.i_crit_edge, %if.end.i30.i.if.end21.i_crit_edge, %if.end11.i.if.end21.i_crit_edge
  %rcode.1.i3171.i = phi i32 [ %rcode.0.i.ph.i.i, %aac_get_safw_attr_all_targets.exit.i.if.end21.i_crit_edge ], [ 0, %if.end11.i.if.end21.i_crit_edge ], [ %call5.i.i.i, %if.end.i30.i.if.end21.i_crit_edge ]
  %42 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %43, align 1
  %scan_counter.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 78
  %46 = ptrtoint ptr %scan_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scan_counter.i.i, align 8
  %inc.i33.i = add i32 %47, 1
  store i32 %inc.i33.i, ptr %scan_counter.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %45)
  %48 = icmp ult i32 %45, 24
  br i1 %48, label %if.end21.i.aac_set_safw_attr_all_targets.exit.i_crit_edge, label %for.body.preheader.i.i

if.end21.i.aac_set_safw_attr_all_targets.exit.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_set_safw_attr_all_targets.exit.i

for.body.preheader.i.i:                           ; preds = %if.end21.i
  %div.i.i34.i = udiv i32 %45, 24
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %for.inc.i.i.for.body.i39.i_crit_edge, %for.body.preheader.i.i
  %i.080.i.i = phi i32 [ %inc38.i.i, %for.inc.i.i.for.body.i39.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %49 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %arrayidx2.i.i35.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %50, i32 0, i32 3, i32 %i.080.i.i, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx2.i.i35.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2.i.i35.i, align 1
  %53 = and i8 %52, 63
  %and.i.i36.i = zext i8 %53 to i32
  %level2.i.i37.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %50, i32 0, i32 3, i32 %i.080.i.i, i32 3
  %54 = ptrtoint ptr %level2.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %level2.i.i37.i, align 1
  %conv.i.i38.i = zext i8 %55 to i32
  %arrayidx2.i75.i.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %50, i32 0, i32 3, i32 %i.080.i.i, i32 4, i32 9
  %56 = ptrtoint ptr %arrayidx2.i75.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx2.i75.i.i, align 1
  %arrayidx2.i78.i.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %50, i32 0, i32 3, i32 %i.080.i.i, i32 4, i32 12
  %58 = ptrtoint ptr %arrayidx2.i78.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %arrayidx2.i78.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %53)
  %cmp7.i.i = icmp ugt i8 %53, 4
  br i1 %cmp7.i.i, label %for.body.i39.i.for.inc.i.i_crit_edge, label %if.end.i40.i

for.body.i39.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i40.i:                                     ; preds = %for.body.i39.i
  %bus.i.i.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %50, i32 0, i32 3, i32 %i.080.i.i, i32 1
  %60 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bus.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %61)
  %cmp12.not.i.i = icmp ult i8 %61, 64
  br i1 %cmp12.not.i.i, label %if.end16.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #17
  %devtype.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 1
  %62 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %devtype.i.i, align 4
  br label %for.inc.i.i

if.end16.i.i:                                     ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp17.not.i.i = icmp eq i32 %59, 0
  %63 = and i8 %57, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i = icmp eq i8 %63, 0
  %or.cond.i.i = select i1 %cmp17.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end32.thread.i.i, label %if.end.i.i41.i

if.end32.thread.i.i:                              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %64 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %64, align 4
  %scan_counter3783.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 4
  %66 = ptrtoint ptr %scan_counter3783.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc.i33.i, ptr %scan_counter3783.i.i, align 4
  br label %for.inc.i.i

if.end.i.i41.i:                                   ; preds = %if.end16.i.i
  %arrayidx23.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i
  %67 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %59, ptr %arrayidx23.i.i, align 4
  %68 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %68, align 4
  %scan_counter37.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 4
  %70 = ptrtoint ptr %scan_counter37.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %inc.i33.i, ptr %scan_counter37.i.i, align 4
  %safw_identify_resp.i.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 5
  %71 = ptrtoint ptr %safw_identify_resp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %safw_identify_resp.i.i.i, align 4
  %cmp6.i.i.i = icmp eq ptr %72, null
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %if.end12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  %qd_limit.i.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 3
  %73 = ptrtoint ptr %qd_limit.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 32, ptr %qd_limit.i.i.i, align 2
  br label %for.inc.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i41.i
  %current_queue_depth_limit.i.i.i = getelementptr inbounds %struct.aac_ciss_identify_pd, ptr %72, i32 0, i32 49
  %74 = ptrtoint ptr %current_queue_depth_limit.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %current_queue_depth_limit.i.i.i, align 1
  %76 = add i16 %75, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %76)
  %77 = icmp ult i16 %76, -255
  %qd_limit24.i.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i36.i, i32 %conv.i.i38.i, i32 3
  br i1 %77, label %if.then20.i.i.i, label %if.else.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %qd_limit24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 32, ptr %qd_limit24.i.i.i, align 2
  br label %for.inc.i.i

if.else.i.i.i:                                    ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %qd_limit24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %75, ptr %qd_limit24.i.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i.i, %if.then20.i.i.i, %if.then8.i.i.i, %if.end32.thread.i.i, %if.then14.i.i, %for.body.i39.i.for.inc.i.i_crit_edge
  %inc38.i.i = add nuw nsw i32 %i.080.i.i, 1
  %exitcond.not.i42.i = icmp eq i32 %inc38.i.i, %div.i.i34.i
  br i1 %exitcond.not.i42.i, label %for.inc.i.i.aac_set_safw_attr_all_targets.exit.i_crit_edge, label %for.inc.i.i.for.body.i39.i_crit_edge

for.inc.i.i.for.body.i39.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i39.i

for.inc.i.i.aac_set_safw_attr_all_targets.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_set_safw_attr_all_targets.exit.i

aac_set_safw_attr_all_targets.exit.i:             ; preds = %for.inc.i.i.aac_set_safw_attr_all_targets.exit.i_crit_edge, %if.end21.i.aac_set_safw_attr_all_targets.exit.i_crit_edge
  %80 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %81, align 1
  %div.i.i44.i = udiv i32 %83, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %83)
  %84 = icmp ult i32 %83, 24
  br i1 %84, label %aac_set_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge, label %aac_set_safw_attr_all_targets.exit.i.for.body.i52.i_crit_edge

aac_set_safw_attr_all_targets.exit.i.for.body.i52.i_crit_edge: ; preds = %aac_set_safw_attr_all_targets.exit.i
  br label %for.body.i52.i

aac_set_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge: ; preds = %aac_set_safw_attr_all_targets.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_ciss_luns.i

for.body.i52.i:                                   ; preds = %for.body.i52.i.for.body.i52.i_crit_edge, %aac_set_safw_attr_all_targets.exit.i.for.body.i52.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i50.i, %for.body.i52.i.for.body.i52.i_crit_edge ], [ 0, %aac_set_safw_attr_all_targets.exit.i.for.body.i52.i_crit_edge ]
  %85 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %safw_phys_luns.i.i, align 4
  %arrayidx2.i.i45.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %86, i32 0, i32 3, i32 %i.020.i.i, i32 3, i32 1
  %87 = ptrtoint ptr %arrayidx2.i.i45.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx2.i.i45.i, align 1
  %89 = and i8 %88, 63
  %and.i.i46.i = zext i8 %89 to i32
  %level2.i.i47.i = getelementptr %struct.aac_ciss_phys_luns_resp, ptr %86, i32 0, i32 3, i32 %i.020.i.i, i32 3
  %90 = ptrtoint ptr %level2.i.i47.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %level2.i.i47.i, align 1
  %conv.i.i48.i = zext i8 %91 to i32
  %safw_identify_resp.i.i49.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %and.i.i46.i, i32 %conv.i.i48.i, i32 5
  %92 = ptrtoint ptr %safw_identify_resp.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %safw_identify_resp.i.i49.i, align 4
  tail call void @kfree(ptr noundef %93) #15
  %94 = ptrtoint ptr %safw_identify_resp.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %safw_identify_resp.i.i49.i, align 4
  %inc.i50.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i51.i = icmp eq i32 %inc.i50.i, %div.i.i44.i
  br i1 %exitcond.not.i51.i, label %for.body.i52.i.free_ciss_luns.i_crit_edge, label %for.body.i52.i.for.body.i52.i_crit_edge

for.body.i52.i.for.body.i52.i_crit_edge:          ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i52.i

for.body.i52.i.free_ciss_luns.i_crit_edge:        ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_ciss_luns.i

free_ciss_luns.i:                                 ; preds = %for.body.i52.i.free_ciss_luns.i_crit_edge, %aac_set_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge, %aac_get_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge, %free_identify_resp.i.i.free_ciss_luns.i_crit_edge
  %rcode.1.i3172.i = phi i32 [ %rcode.0.i.ph.i.i, %aac_get_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge ], [ %rcode.1.i3171.i, %aac_set_safw_attr_all_targets.exit.i.free_ciss_luns.i_crit_edge ], [ %rcode.0.i.ph.i.i, %free_identify_resp.i.i.free_ciss_luns.i_crit_edge ], [ %rcode.1.i3171.i, %for.body.i52.i.free_ciss_luns.i_crit_edge ]
  %95 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %safw_phys_luns.i.i, align 4
  tail call void @kfree(ptr noundef %96) #15
  %97 = ptrtoint ptr %safw_phys_luns.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %safw_phys_luns.i.i, align 4
  br label %aac_setup_safw_targets.exit

aac_setup_safw_targets.exit:                      ; preds = %free_ciss_luns.i, %aac_get_safw_ciss_luns.exit.thread.i, %entry.aac_setup_safw_targets.exit_crit_edge
  %rcode.0.i = phi i32 [ %call.i, %entry.aac_setup_safw_targets.exit_crit_edge ], [ %rcode.1.i3172.i, %free_ciss_luns.i ], [ %rcode.0.i.ph.i, %aac_get_safw_ciss_luns.exit.thread.i ]
  ret i32 %rcode.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_get_adapter_info(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aac_fib_alloc(ptr noundef %dev) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup330_crit_edge, label %if.end

entry.cleanup330_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup330

if.end:                                           ; preds = %entry
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %data, i32 0, i32 88)
  %call1 = tail call i32 @aac_fib_send(i16 noundef zeroext 703, ptr noundef nonnull %call, i32 noundef 88, i32 noundef 1, i32 noundef -1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call1)
  %cmp3.not = icmp eq i32 %call1, -512
  br i1 %cmp3.not, label %if.then2.cleanup330_crit_edge, label %if.then4

if.then2.cleanup330_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup330

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call) #15
  br label %cleanup330

if.end7:                                          ; preds = %if.end
  %adapter_info = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51
  %3 = call ptr @memcpy(ptr %adapter_info, ptr %data, i32 88)
  %supplement_adapter_info = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52
  %virt_device_bus = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 36
  %4 = ptrtoint ptr %virt_device_bus to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %virt_device_bus, align 8
  %options = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 19
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %options, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.if.end26_crit_edge, label %if.then10

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then10:                                        ; preds = %if.end7
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %7 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_fib_va, align 4
  %data12 = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1
  %9 = call ptr @memset(ptr %data12, i32 0, i32 480)
  %call14 = tail call i32 @aac_fib_send(i16 noundef zeroext 706, ptr noundef nonnull %call, i32 noundef 480, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.end18.thread, label %if.end18

if.end18.thread:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %10 = call ptr @memcpy(ptr %supplement_adapter_info, ptr %data12, i32 480)
  br label %if.end26

if.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call14)
  %cmp19 = icmp eq i32 %call14, -512
  br i1 %cmp19, label %if.then20, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then20:                                        ; preds = %if.end18
  %call21 = tail call ptr @aac_fib_alloc(ptr noundef %dev) #15
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then20.cleanup330_crit_edge, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then20.cleanup330_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup330

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %if.end18.if.end26_crit_edge, %if.end18.thread, %if.end7.if.end26_crit_edge
  %fibptr.2 = phi ptr [ %call, %if.end7.if.end26_crit_edge ], [ %call21, %if.then20.if.end26_crit_edge ], [ %call, %if.end18.if.end26_crit_edge ], [ %call, %if.end18.thread ]
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %if.end26
  %target.0499 = phi i32 [ 0, %if.end26 ], [ %inc, %for.body30.for.body30_crit_edge ]
  %devtype = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 0, i32 %target.0499, i32 1
  %11 = ptrtoint ptr %devtype to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %devtype, align 4
  %qd_limit = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 0, i32 %target.0499, i32 3
  %12 = ptrtoint ptr %qd_limit to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %qd_limit, align 2
  %inc = add nuw nsw i32 %target.0499, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body30.for.body30.1_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body30

for.body30.for.body30.1_crit_edge:                ; preds = %for.body30
  br label %for.body30.1

for.body30.1:                                     ; preds = %for.body30.1.for.body30.1_crit_edge, %for.body30.for.body30.1_crit_edge
  %target.0499.1 = phi i32 [ %inc.1, %for.body30.1.for.body30.1_crit_edge ], [ 0, %for.body30.for.body30.1_crit_edge ]
  %devtype.1 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 1, i32 %target.0499.1, i32 1
  %13 = ptrtoint ptr %devtype.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %devtype.1, align 4
  %qd_limit.1 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 1, i32 %target.0499.1, i32 3
  %14 = ptrtoint ptr %qd_limit.1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %qd_limit.1, align 2
  %inc.1 = add nuw nsw i32 %target.0499.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 256
  br i1 %exitcond.1.not, label %for.body30.1.for.body30.2_crit_edge, label %for.body30.1.for.body30.1_crit_edge

for.body30.1.for.body30.1_crit_edge:              ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body30.1

for.body30.1.for.body30.2_crit_edge:              ; preds = %for.body30.1
  br label %for.body30.2

for.body30.2:                                     ; preds = %for.body30.2.for.body30.2_crit_edge, %for.body30.1.for.body30.2_crit_edge
  %target.0499.2 = phi i32 [ %inc.2, %for.body30.2.for.body30.2_crit_edge ], [ 0, %for.body30.1.for.body30.2_crit_edge ]
  %devtype.2 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 2, i32 %target.0499.2, i32 1
  %15 = ptrtoint ptr %devtype.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %devtype.2, align 4
  %qd_limit.2 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 2, i32 %target.0499.2, i32 3
  %16 = ptrtoint ptr %qd_limit.2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %qd_limit.2, align 2
  %inc.2 = add nuw nsw i32 %target.0499.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 256
  br i1 %exitcond.2.not, label %for.body30.2.for.body30.3_crit_edge, label %for.body30.2.for.body30.2_crit_edge

for.body30.2.for.body30.2_crit_edge:              ; preds = %for.body30.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body30.2

for.body30.2.for.body30.3_crit_edge:              ; preds = %for.body30.2
  br label %for.body30.3

for.body30.3:                                     ; preds = %for.body30.3.for.body30.3_crit_edge, %for.body30.2.for.body30.3_crit_edge
  %target.0499.3 = phi i32 [ %inc.3, %for.body30.3.for.body30.3_crit_edge ], [ 0, %for.body30.2.for.body30.3_crit_edge ]
  %devtype.3 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 3, i32 %target.0499.3, i32 1
  %17 = ptrtoint ptr %devtype.3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %devtype.3, align 4
  %qd_limit.3 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 3, i32 %target.0499.3, i32 3
  %18 = ptrtoint ptr %qd_limit.3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %qd_limit.3, align 2
  %inc.3 = add nuw nsw i32 %target.0499.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 256
  br i1 %exitcond.3.not, label %for.body30.3.for.body30.4_crit_edge, label %for.body30.3.for.body30.3_crit_edge

for.body30.3.for.body30.3_crit_edge:              ; preds = %for.body30.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body30.3

for.body30.3.for.body30.4_crit_edge:              ; preds = %for.body30.3
  br label %for.body30.4

for.body30.4:                                     ; preds = %for.body30.4.for.body30.4_crit_edge, %for.body30.3.for.body30.4_crit_edge
  %target.0499.4 = phi i32 [ %inc.4, %for.body30.4.for.body30.4_crit_edge ], [ 0, %for.body30.3.for.body30.4_crit_edge ]
  %devtype.4 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 4, i32 %target.0499.4, i32 1
  %19 = ptrtoint ptr %devtype.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %devtype.4, align 4
  %qd_limit.4 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 4, i32 %target.0499.4, i32 3
  %20 = ptrtoint ptr %qd_limit.4 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %qd_limit.4, align 2
  %inc.4 = add nuw nsw i32 %target.0499.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 256
  br i1 %exitcond.4.not, label %for.inc35.4, label %for.body30.4.for.body30.4_crit_edge

for.body30.4.for.body30.4_crit_edge:              ; preds = %for.body30.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body30.4

for.inc35.4:                                      ; preds = %for.body30.4
  tail call void @aac_fib_init(ptr noundef %fibptr.2) #15
  %hw_fib_va38 = getelementptr inbounds %struct.fib, ptr %fibptr.2, i32 0, i32 13
  %21 = ptrtoint ptr %hw_fib_va38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_fib_va38, align 4
  %data39 = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 12
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50331648, ptr %data39, align 4
  %ObjType = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %ObjType to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 150994944, ptr %ObjType, align 4
  %MethodId = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %MethodId to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16777216, ptr %MethodId, align 4
  %CtlCmd = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 16
  %28 = ptrtoint ptr %CtlCmd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 150994944, ptr %CtlCmd, align 4
  %call41 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %fibptr.2, i32 noundef 52, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  %maximum_num_physicals = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 37
  %29 = ptrtoint ptr %maximum_num_physicals to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %maximum_num_physicals, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp42 = icmp sgt i32 %call41, -1
  br i1 %cmp42, label %land.lhs.true, label %for.inc35.4.if.end46_crit_edge

for.inc35.4.if.end46_crit_edge:                   ; preds = %for.inc35.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

land.lhs.true:                                    ; preds = %for.inc35.4
  %30 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp43 = icmp eq i32 %31, 0
  br i1 %cmp43, label %if.then44, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %TargetsPerBus = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 28
  %32 = ptrtoint ptr %TargetsPerBus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %TargetsPerBus, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %maximum_num_physicals to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %maximum_num_physicals, align 8
  %BusCount = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 24
  %36 = ptrtoint ptr %BusCount to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BusCount, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %maximum_num_channels = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 38
  %39 = ptrtoint ptr %maximum_num_channels to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %maximum_num_channels, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.if.end46_crit_edge, %for.inc35.4.if.end46_crit_edge
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 63
  %40 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool47.not = icmp eq i8 %41, 0
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end129_crit_edge

if.end46.if.end129_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.then48:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #15
  %kernelrev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 7
  %42 = getelementptr inbounds i8, ptr %buffer, i32 1
  %43 = call ptr @memset(ptr %42, i32 255, i32 15)
  %44 = ptrtoint ptr %kernelrev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %kernelrev, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %name = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %49 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id, align 4
  %shr = lshr i32 %46, 24
  %shr51 = lshr i32 %46, 16
  %and52 = and i32 %shr51, 255
  %and53 = and i32 %46, 255
  %kernelbuild = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 8
  %51 = ptrtoint ptr %kernelbuild to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %kernelbuild, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %build_date = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %48, i32 noundef %50, i32 noundef %shr, i32 noundef %and52, i32 noundef %and53, i32 noundef %53, i32 noundef 12, ptr noundef %build_date) #18
  %monitorrev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 9
  %54 = ptrtoint ptr %monitorrev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %monitorrev, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 8
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 4
  %shr65 = lshr i32 %56, 24
  %shr66 = lshr i32 %56, 16
  %and67 = and i32 %shr66, 255
  %and68 = and i32 %56, 255
  %monitorbuild = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 10
  %61 = ptrtoint ptr %monitorbuild to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %monitorbuild, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %58, i32 noundef %60, i32 noundef %shr65, i32 noundef %and67, i32 noundef %and68, i32 noundef %63) #18
  %biosrev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 13
  %64 = ptrtoint ptr %biosrev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %biosrev, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 8
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id, align 4
  %shr78 = lshr i32 %66, 24
  %shr79 = lshr i32 %66, 16
  %and80 = and i32 %shr79, 255
  %and81 = and i32 %66, 255
  %biosbuild = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 14
  %71 = ptrtoint ptr %biosbuild to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %biosbuild, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %68, i32 noundef %70, i32 noundef %shr78, i32 noundef %and80, i32 noundef %and81, i32 noundef %73) #18
  %74 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %buffer, align 1
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %75 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scsi_host_ptr, align 8
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %76, i32 0, i32 50
  %call86 = call i32 @aac_get_serial_number(ptr noundef %shost_dev, ptr noundef nonnull %buffer) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then48.if.end97_crit_edge, label %do.end91

if.then48.if.end97_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

do.end91:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name, align 8
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id, align 4
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %78, i32 noundef %80, ptr noundef nonnull %buffer) #18
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.then48.if.end97_crit_edge
  %tsid = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 11, i32 4
  %81 = ptrtoint ptr %tsid to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tsid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool100.not = icmp eq i8 %82, 0
  br i1 %tobool100.not, label %if.end97.if.end113_crit_edge, label %do.end104

if.end97.if.end113_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name, align 8
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id, align 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %84, i32 noundef %86, i32 noundef 12, ptr noundef %tsid) #18
  br label %if.end113

if.end113:                                        ; preds = %do.end104, %if.end97.if.end113_crit_edge
  %87 = load i32, ptr @aac_check_reset, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i32 %87, label %if.end113.if.end128_crit_edge [
    i32 0, label %if.end113.do.end123_crit_edge
    i32 1, label %land.lhs.true116
  ]

if.end113.do.end123_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end123

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

land.lhs.true116:                                 ; preds = %if.end113
  %supported_options2 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 19
  %89 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %supported_options2, align 8
  %and118 = and i32 %90, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %land.lhs.true116.if.end128_crit_edge, label %land.lhs.true116.do.end123_crit_edge

land.lhs.true116.do.end123_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end123

land.lhs.true116.if.end128_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

do.end123:                                        ; preds = %land.lhs.true116.do.end123_crit_edge, %if.end113.do.end123_crit_edge
  %91 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name, align 8
  %93 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id, align 4
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %92, i32 noundef %94) #18
  br label %if.end128

if.end128:                                        ; preds = %do.end123, %land.lhs.true116.if.end128_crit_edge, %if.end113.if.end128_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #15
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end46.if.end129_crit_edge
  %cache_protected = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 55
  %95 = ptrtoint ptr %cache_protected to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %cache_protected, align 2
  %feature_bits = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 6
  %96 = ptrtoint ptr %feature_bits to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %feature_bits, align 4
  %98 = trunc i32 %97 to i8
  %99 = lshr i8 %98, 3
  %100 = and i8 %99, 1
  %jbod = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 54
  %101 = ptrtoint ptr %jbod to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %jbod, align 1
  %nondasd_support = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 53
  %102 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %nondasd_support, align 8
  %raid_scsi_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 58
  %103 = ptrtoint ptr %raid_scsi_mode to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %raid_scsi_mode, align 1
  %104 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %options, align 4
  %and136 = and i32 %105, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end129.if.end140_crit_edge, label %if.then138

if.end129.if.end140_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then138:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %nondasd_support, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end129.if.end140_crit_edge
  %107 = and i32 %105, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %107)
  %.not = icmp eq i32 %107, 6291456
  br i1 %.not, label %if.end153.thread, label %if.end153

if.end153.thread:                                 ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %nondasd_support, align 8
  %109 = ptrtoint ptr %raid_scsi_mode to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %raid_scsi_mode, align 1
  br label %do.end161

if.end153:                                        ; preds = %if.end140
  %110 = ptrtoint ptr %raid_scsi_mode to i32
  call void @__asan_load1_noabort(i32 %110)
  %.pr = load i8, ptr %raid_scsi_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp156.not = icmp eq i8 %.pr, 0
  br i1 %cmp156.not, label %if.end153.if.end166_crit_edge, label %if.end153.do.end161_crit_edge

if.end153.do.end161_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end161

if.end153.if.end166_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end166

do.end161:                                        ; preds = %if.end153.do.end161_crit_edge, %if.end153.thread
  %name163 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %111 = ptrtoint ptr %name163 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name163, align 8
  %id164 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %113 = ptrtoint ptr %id164 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id164, align 4
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %112, i32 noundef %114) #18
  br label %if.end166

if.end166:                                        ; preds = %do.end161, %if.end153.if.end166_crit_edge
  %115 = load i32, ptr @nondasd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp167.not = icmp eq i32 %115, -1
  br i1 %cmp167.not, label %if.end174thread-pre-split, label %if.then169

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp170 = icmp ne i32 %115, 0
  %conv172 = zext i1 %cmp170 to i8
  %116 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv172, ptr %nondasd_support, align 8
  br label %if.end174

if.end174thread-pre-split:                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  %117 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_load1_noabort(i32 %117)
  %.pr485 = load i8, ptr %nondasd_support, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.end174thread-pre-split, %if.then169
  %118 = phi i8 [ %.pr485, %if.end174thread-pre-split ], [ %conv172, %if.then169 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool177.not = icmp eq i8 %118, 0
  br i1 %tobool177.not, label %if.end174.if.end189_crit_edge, label %land.lhs.true178

if.end174.if.end189_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end189

land.lhs.true178:                                 ; preds = %if.end174
  %119 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool180.not = icmp eq i8 %120, 0
  br i1 %tobool180.not, label %do.end184, label %land.lhs.true178.if.end189_crit_edge

land.lhs.true178.if.end189_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end189

do.end184:                                        ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #17
  %name186 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %121 = ptrtoint ptr %name186 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name186, align 8
  %id187 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %123 = ptrtoint ptr %id187 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %id187, align 4
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %122, i32 noundef %124) #18
  br label %if.end189

if.end189:                                        ; preds = %do.end184, %land.lhs.true178.if.end189_crit_edge, %if.end174.if.end189_crit_edge
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %125 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev, align 4
  %dev190 = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  %call191 = call i64 @dma_get_required_mask(ptr noundef %dev190) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call191)
  %cmp192 = icmp ugt i64 %call191, 4294967295
  br i1 %cmp192, label %if.then194, label %if.end189.if.end195_crit_edge

if.end189.if.end195_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195

if.then194:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #17
  %needs_dac = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 57
  %127 = ptrtoint ptr %needs_dac to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %needs_dac, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.end189.if.end195_crit_edge
  %dac_support = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 56
  %128 = ptrtoint ptr %dac_support to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %dac_support, align 1
  %129 = load i32, ptr @dacmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp196.not = icmp eq i32 %129, -1
  br i1 %cmp196.not, label %if.end195.cond.end_crit_edge, label %if.end203

if.end195.cond.end_crit_edge:                     ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end203:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp199 = icmp ne i32 %129, 0
  %conv201 = zext i1 %cmp199 to i8
  %130 = ptrtoint ptr %dac_support to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv201, ptr %dac_support, align 1
  br i1 %cmp199, label %land.lhs.true207, label %if.end203.cond.end_crit_edge

if.end203.cond.end_crit_edge:                     ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

land.lhs.true207:                                 ; preds = %if.end203
  %cardtype = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 43
  %131 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cardtype, align 8
  %call208 = call ptr @aac_get_driver_ident(i32 noundef %132) #15
  %quirks = getelementptr inbounds %struct.aac_driver_ident, ptr %call208, i32 0, i32 5
  %133 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %quirks, align 4
  %and209 = and i32 %134, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %land.lhs.true207.if.end214_crit_edge, label %if.then211

land.lhs.true207.if.end214_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214

if.then211:                                       ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #17
  %135 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %nondasd_support, align 8
  %136 = ptrtoint ptr %jbod to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %jbod, align 1
  store i32 0, ptr @expose_physicals, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %land.lhs.true207.if.end214_crit_edge
  %137 = ptrtoint ptr %dac_support to i32
  call void @__asan_load1_noabort(i32 %137)
  %.pr487 = load i8, ptr %dac_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr487)
  %tobool216.not = icmp eq i8 %.pr487, 0
  br i1 %tobool216.not, label %if.end214.cond.end_crit_edge, label %if.then217

if.end214.cond.end_crit_edge:                     ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.then217:                                       ; preds = %if.end214
  %138 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev, align 4
  %dev219 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %call220 = call i32 @dma_set_mask(ptr noundef %dev219, i64 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then222, label %if.else

if.then222:                                       ; preds = %if.then217
  %140 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool224.not = icmp eq i8 %141, 0
  br i1 %tobool224.not, label %do.end228, label %if.then222.if.end251_crit_edge

if.then222.if.end251_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end251

do.end228:                                        ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #17
  %142 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev, align 4
  %dev230 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev230, ptr noundef nonnull @.str.35) #18
  br label %if.end251

if.else:                                          ; preds = %if.then217
  %144 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev, align 4
  %dev233 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %call234 = call i32 @dma_set_mask(ptr noundef %dev233, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  %146 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev, align 4
  %dev241 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  br i1 %tobool235.not, label %do.end239, label %do.end246

do.end239:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev241, ptr noundef nonnull @.str.40) #18
  %148 = ptrtoint ptr %dac_support to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %dac_support, align 1
  br label %cond.end

do.end246:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev241, ptr noundef nonnull @.str.43) #18
  br label %if.end251

if.end251:                                        ; preds = %do.end246, %do.end228, %if.then222.if.end251_crit_edge
  %rcode.0.ph.ph = phi i32 [ -12, %do.end246 ], [ %call41, %if.then222.if.end251_crit_edge ], [ %call41, %do.end228 ]
  %149 = ptrtoint ptr %dac_support to i32
  call void @__asan_load1_noabort(i32 %149)
  %.pr489.pr = load i8, ptr %dac_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr489.pr)
  %tobool254.not = icmp eq i8 %.pr489.pr, 0
  br i1 %tobool254.not, label %if.end251.cond.end_crit_edge, label %cond.true

if.end251.cond.end_crit_edge:                     ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #17
  %150 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cardtype, align 8
  %call256 = call ptr @aac_get_driver_ident(i32 noundef %151) #15
  %quirks257 = getelementptr inbounds %struct.aac_driver_ident, ptr %call256, i32 0, i32 5
  %152 = ptrtoint ptr %quirks257 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %quirks257, align 4
  %and258 = and i32 %153, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258)
  %tobool259.not = icmp eq i32 %and258, 0
  %cond = select i1 %tobool259.not, ptr @aac_scsi_64, ptr @aac_scsi_32_64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end251.cond.end_crit_edge, %do.end239, %if.end214.cond.end_crit_edge, %if.end203.cond.end_crit_edge, %if.end195.cond.end_crit_edge
  %rcode.0492 = phi i32 [ %rcode.0.ph.ph, %cond.true ], [ %rcode.0.ph.ph, %if.end251.cond.end_crit_edge ], [ %call41, %do.end239 ], [ %call41, %if.end214.cond.end_crit_edge ], [ %call41, %if.end195.cond.end_crit_edge ], [ %call41, %if.end203.cond.end_crit_edge ]
  %cond260 = phi ptr [ %cond, %cond.true ], [ @aac_scsi_32, %if.end251.cond.end_crit_edge ], [ @aac_scsi_32, %do.end239 ], [ @aac_scsi_32, %if.end214.cond.end_crit_edge ], [ @aac_scsi_32, %if.end195.cond.end_crit_edge ], [ @aac_scsi_32, %if.end203.cond.end_crit_edge ]
  %adapter_scsi = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 14
  %154 = ptrtoint ptr %adapter_scsi to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %cond260, ptr %adapter_scsi, align 4
  %raw_io_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 60
  %155 = ptrtoint ptr %raw_io_interface to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %raw_io_interface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool261.not = icmp eq i8 %156, 0
  br i1 %tobool261.not, label %if.else269, label %if.then262

if.then262:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %raw_io_64 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 61
  %157 = ptrtoint ptr %raw_io_64 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %raw_io_64, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool264.not = icmp eq i8 %158, 0
  %cond265 = select i1 %tobool264.not, ptr @aac_bounds_32, ptr @aac_bounds_64
  %adapter_bounds = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 11
  %159 = ptrtoint ptr %adapter_bounds to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %cond265, ptr %adapter_bounds, align 4
  %adapter_read = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 12
  %160 = ptrtoint ptr %adapter_read to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @aac_read_raw_io, ptr %adapter_read, align 4
  %adapter_write = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 13
  %161 = ptrtoint ptr %adapter_write to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @aac_write_raw_io, ptr %adapter_write, align 4
  br label %if.end309

if.else269:                                       ; preds = %cond.end
  %adapter_bounds271 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 11
  %162 = ptrtoint ptr %adapter_bounds271 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @aac_bounds_32, ptr %adapter_bounds271, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 3
  %163 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %max_fib_size, align 8
  %add = add i32 %164, 524232
  %div480 = lshr i32 %add, 3
  %conv273 = trunc i32 %div480 to i16
  %scsi_host_ptr274 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %165 = ptrtoint ptr %scsi_host_ptr274 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %scsi_host_ptr274, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %166, i32 0, i32 28
  %167 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv273, ptr %sg_tablesize, align 2
  %168 = ptrtoint ptr %dac_support to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %dac_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool276.not = icmp eq i8 %169, 0
  %adapter_read292 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 12
  br i1 %tobool276.not, label %if.else290, label %if.then277

if.then277:                                       ; preds = %if.else269
  call void @__sanitizer_cov_trace_pc() #17
  %170 = ptrtoint ptr %adapter_read292 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @aac_read_block64, ptr %adapter_read292, align 4
  %adapter_write281 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 13
  %171 = ptrtoint ptr %adapter_write281 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @aac_write_block64, ptr %adapter_write281, align 4
  %172 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %max_fib_size, align 8
  %add285 = add i32 %173, -52
  %div286 = udiv i32 %add285, 12
  %conv287 = trunc i32 %div286 to i16
  %174 = ptrtoint ptr %scsi_host_ptr274 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %scsi_host_ptr274, align 8
  %sg_tablesize289 = getelementptr inbounds %struct.Scsi_Host, ptr %175, i32 0, i32 28
  %176 = ptrtoint ptr %sg_tablesize289 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv287, ptr %sg_tablesize289, align 2
  br label %if.end295

if.else290:                                       ; preds = %if.else269
  call void @__sanitizer_cov_trace_pc() #17
  %177 = ptrtoint ptr %adapter_read292 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @aac_read_block, ptr %adapter_read292, align 4
  %adapter_write294 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 13
  %178 = ptrtoint ptr %adapter_write294 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @aac_write_block, ptr %adapter_write294, align 4
  br label %if.end295

if.end295:                                        ; preds = %if.else290, %if.then277
  %179 = ptrtoint ptr %scsi_host_ptr274 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %scsi_host_ptr274, align 8
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %180, i32 0, i32 30
  %181 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 256, ptr %max_sectors, align 8
  %182 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %options, align 4
  %and299 = and i32 %183, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %if.then301, label %if.end295.if.end309_crit_edge

if.end295.if.end309_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end309

if.then301:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #17
  %184 = ptrtoint ptr %scsi_host_ptr274 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %scsi_host_ptr274, align 8
  %sg_tablesize303 = getelementptr inbounds %struct.Scsi_Host, ptr %185, i32 0, i32 28
  %186 = ptrtoint ptr %sg_tablesize303 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %sg_tablesize303, align 2
  %conv304 = zext i16 %187 to i32
  %mul = shl nuw nsw i32 %conv304, 3
  %add305 = add nuw nsw i32 %mul, 112
  %max_sectors307 = getelementptr inbounds %struct.Scsi_Host, ptr %185, i32 0, i32 30
  %188 = ptrtoint ptr %max_sectors307 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %add305, ptr %max_sectors307, align 8
  br label %if.end309

if.end309:                                        ; preds = %if.then301, %if.end295.if.end309_crit_edge, %if.then262
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %189 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool310.not = icmp eq i32 %190, 0
  br i1 %tobool310.not, label %land.lhs.true311, label %if.end309.if.end324_crit_edge

if.end309.if.end324_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end324

land.lhs.true311:                                 ; preds = %if.end309
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %191 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool313.not = icmp eq i8 %192, 0
  br i1 %tobool313.not, label %land.lhs.true311.if.end324_crit_edge, label %land.lhs.true314

land.lhs.true311.if.end324_crit_edge:             ; preds = %land.lhs.true311
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end324

land.lhs.true314:                                 ; preds = %land.lhs.true311
  %scsi_host_ptr315 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %193 = ptrtoint ptr %scsi_host_ptr315 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %scsi_host_ptr315, align 8
  %sg_tablesize316 = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 28
  %195 = ptrtoint ptr %sg_tablesize316 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %sg_tablesize316, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 90, i16 %196)
  %cmp318 = icmp ugt i16 %196, 90
  br i1 %cmp318, label %if.then320, label %land.lhs.true314.if.end324_crit_edge

land.lhs.true314.if.end324_crit_edge:             ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end324

if.then320:                                       ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #17
  %sg_tablesize321 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 4
  %197 = ptrtoint ptr %sg_tablesize321 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 90, ptr %sg_tablesize321, align 4
  %198 = ptrtoint ptr %sg_tablesize316 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 90, ptr %sg_tablesize316, align 2
  br label %if.end324

if.end324:                                        ; preds = %if.then320, %land.lhs.true314.if.end324_crit_edge, %land.lhs.true311.if.end324_crit_edge, %if.end309.if.end324_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %rcode.0492)
  %cmp325.not = icmp eq i32 %rcode.0492, -512
  br i1 %cmp325.not, label %if.end324.cleanup330_crit_edge, label %if.then327

if.end324.cleanup330_crit_edge:                   ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup330

if.then327:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #17
  %call328 = call i32 @aac_fib_complete(ptr noundef %fibptr.2) #15
  call void @aac_fib_free(ptr noundef %fibptr.2) #15
  br label %cleanup330

cleanup330:                                       ; preds = %if.then327, %if.end324.cleanup330_crit_edge, %if.then20.cleanup330_crit_edge, %if.then4, %if.then2.cleanup330_crit_edge, %entry.cleanup330_crit_edge
  %retval.1 = phi i32 [ -12, %entry.cleanup330_crit_edge ], [ %call1, %if.then4 ], [ -512, %if.then2.cleanup330_crit_edge ], [ %rcode.0492, %if.then327 ], [ -512, %if.end324.cleanup330_crit_edge ], [ -12, %if.then20.cleanup330_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_serial_number(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_get_driver_ident(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_scsi_32_64(ptr noundef %fib, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aac_scsi_32(ptr noundef %fib, ptr noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_scsi_64(ptr noundef %fib, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %2 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  %switch.idx.mult = mul i32 %3, -1073741824
  %switch.offset = add i32 %switch.idx.mult, -1073741824
  %flag.0.i = select i1 %4, i32 %switch.offset, i32 0
  %hw_fib_va.i = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %5 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_fib_va.i, align 4
  %data.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %channel.i.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %sub.i = add i32 %11, -1
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %channel.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %channel.i, align 4
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #15
  %id.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %id.i, align 4
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lun.i, align 8
  %conv.i = trunc i64 %23 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #15
  %lun10.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %lun10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lun10.i, align 4
  %flags.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 20
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %flag.0.i, ptr %flags.i, align 4
  %timeout12.i = getelementptr i8, ptr %cmd, i32 -164
  %27 = ptrtoint ptr %timeout12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeout12.i, align 4
  %div.i = udiv i32 %28, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %29 = icmp ult i32 %28, 100
  br i1 %29, label %if.then.i, label %entry.aac_scsi_common.exit_crit_edge

entry.aac_scsi_common.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_scsi_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sa_firmware.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 66
  %30 = ptrtoint ptr %sa_firmware.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sa_firmware.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not.i = icmp eq i8 %31, 0
  %cond16.i = select i1 %tobool15.not.i, i32 60, i32 180
  br label %aac_scsi_common.exit

aac_scsi_common.exit:                             ; preds = %if.then.i, %entry.aac_scsi_common.exit_crit_edge
  %timeout.0.i = phi i32 [ %cond16.i, %if.then.i ], [ %div.i, %entry.aac_scsi_common.exit_crit_edge ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %timeout.0.i) #15
  %timeout17.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %timeout17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %timeout17.i, align 4
  %retry_limit.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 28
  %34 = ptrtoint ptr %retry_limit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %retry_limit.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %35 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmd_len.i, align 4
  %conv18.i = zext i16 %36 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv18.i) #15
  %cdb_size.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 32
  %38 = ptrtoint ptr %cdb_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cdb_size.i, align 4
  %sg = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 52
  %call1 = tail call fastcc i32 @aac_build_sg64(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %aac_scsi_common.exit.cleanup_crit_edge, label %if.end

aac_scsi_common.exit.cleanup_crit_edge:           ; preds = %aac_scsi_common.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %aac_scsi_common.exit
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %count = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 24
  %42 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %count, align 4
  %cdb = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 36
  %43 = call ptr @memset(ptr %cdb, i32 0, i32 16)
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %44 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmnd, align 4
  %46 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_len.i, align 4
  %conv = zext i16 %47 to i32
  %48 = call ptr @memcpy(ptr %cdb, ptr %45, i32 %conv)
  %49 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sg, align 4
  %51 = lshr i32 %50, 24
  %52 = mul nuw nsw i32 %51, 12
  %conv7 = add nuw nsw i32 %52, 56
  %53 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_fib_size, align 8
  %sub = add i32 %56, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %sub)
  %cmp9 = icmp ugt i32 %conv7, %sub
  br i1 %cmp9, label %do.body13, label %do.end19, !prof !363

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1595, 0\0A.popsection", ""() #15, !srcloc !365
  unreachable

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 @aac_fib_send(i16 noundef zeroext 601, ptr noundef %fib, i32 noundef %conv7, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @aac_srb_callback, ptr noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %aac_scsi_common.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %do.end19 ], [ %call1, %aac_scsi_common.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_scsi_32(ptr noundef %fib, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %2 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  %switch.idx.mult = mul i32 %3, -1073741824
  %switch.offset = add i32 %switch.idx.mult, -1073741824
  %flag.0.i = select i1 %4, i32 %switch.offset, i32 0
  %hw_fib_va.i = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %5 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_fib_va.i, align 4
  %data.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %channel.i.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %sub.i = add i32 %11, -1
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %channel.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %channel.i, align 4
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #15
  %id.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %id.i, align 4
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %lun.i, align 8
  %conv.i = trunc i64 %23 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #15
  %lun10.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %lun10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lun10.i, align 4
  %flags.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 20
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %flag.0.i, ptr %flags.i, align 4
  %timeout12.i = getelementptr i8, ptr %cmd, i32 -164
  %27 = ptrtoint ptr %timeout12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeout12.i, align 4
  %div.i = udiv i32 %28, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %29 = icmp ult i32 %28, 100
  br i1 %29, label %if.then.i, label %entry.aac_scsi_common.exit_crit_edge

entry.aac_scsi_common.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_scsi_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sa_firmware.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 66
  %30 = ptrtoint ptr %sa_firmware.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sa_firmware.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not.i = icmp eq i8 %31, 0
  %cond16.i = select i1 %tobool15.not.i, i32 60, i32 180
  br label %aac_scsi_common.exit

aac_scsi_common.exit:                             ; preds = %if.then.i, %entry.aac_scsi_common.exit_crit_edge
  %timeout.0.i = phi i32 [ %cond16.i, %if.then.i ], [ %div.i, %entry.aac_scsi_common.exit_crit_edge ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %timeout.0.i) #15
  %timeout17.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %timeout17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %timeout17.i, align 4
  %retry_limit.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 28
  %34 = ptrtoint ptr %retry_limit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %retry_limit.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %35 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmd_len.i, align 4
  %conv18.i = zext i16 %36 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv18.i) #15
  %cdb_size.i = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 32
  %38 = ptrtoint ptr %cdb_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cdb_size.i, align 4
  %sg = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 52
  %call1 = tail call fastcc i32 @aac_build_sg(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %aac_scsi_common.exit.cleanup_crit_edge, label %if.end

aac_scsi_common.exit.cleanup_crit_edge:           ; preds = %aac_scsi_common.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %aac_scsi_common.exit
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %count = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 24
  %42 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %count, align 4
  %cdb = getelementptr inbounds %struct.hw_fib, ptr %6, i32 0, i32 1, i32 36
  %43 = call ptr @memset(ptr %cdb, i32 0, i32 16)
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %44 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmnd, align 4
  %46 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_len.i, align 4
  %conv = zext i16 %47 to i32
  %48 = call ptr @memcpy(ptr %cdb, ptr %45, i32 %conv)
  %49 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sg, align 4
  %51 = lshr i32 %50, 21
  %52 = and i32 %51, 2040
  %conv7 = add nuw nsw i32 %52, 56
  %53 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_fib_size, align 8
  %sub9 = add i32 %56, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %sub9)
  %cmp10 = icmp ugt i32 %conv7, %sub9
  br i1 %cmp10, label %do.body14, label %do.end20, !prof !363

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1626, 0\0A.popsection", ""() #15, !srcloc !366
  unreachable

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call i32 @aac_fib_send(i16 noundef zeroext 600, ptr noundef %fib, i32 noundef %conv7, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @aac_srb_callback, ptr noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %aac_scsi_common.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end20 ], [ %call1, %aac_scsi_common.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aac_bounds_64(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %cmd, i64 noundef %lba) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_bounds_32(ptr nocapture noundef readonly %dev, ptr noundef %cmd, i64 noundef %lba) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %lba)
  %tobool.not = icmp ult i64 %lba, 4294967296
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %result, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %5 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsa_dev, align 8
  %sense_data = getelementptr %struct.fsa_dev_info, ptr %6, i32 %3, i32 12
  %7 = ptrtoint ptr %sense_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 112, ptr %sense_data, align 1
  %arrayidx1.i = getelementptr i8, ptr %sense_data, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %sense_data, i32 2
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %sense_data, i32 12
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 68, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %sense_data, i32 13
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx4.i, align 1
  %12 = getelementptr i8, ptr %sense_data, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %12, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %14 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sense_buffer, align 4
  %16 = load ptr, ptr %fsa_dev, align 8
  %sense_data3 = getelementptr %struct.fsa_dev_info, ptr %16, i32 %3, i32 12
  %17 = call ptr @memcpy(ptr %15, ptr %sense_data3, i32 19)
  %18 = load ptr, ptr %device, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %cmd) #15
  br label %return

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %device, align 4
  br label %return

return:                                           ; preds = %if.else.i, %if.then.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_read_raw_io(ptr noundef %fib, ptr noundef %cmd, i64 noundef %lba, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %comm_interface, align 2
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %switch = icmp eq i8 %4, 4
  br i1 %switch, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 70
  %5 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %7 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 24)
  %conv7 = trunc i64 %lba to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv7)
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  %shr = lshr i64 %lba, 32
  %conv9 = trunc i64 %shr to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %blockHigh = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %blockHigh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %blockHigh, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %15 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fsa_dev, align 8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 8
  %block_size = getelementptr %struct.fsa_dev_info, ptr %16, i32 %20, i32 13
  %21 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %block_size, align 8
  %mul = mul i32 %22, %count
  %23 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %byteCount = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %byteCount to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %byteCount, align 4
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %id.i119 = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %id.i119 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i119, align 8
  %conv12 = trunc i32 %28 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 12
  %30 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %cid, align 4
  %flags = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 14
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 256, ptr %flags, align 2
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 35
  %32 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scsi_host_ptr, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 28
  %34 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sg_tablesize, align 2
  %conv13 = zext i16 %35 to i32
  %call14 = tail call fastcc i32 @aac_build_sgraw2(ptr noundef %cmd, ptr noundef %data, i32 noundef %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.cleanup74_crit_edge, label %cleanup

if.then.cleanup74_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sgeCnt = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 24
  %36 = ptrtoint ptr %sgeCnt to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sgeCnt, align 4
  %conv18 = zext i8 %37 to i32
  %38 = shl nuw i32 %conv18, 24
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 16) #15
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %spec.select.i = or i32 %41, 32
  %retval.0.i = select i1 %40, i32 -1, i32 %spec.select.i
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %hw_fib_va21 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %42 = ptrtoint ptr %hw_fib_va21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_fib_va21, align 4
  %data22 = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1
  %conv25 = trunc i64 %lba to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv25)
  %45 = ptrtoint ptr %data22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %data22, align 4
  %shr28 = lshr i64 %lba, 32
  %conv29 = trunc i64 %shr28 to i32
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  %arrayidx31 = getelementptr %struct.hw_fib, ptr %43, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx31, align 4
  %fsa_dev32 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %48 = ptrtoint ptr %fsa_dev32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fsa_dev32, align 8
  %device33 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %50 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device33, align 4
  %id.i120 = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %id.i120 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i120, align 8
  %block_size36 = getelementptr %struct.fsa_dev_info, ptr %49, i32 %53, i32 13
  %54 = ptrtoint ptr %block_size36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %block_size36, align 8
  %mul37 = mul i32 %55, %count
  %56 = tail call i32 @llvm.bswap.i32(i32 %mul37)
  %count38 = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1, i32 8
  %57 = ptrtoint ptr %count38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %count38, align 4
  %58 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device33, align 4
  %id.i121 = getelementptr inbounds %struct.scsi_device, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %id.i121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.i121, align 8
  %conv41 = trunc i32 %61 to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv41)
  %cid42 = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1, i32 12
  %63 = ptrtoint ptr %cid42 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %cid42, align 4
  %flags43 = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1, i32 14
  %64 = ptrtoint ptr %flags43 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 256, ptr %flags43, align 2
  %bpTotal = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1, i32 16
  %65 = ptrtoint ptr %bpTotal to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %bpTotal, align 4
  %bpComplete = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1, i32 18
  %66 = ptrtoint ptr %bpComplete to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %bpComplete, align 2
  %sg = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1, i32 20
  %call44 = tail call fastcc i32 @aac_build_sgraw(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.else.cleanup74_crit_edge, label %cleanup53

if.else.cleanup74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup74

cleanup53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sg, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = mul i32 %69, 24
  %conv52 = add i32 %70, 24
  br label %do.body

do.body:                                          ; preds = %cleanup53, %cleanup
  %fibsize.2 = phi i32 [ %conv52, %cleanup53 ], [ %retval.0.i, %cleanup ]
  %command.2 = phi i16 [ 502, %cleanup53 ], [ 503, %cleanup ]
  %conv57 = and i32 %fibsize.2, 65535
  %71 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_fib_size, align 8
  %sub59 = add i32 %74, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %sub59)
  %cmp60 = icmp ugt i32 %conv57, %sub59
  br i1 %cmp60, label %do.body65, label %do.end71, !prof !363

do.body65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1269, 0\0A.popsection", ""() #15, !srcloc !367
  unreachable

do.end71:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call73 = tail call i32 @aac_fib_send(i16 noundef zeroext %command.2, ptr noundef %fib, i32 noundef %conv57, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @io_callback, ptr noundef %cmd) #15
  br label %cleanup74

cleanup74:                                        ; preds = %do.end71, %if.else.cleanup74_crit_edge, %if.then.cleanup74_crit_edge
  %retval.2 = phi i32 [ %call73, %do.end71 ], [ %call14, %if.then.cleanup74_crit_edge ], [ %call44, %if.else.cleanup74_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_write_raw_io(ptr noundef %fib, ptr noundef %cmd, i64 noundef %lba, i32 noundef %count, i32 noundef %fua) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %comm_interface, align 2
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %switch = icmp eq i8 %4, 4
  br i1 %switch, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 70
  %5 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %7 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 24)
  %conv7 = trunc i64 %lba to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv7)
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  %shr = lshr i64 %lba, 32
  %conv9 = trunc i64 %shr to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %blockHigh = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %blockHigh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %blockHigh, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %15 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fsa_dev, align 8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 8
  %block_size = getelementptr %struct.fsa_dev_info, ptr %16, i32 %20, i32 13
  %21 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %block_size, align 8
  %mul = mul i32 %22, %count
  %23 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %byteCount = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %byteCount to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %byteCount, align 4
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %id.i154 = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %id.i154 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i154, align 8
  %conv12 = trunc i32 %28 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 12
  %30 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fua)
  %tobool13.not = icmp eq i32 %fua, 0
  br i1 %tobool13.not, label %if.then.land.end_crit_edge, label %land.lhs.true14

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true14:                                  ; preds = %if.then
  %31 = load i32, ptr @aac_cache, align 4
  %and15 = and i32 %31, 5
  %32 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %and15, label %land.end.fold.split [
    i32 1, label %land.lhs.true14.land.end_crit_edge
    i32 5, label %lor.rhs
  ]

land.lhs.true14.land.end_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

lor.rhs:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 4
  %cache_protected = getelementptr inbounds %struct.aac_dev, ptr %34, i32 0, i32 55
  %35 = ptrtoint ptr %cache_protected to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cache_protected, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool22.not = icmp eq i8 %36, 0
  %phi.cast153 = select i1 %tobool22.not, i16 2048, i16 0
  br label %land.end

land.end.fold.split:                              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.end:                                         ; preds = %land.end.fold.split, %lor.rhs, %land.lhs.true14.land.end_crit_edge, %if.then.land.end_crit_edge
  %37 = phi i16 [ 0, %land.lhs.true14.land.end_crit_edge ], [ 0, %if.then.land.end_crit_edge ], [ %phi.cast153, %lor.rhs ], [ 2048, %land.end.fold.split ]
  %flags = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 14
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %flags, align 2
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 35
  %39 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %scsi_host_ptr, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 28
  %41 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sg_tablesize, align 2
  %conv24 = zext i16 %42 to i32
  %call25 = tail call fastcc i32 @aac_build_sgraw2(ptr noundef %cmd, ptr noundef %data, i32 noundef %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %land.end.cleanup104_crit_edge, label %cleanup

land.end.cleanup104_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup104

cleanup:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  %sgeCnt = getelementptr inbounds %struct.hw_fib, ptr %8, i32 0, i32 1, i32 24
  %43 = ptrtoint ptr %sgeCnt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sgeCnt, align 4
  %conv29 = zext i8 %44 to i32
  %45 = shl nuw i32 %conv29, 24
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 16) #15
  %47 = extractvalue { i32, i1 } %46, 1
  %48 = extractvalue { i32, i1 } %46, 0
  %spec.select.i = or i32 %48, 32
  %retval.0.i = select i1 %47, i32 -1, i32 %spec.select.i
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %hw_fib_va32 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %49 = ptrtoint ptr %hw_fib_va32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_fib_va32, align 4
  %data33 = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1
  %conv36 = trunc i64 %lba to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv36)
  %52 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %data33, align 4
  %shr39 = lshr i64 %lba, 32
  %conv40 = trunc i64 %shr39 to i32
  %53 = tail call i32 @llvm.bswap.i32(i32 %conv40)
  %arrayidx42 = getelementptr %struct.hw_fib, ptr %50, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx42, align 4
  %fsa_dev43 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %55 = ptrtoint ptr %fsa_dev43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fsa_dev43, align 8
  %device44 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %57 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device44, align 4
  %id.i155 = getelementptr inbounds %struct.scsi_device, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %id.i155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id.i155, align 8
  %block_size47 = getelementptr %struct.fsa_dev_info, ptr %56, i32 %60, i32 13
  %61 = ptrtoint ptr %block_size47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %block_size47, align 8
  %mul48 = mul i32 %62, %count
  %63 = tail call i32 @llvm.bswap.i32(i32 %mul48)
  %count49 = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1, i32 8
  %64 = ptrtoint ptr %count49 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %count49, align 4
  %65 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device44, align 4
  %id.i156 = getelementptr inbounds %struct.scsi_device, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %id.i156 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i156, align 8
  %conv52 = trunc i32 %68 to i16
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv52)
  %cid53 = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1, i32 12
  %70 = ptrtoint ptr %cid53 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %cid53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fua)
  %tobool54.not = icmp eq i32 %fua, 0
  br i1 %tobool54.not, label %if.else.land.end69_crit_edge, label %land.lhs.true55

if.else.land.end69_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end69

land.lhs.true55:                                  ; preds = %if.else
  %71 = load i32, ptr @aac_cache, align 4
  %and56 = and i32 %71, 5
  %72 = zext i32 %and56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %and56, label %land.end69.fold.split [
    i32 1, label %land.lhs.true55.land.end69_crit_edge
    i32 5, label %lor.rhs63
  ]

land.lhs.true55.land.end69_crit_edge:             ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end69

lor.rhs63:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1, align 4
  %cache_protected65 = getelementptr inbounds %struct.aac_dev, ptr %74, i32 0, i32 55
  %75 = ptrtoint ptr %cache_protected65 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cache_protected65, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool66.not = icmp eq i8 %76, 0
  %phi.cast = select i1 %tobool66.not, i16 2048, i16 0
  br label %land.end69

land.end69.fold.split:                            ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end69

land.end69:                                       ; preds = %land.end69.fold.split, %lor.rhs63, %land.lhs.true55.land.end69_crit_edge, %if.else.land.end69_crit_edge
  %77 = phi i16 [ 0, %land.lhs.true55.land.end69_crit_edge ], [ 0, %if.else.land.end69_crit_edge ], [ %phi.cast, %lor.rhs63 ], [ 2048, %land.end69.fold.split ]
  %flags72 = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1, i32 14
  %78 = ptrtoint ptr %flags72 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %flags72, align 2
  %bpTotal = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1, i32 16
  %79 = ptrtoint ptr %bpTotal to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %bpTotal, align 4
  %bpComplete = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1, i32 18
  %80 = ptrtoint ptr %bpComplete to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %bpComplete, align 2
  %sg = getelementptr inbounds %struct.hw_fib, ptr %50, i32 0, i32 1, i32 20
  %call73 = tail call fastcc i32 @aac_build_sgraw(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %land.end69.cleanup104_crit_edge, label %cleanup82

land.end69.cleanup104_crit_edge:                  ; preds = %land.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup104

cleanup82:                                        ; preds = %land.end69
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sg, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = mul i32 %83, 24
  %conv81 = add i32 %84, 24
  br label %do.body

do.body:                                          ; preds = %cleanup82, %cleanup
  %fibsize.2 = phi i32 [ %conv81, %cleanup82 ], [ %retval.0.i, %cleanup ]
  %command.2 = phi i16 [ 502, %cleanup82 ], [ 503, %cleanup ]
  %conv86 = and i32 %fibsize.2, 65535
  %85 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_fib_size, align 8
  %sub88 = add i32 %88, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv86, i32 %sub88)
  %cmp89 = icmp ugt i32 %conv86, %sub88
  br i1 %cmp89, label %do.body95, label %do.end101, !prof !363

do.body95:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1403, 0\0A.popsection", ""() #15, !srcloc !368
  unreachable

do.end101:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call103 = tail call i32 @aac_fib_send(i16 noundef zeroext %command.2, ptr noundef %fib, i32 noundef %conv86, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @io_callback, ptr noundef %cmd) #15
  br label %cleanup104

cleanup104:                                       ; preds = %do.end101, %land.end69.cleanup104_crit_edge, %land.end.cleanup104_crit_edge
  %retval.2 = phi i32 [ %call103, %do.end101 ], [ %call25, %land.end.cleanup104_crit_edge ], [ %call73, %land.end69.cleanup104_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_read_block64(ptr noundef %fib, ptr noundef %cmd, i64 noundef %lba, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 318767104, ptr %data, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 8
  %conv = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %cid, align 4
  %conv1 = trunc i32 %count to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %sector_count = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %sector_count to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sector_count, align 2
  %conv2 = trunc i64 %lba to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv2)
  %block = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %block, align 4
  %pad = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %pad, align 4
  %flags = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 14
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %sg = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 16
  %call3 = tail call fastcc i32 @aac_build_sg64(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = mul i32 %17, 12
  %conv7 = add i32 %18, 20
  %conv8 = and i32 %conv7, 65532
  %dev = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_fib_size, align 8
  %sub9 = add i32 %22, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %sub9)
  %cmp10 = icmp ugt i32 %conv8, %sub9
  br i1 %cmp10, label %do.body14, label %do.end20, !prof !363

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1304, 0\0A.popsection", ""() #15, !srcloc !369
  unreachable

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call i32 @aac_fib_send(i16 noundef zeroext 501, ptr noundef %fib, i32 noundef %conv8, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @io_callback, ptr noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end20 ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_write_block64(ptr noundef %fib, ptr noundef %cmd, i64 noundef %lba, i32 noundef %count, i32 noundef %fua) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 335544320, ptr %data, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 8
  %conv = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %cid, align 4
  %conv1 = trunc i32 %count to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %sector_count = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %sector_count to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sector_count, align 2
  %conv2 = trunc i64 %lba to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv2)
  %block = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %block, align 4
  %pad = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %pad, align 4
  %flags = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 14
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %sg = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 16
  %call3 = tail call fastcc i32 @aac_build_sg64(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = mul i32 %17, 12
  %conv7 = add i32 %18, 20
  %conv8 = and i32 %conv7, 65532
  %dev = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_fib_size, align 8
  %sub9 = add i32 %22, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %sub9)
  %cmp10 = icmp ugt i32 %conv8, %sub9
  br i1 %cmp10, label %do.body14, label %do.end20, !prof !363

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1438, 0\0A.popsection", ""() #15, !srcloc !370
  unreachable

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call i32 @aac_fib_send(i16 noundef zeroext 501, ptr noundef %fib, i32 noundef %conv8, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @io_callback, ptr noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end20 ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_read_block(ptr noundef %fib, ptr noundef %cmd, i64 noundef %lba, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %2 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100663296, ptr %data, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cid, align 4
  %conv = trunc i64 %lba to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %block = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %block, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %13 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsa_dev, align 8
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %id.i44 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %id.i44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i44, align 8
  %block_size = getelementptr %struct.fsa_dev_info, ptr %14, i32 %18, i32 13
  %19 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size, align 8
  %mul = mul i32 %20, %count
  %21 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %count4 = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 12
  %22 = ptrtoint ptr %count4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count4, align 4
  %sg = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 16
  %call5 = tail call fastcc i32 @aac_build_sg(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sg, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = shl i32 %25, 3
  %conv10 = add i32 %26, 20
  %conv11 = and i32 %conv10, 65532
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_fib_size, align 8
  %sub13 = add i32 %30, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %sub13)
  %cmp14 = icmp ugt i32 %conv11, %sub13
  br i1 %cmp14, label %do.body18, label %do.end24, !prof !363

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1339, 0\0A.popsection", ""() #15, !srcloc !371
  unreachable

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call26 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %fib, i32 noundef %conv11, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @io_callback, ptr noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %do.end24 ], [ %call5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_write_block(ptr noundef %fib, ptr noundef %cmd, i64 noundef %lba, i32 noundef %count, i32 noundef %fua) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @aac_fib_init(ptr noundef %fib) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %2 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 117440512, ptr %data, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cid, align 4
  %conv = trunc i64 %lba to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %block = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %block, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %13 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsa_dev, align 8
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %id.i47 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %id.i47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i47, align 8
  %block_size = getelementptr %struct.fsa_dev_info, ptr %14, i32 %18, i32 13
  %19 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size, align 8
  %mul = mul i32 %20, %count
  %21 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %count4 = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 12
  %22 = ptrtoint ptr %count4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count4, align 4
  %sg = getelementptr inbounds %struct.hw_fib, ptr %3, i32 0, i32 1, i32 20
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %sg, align 4
  %call7 = tail call fastcc i32 @aac_build_sg(ptr noundef %cmd, ptr noundef %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = shl i32 %26, 3
  %conv12 = add i32 %27, 24
  %conv13 = and i32 %conv12, 65528
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_fib_size, align 8
  %sub15 = add i32 %31, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %sub15)
  %cmp16 = icmp ugt i32 %conv13, %sub15
  br i1 %cmp16, label %do.body20, label %do.end26, !prof !363

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1475, 0\0A.popsection", ""() #15, !srcloc !372
  unreachable

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call28 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %fib, i32 noundef %conv13, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @io_callback, ptr noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %do.end26 ], [ %call7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_scsi_cmd(ptr noundef %scsicmd) local_unnamed_addr #0 align 64 {
entry:
  %inq_data = alloca %struct.inquiry_data, align 1
  %cp = alloca [13 x i8], align 1
  %cp350 = alloca [8 x i8], align 1
  %mpd = alloca %struct.aac_modep_data, align 1
  %mpd10 = alloca %struct.aac_modep10_data, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsa_dev, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup795_crit_edge, label %if.end

entry.cleanup795_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

if.end:                                           ; preds = %entry
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 25
  %8 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %this_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp eq i32 %7, %9
  br i1 %cmp3.not, label %if.else79, label %if.then4

if.then4:                                         ; preds = %if.end
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then8, label %cond.end

if.then8:                                         ; preds = %if.then4
  %maximum_num_containers = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 3
  %12 = ptrtoint ptr %maximum_num_containers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maximum_num_containers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp9.not = icmp ult i32 %7, %13
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then8.if.then12_crit_edge

if.then8.if.then12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp11.not = icmp eq i64 %15, 0
  br i1 %cmp11.not, label %if.end13, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then8.if.then12_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %16 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65536, ptr %result, align 4
  br label %scsi_done_ret

if.end13:                                         ; preds = %lor.lhs.false
  %valid = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 7
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp14 = icmp eq i8 %19, 0
  br i1 %cmp14, label %if.end13.if.then21_crit_edge, label %lor.lhs.false16

if.end13.if.then21_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

lor.lhs.false16:                                  ; preds = %if.end13
  %sense_key = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 12, i32 3
  %20 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %sense_key, align 1
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask)
  %cmp19 = icmp eq i8 %bf.lshr.mask, 32
  br i1 %cmp19, label %lor.lhs.false16.if.then21_crit_edge, label %lor.lhs.false16.if.end100_crit_edge

lor.lhs.false16.if.end100_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false16.if.then21_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false16.if.then21_crit_edge, %if.end13.if.then21_crit_edge
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %21 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmnd, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %24, label %if.then21.if.end100_crit_edge [
    i8 -98, label %sw.bb
    i8 18, label %if.then21.sw.bb35_crit_edge
    i8 37, label %if.then21.sw.bb35_crit_edge1085
    i8 0, label %if.then21.sw.bb35_crit_edge1086
  ]

if.then21.sw.bb35_crit_edge1086:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.then21.sw.bb35_crit_edge1085:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.then21.sw.bb35_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.then21.if.end100_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

sw.bb:                                            ; preds = %if.then21
  %raw_io_interface = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 60
  %26 = ptrtoint ptr %raw_io_interface to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %raw_io_interface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %sw.bb.if.end100_crit_edge, label %lor.lhs.false24

sw.bb.if.end100_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false24:                                  ; preds = %sw.bb
  %raw_io_64 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 0, i32 7, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %raw_io_64 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %raw_io_64, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool25.not = icmp eq i8 %29, 0
  br i1 %tobool25.not, label %lor.lhs.false24.if.end100_crit_edge, label %lor.lhs.false26

lor.lhs.false24.if.end100_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %arrayidx28 = getelementptr i8, ptr %22, i32 1
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx28, align 1
  %32 = and i8 %31, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %32)
  %cmp31.not = icmp eq i8 %32, 16
  br i1 %cmp31.not, label %lor.lhs.false26.sw.bb35_crit_edge, label %lor.lhs.false26.if.end100_crit_edge

lor.lhs.false26.if.end100_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false26.sw.bb35_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

sw.bb35:                                          ; preds = %lor.lhs.false26.sw.bb35_crit_edge, %if.then21.sw.bb35_crit_edge, %if.then21.sw.bb35_crit_edge1085, %if.then21.sw.bb35_crit_edge1086
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %33 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool36.not = icmp eq i8 %34, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb35.cleanup795_crit_edge

sw.bb35.cleanup795_crit_edge:                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

if.end38:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = tail call fastcc i32 @_aac_probe_container(ptr noundef %scsicmd, ptr noundef nonnull @aac_probe_container_callback2)
  br label %cleanup795

cond.end:                                         ; preds = %if.then4
  %sub = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp46 = icmp ult i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %cmp48 = icmp ult i32 %7, 256
  %or.cond = select i1 %cmp46, i1 %cmp48, i1 false
  br i1 %or.cond, label %land.lhs.true50, label %cond.end.if.else62_crit_edge

cond.end.if.else62_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else62

land.lhs.true50:                                  ; preds = %cond.end
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 19
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %sub, i32 %7, i32 1
  %35 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp54 = icmp eq i8 %36, 3
  br i1 %cmp54, label %if.then56, label %land.lhs.true50.if.else62_crit_edge

land.lhs.true50.if.else62_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else62

if.then56:                                        ; preds = %land.lhs.true50
  %in_reset57 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %37 = ptrtoint ptr %in_reset57 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %in_reset57, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool58.not = icmp eq i8 %38, 0
  br i1 %tobool58.not, label %if.end60, label %if.then56.cleanup795_crit_edge

if.then56.cleanup795_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

if.end60:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  %call61 = tail call fastcc i32 @aac_send_hba_fib(ptr noundef %scsicmd)
  br label %cleanup795

if.else62:                                        ; preds = %land.lhs.true50.if.else62_crit_edge, %cond.end.if.else62_crit_edge
  %nondasd_support = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 0, i32 7
  %39 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nondasd_support, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool64.not = icmp eq i8 %40, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %if.else62.if.then70_crit_edge

if.else62.if.then70_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70

lor.lhs.false65:                                  ; preds = %if.else62
  %41 = load i32, ptr @expose_physicals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool66.not = icmp eq i32 %41, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %lor.lhs.false65.if.then70_crit_edge

lor.lhs.false65.if.then70_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70

lor.lhs.false67:                                  ; preds = %lor.lhs.false65
  %jbod = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 54
  %42 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool69.not = icmp eq i8 %43, 0
  br i1 %tobool69.not, label %if.else76, label %lor.lhs.false67.if.then70_crit_edge

lor.lhs.false67.if.then70_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false67.if.then70_crit_edge, %lor.lhs.false65.if.then70_crit_edge, %if.else62.if.then70_crit_edge
  %in_reset71 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %44 = ptrtoint ptr %in_reset71 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %in_reset71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool72.not = icmp eq i8 %45, 0
  br i1 %tobool72.not, label %if.end74, label %if.then70.cleanup795_crit_edge

if.then70.cleanup795_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

if.end74:                                         ; preds = %if.then70
  %maximum_num_physicals.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4
  %46 = ptrtoint ptr %maximum_num_physicals.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maximum_num_physicals.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %47)
  %cmp.not.i = icmp ult i32 %7, %47
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end74.if.then.i_crit_edge

if.end74.if.then.i_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end74
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %49)
  %cmp3.i = icmp ugt i64 %49, 7
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end74.if.then.i_crit_edge
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %50 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 65536, ptr %result.i, align 4
  %request_queue.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %request_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %request_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup795

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %device, align 4
  br label %cleanup795

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call4.i = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %54 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 262, ptr %phase.i, align 4
  %dev5.i = getelementptr inbounds %struct.fib, ptr %call4.i, i32 0, i32 3
  %55 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev5.i, align 4
  %adapter_scsi.i = getelementptr inbounds %struct.aac_dev, ptr %56, i32 0, i32 17, i32 14
  %57 = ptrtoint ptr %adapter_scsi.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter_scsi.i, align 4
  %call6.i = tail call i32 %58(ptr noundef %call4.i, ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, -115
  br i1 %cmp7.i, label %if.end.i.cleanup795_crit_edge, label %do.end.i

if.end.i.cleanup795_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %call6.i) #18
  %call11.i = tail call i32 @aac_fib_complete(ptr noundef %call4.i) #15
  tail call void @aac_fib_free(ptr noundef %call4.i) #15
  br label %cleanup795

if.else76:                                        ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #17
  %result77 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %59 = ptrtoint ptr %result77 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 65536, ptr %result77, align 4
  br label %scsi_done_ret

if.else79:                                        ; preds = %if.end
  %cmnd80 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %60 = ptrtoint ptr %cmnd80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmnd80, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %63, label %if.then91 [
    i8 18, label %if.else79.if.end100_crit_edge
    i8 0, label %if.else79.if.end100_crit_edge1087
  ]

if.else79.if.end100_crit_edge1087:                ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.else79.if.end100_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then91:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  %result92 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %65 = ptrtoint ptr %result92 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %result92, align 4
  %66 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fsa_dev, align 8
  %sense_data95 = getelementptr %struct.fsa_dev_info, ptr %67, i32 %7, i32 12
  %68 = ptrtoint ptr %sense_data95 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 112, ptr %sense_data95, align 1
  %arrayidx1.i = getelementptr i8, ptr %sense_data95, i32 1
  %69 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %sense_data95, i32 2
  %70 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 5, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %sense_data95, i32 12
  %71 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 32, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %sense_data95, i32 13
  %72 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %sense_data95, i32 15
  %73 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %sense_data95, i32 16
  %74 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %sense_data95, i32 17
  %75 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx19.i, align 1
  %76 = getelementptr i8, ptr %sense_data95, i32 7
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 10, ptr %76, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %78 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sense_buffer, align 4
  %80 = load ptr, ptr %fsa_dev, align 8
  %sense_data98 = getelementptr %struct.fsa_dev_info, ptr %80, i32 %7, i32 12
  %81 = call ptr @memcpy(ptr %79, ptr %sense_data98, i32 19)
  br label %scsi_done_ret

if.end100:                                        ; preds = %if.else79.if.end100_crit_edge, %if.else79.if.end100_crit_edge1087, %lor.lhs.false26.if.end100_crit_edge, %lor.lhs.false24.if.end100_crit_edge, %sw.bb.if.end100_crit_edge, %if.then21.if.end100_crit_edge, %lor.lhs.false16.if.end100_crit_edge
  %cmnd101 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %82 = ptrtoint ptr %cmnd101 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmnd101, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %85, label %sw.default785 [
    i8 8, label %if.end100.sw.bb104_crit_edge
    i8 40, label %if.end100.sw.bb104_crit_edge1088
    i8 -88, label %if.end100.sw.bb104_crit_edge1089
    i8 -120, label %if.end100.sw.bb104_crit_edge1090
    i8 10, label %if.end100.sw.bb110_crit_edge
    i8 42, label %if.end100.sw.bb110_crit_edge1091
    i8 -86, label %if.end100.sw.bb110_crit_edge1092
    i8 -118, label %if.end100.sw.bb110_crit_edge1093
    i8 53, label %sw.bb116
    i8 18, label %if.end100.sw.bb132_crit_edge
    i8 -98, label %sw.bb240
    i8 37, label %sw.bb348
    i8 26, label %sw.bb411
    i8 90, label %sw.bb571
    i8 3, label %sw.bb742
    i8 30, label %sw.bb751
    i8 0, label %sw.bb762
    i8 22, label %if.end100.sw.bb781_crit_edge
    i8 23, label %if.end100.sw.bb781_crit_edge1094
    i8 1, label %if.end100.sw.bb781_crit_edge1095
    i8 7, label %if.end100.sw.bb781_crit_edge1096
    i8 43, label %if.end100.sw.bb781_crit_edge1097
    i8 27, label %sw.bb783
  ]

if.end100.sw.bb781_crit_edge1097:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb781

if.end100.sw.bb781_crit_edge1096:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb781

if.end100.sw.bb781_crit_edge1095:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb781

if.end100.sw.bb781_crit_edge1094:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb781

if.end100.sw.bb781_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb781

if.end100.sw.bb132_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb132

if.end100.sw.bb110_crit_edge1093:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb110

if.end100.sw.bb110_crit_edge1092:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb110

if.end100.sw.bb110_crit_edge1091:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb110

if.end100.sw.bb110_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb110

if.end100.sw.bb104_crit_edge1090:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb104

if.end100.sw.bb104_crit_edge1089:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb104

if.end100.sw.bb104_crit_edge1088:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb104

if.end100.sw.bb104_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb104

sw.bb104:                                         ; preds = %if.end100.sw.bb104_crit_edge, %if.end100.sw.bb104_crit_edge1088, %if.end100.sw.bb104_crit_edge1089, %if.end100.sw.bb104_crit_edge1090
  %in_reset105 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %87 = ptrtoint ptr %in_reset105 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %in_reset105, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool106.not = icmp eq i8 %88, 0
  br i1 %tobool106.not, label %if.end108, label %sw.bb104.cleanup795_crit_edge

sw.bb104.cleanup795_crit_edge:                    ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

if.end108:                                        ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @aac_read(ptr noundef %scsicmd)
  br label %cleanup795

sw.bb110:                                         ; preds = %if.end100.sw.bb110_crit_edge, %if.end100.sw.bb110_crit_edge1091, %if.end100.sw.bb110_crit_edge1092, %if.end100.sw.bb110_crit_edge1093
  %in_reset111 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %89 = ptrtoint ptr %in_reset111 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %in_reset111, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool112.not = icmp eq i8 %90, 0
  br i1 %tobool112.not, label %if.end114, label %sw.bb110.cleanup795_crit_edge

sw.bb110.cleanup795_crit_edge:                    ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup795

if.end114:                                        ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @aac_write(ptr noundef %scsicmd)
  br label %cleanup795

sw.bb116:                                         ; preds = %if.end100
  %91 = load i32, ptr @aac_cache, align 4
  %and117 = and i32 %91, 6
  %92 = zext i32 %and117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %and117, label %sw.bb116.if.then129_crit_edge [
    i32 6, label %land.lhs.true120
    i32 2, label %sw.bb116.sw.bb132_crit_edge
  ]

sw.bb116.sw.bb132_crit_edge:                      ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb132

sw.bb116.if.then129_crit_edge:                    ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then129

land.lhs.true120:                                 ; preds = %sw.bb116
  %cache_protected = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 55
  %93 = ptrtoint ptr %cache_protected to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %cache_protected, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool122.not = icmp eq i8 %94, 0
  br i1 %tobool122.not, label %land.lhs.true120.if.then129_crit_edge, label %if.then123

land.lhs.true120.if.then129_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then129

if.then123:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #17
  %result124 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %95 = ptrtoint ptr %result124 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %result124, align 4
  br label %scsi_done_ret

if.then129:                                       ; preds = %land.lhs.true120.if.then129_crit_edge, %sw.bb116.if.then129_crit_edge
  %call130 = tail call fastcc i32 @aac_synchronize(ptr noundef %scsicmd)
  br label %cleanup795

sw.bb132:                                         ; preds = %sw.bb116.sw.bb132_crit_edge, %if.end100.sw.bb132_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %inq_data) #15
  %96 = call ptr @memset(ptr %inq_data, i32 0, i32 36)
  %arrayidx134 = getelementptr i8, ptr %83, i32 1
  %97 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx134, align 1
  %99 = and i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool137.not = icmp eq i8 %99, 0
  br i1 %tobool137.not, label %sw.bb132.if.end219_crit_edge, label %land.lhs.true138

sw.bb132.if.end219_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end219

land.lhs.true138:                                 ; preds = %sw.bb132
  %100 = load i32, ptr @aac_wwn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool139.not = icmp eq i32 %100, 0
  br i1 %tobool139.not, label %land.lhs.true138.if.end219_crit_edge, label %if.then140

land.lhs.true138.if.end219_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end219

if.then140:                                       ; preds = %land.lhs.true138
  %conv147 = select i1 %cmp3.not, i8 3, i8 0
  %101 = ptrtoint ptr %inq_data to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv147, ptr %inq_data, align 1
  %arrayidx150 = getelementptr i8, ptr %83, i32 2
  %102 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx150, align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %103, label %if.else206 [
    i8 0, label %if.then154
    i8 -128, label %if.then170
    i8 -125, label %if.then193
  ]

if.then154:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx155 = getelementptr inbounds i8, ptr %inq_data, i32 3
  %105 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 3, ptr %arrayidx155, align 1
  %arrayidx156 = getelementptr inbounds i8, ptr %inq_data, i32 4
  %106 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx156, align 1
  %arrayidx157 = getelementptr inbounds i8, ptr %inq_data, i32 5
  %107 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -128, ptr %arrayidx157, align 1
  %arrayidx158 = getelementptr inbounds i8, ptr %inq_data, i32 6
  %108 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -125, ptr %arrayidx158, align 1
  %109 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx150, align 1
  %arrayidx161 = getelementptr inbounds i8, ptr %inq_data, i32 1
  %111 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx161, align 1
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %112 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %114 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nents.i.i, align 4
  %call2.i = call i32 @sg_copy_from_buffer(ptr noundef %113, i32 noundef %115, ptr noundef nonnull %inq_data, i32 noundef 36) #15
  %result163 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %116 = ptrtoint ptr %result163 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %result163, align 4
  br label %cleanup238.thread

if.then170:                                       ; preds = %if.then140
  %arrayidx171 = getelementptr inbounds i8, ptr %inq_data, i32 4
  %serial.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 1
  %117 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %serial.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #15
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx171, i32 noundef 24, ptr noundef nonnull @.str.89, i32 noundef %119, i32 noundef %7) #15
  %conv175 = trunc i32 %call.i to i8
  %arrayidx176 = getelementptr inbounds i8, ptr %inq_data, i32 3
  %120 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv175, ptr %arrayidx176, align 1
  %121 = ptrtoint ptr %cmnd101 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cmnd101, align 4
  %arrayidx178 = getelementptr i8, ptr %122, i32 2
  %123 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx178, align 1
  %arrayidx179 = getelementptr inbounds i8, ptr %inq_data, i32 1
  %125 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx179, align 1
  %sdb.i.i1030 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %126 = ptrtoint ptr %sdb.i.i1030 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sdb.i.i1030, align 4
  %nents.i.i1031 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %128 = ptrtoint ptr %nents.i.i1031 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nents.i.i1031, align 4
  %call2.i1032 = call i32 @sg_copy_from_buffer(ptr noundef %127, i32 noundef %129, ptr noundef nonnull %inq_data, i32 noundef 36) #15
  %130 = load i32, ptr @aac_wwn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp181.not = icmp eq i32 %130, 2
  br i1 %cmp181.not, label %if.end185, label %if.then183

if.then183:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #17
  %call184 = call fastcc i32 @aac_get_container_serial(ptr noundef %scsicmd)
  br label %cleanup238

if.end185:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #17
  %result186 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %131 = ptrtoint ptr %result186 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %result186, align 4
  br label %cleanup238.thread

if.then193:                                       ; preds = %if.then140
  %arrayidx194 = getelementptr inbounds i8, ptr %inq_data, i32 4
  %serial.i1034 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 1
  %132 = ptrtoint ptr %serial.i1034 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %serial.i1034, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #15
  %call.i1035 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx194, i32 noundef 24, ptr noundef nonnull @.str.89, i32 noundef %134, i32 noundef %7) #15
  %135 = load i32, ptr @aac_wwn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp200.not = icmp eq i32 %135, 2
  br i1 %cmp200.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #17
  %result205 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %136 = ptrtoint ptr %result205 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %result205, align 4
  br label %cleanup238.thread

cleanup:                                          ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #17
  %call203 = tail call fastcc i32 @aac_get_container_serial(ptr noundef %scsicmd)
  br label %cleanup238

if.else206:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #17
  %result207 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %137 = ptrtoint ptr %result207 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 2, ptr %result207, align 4
  %138 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fsa_dev, align 8
  %sense_data210 = getelementptr %struct.fsa_dev_info, ptr %139, i32 %7, i32 12
  %140 = ptrtoint ptr %sense_data210 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 112, ptr %sense_data210, align 1
  %arrayidx1.i1036 = getelementptr i8, ptr %sense_data210, i32 1
  %141 = ptrtoint ptr %arrayidx1.i1036 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %arrayidx1.i1036, align 1
  %arrayidx2.i1037 = getelementptr i8, ptr %sense_data210, i32 2
  %142 = ptrtoint ptr %arrayidx2.i1037 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 5, ptr %arrayidx2.i1037, align 1
  %arrayidx3.i1038 = getelementptr i8, ptr %sense_data210, i32 12
  %143 = ptrtoint ptr %arrayidx3.i1038 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 36, ptr %arrayidx3.i1038, align 1
  %arrayidx4.i1039 = getelementptr i8, ptr %sense_data210, i32 13
  %144 = ptrtoint ptr %arrayidx4.i1039 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %arrayidx4.i1039, align 1
  %arrayidx7.i1040 = getelementptr i8, ptr %sense_data210, i32 15
  %145 = ptrtoint ptr %arrayidx7.i1040 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -57, ptr %arrayidx7.i1040, align 1
  %arrayidx17.i1041 = getelementptr i8, ptr %sense_data210, i32 16
  %146 = ptrtoint ptr %arrayidx17.i1041 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx17.i1041, align 1
  %arrayidx19.i1042 = getelementptr i8, ptr %sense_data210, i32 17
  %147 = ptrtoint ptr %arrayidx19.i1042 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 2, ptr %arrayidx19.i1042, align 1
  %148 = getelementptr i8, ptr %sense_data210, i32 7
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 10, ptr %148, align 1
  %sense_buffer211 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %150 = ptrtoint ptr %sense_buffer211 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sense_buffer211, align 4
  %152 = load ptr, ptr %fsa_dev, align 8
  %sense_data214 = getelementptr %struct.fsa_dev_info, ptr %152, i32 %7, i32 12
  %153 = call ptr @memcpy(ptr %151, ptr %sense_data214, i32 19)
  br label %cleanup238.thread

if.end219:                                        ; preds = %land.lhs.true138.if.end219_crit_edge, %sw.bb132.if.end219_crit_edge
  %inqd_ver = getelementptr inbounds %struct.inquiry_data, ptr %inq_data, i32 0, i32 2
  %154 = ptrtoint ptr %inqd_ver to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 2, ptr %inqd_ver, align 1
  %inqd_rdf = getelementptr inbounds %struct.inquiry_data, ptr %inq_data, i32 0, i32 3
  %155 = ptrtoint ptr %inqd_rdf to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 2, ptr %inqd_rdf, align 1
  %inqd_len = getelementptr inbounds %struct.inquiry_data, ptr %inq_data, i32 0, i32 4
  %156 = ptrtoint ptr %inqd_len to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 31, ptr %inqd_len, align 1
  %inqd_pad2 = getelementptr inbounds %struct.inquiry_data, ptr %inq_data, i32 0, i32 6
  %157 = ptrtoint ptr %inqd_pad2 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 50, ptr %inqd_pad2, align 1
  br i1 %cmp3.not, label %if.then223, label %if.end227

if.then223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #17
  %inqd_vid = getelementptr inbounds %struct.inquiry_data, ptr %inq_data, i32 0, i32 7
  call fastcc void @setinqstr(ptr noundef %hostdata, ptr noundef %inqd_vid, i32 noundef 21)
  %158 = ptrtoint ptr %inq_data to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 3, ptr %inq_data, align 1
  %sdb.i.i1044 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %159 = ptrtoint ptr %sdb.i.i1044 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sdb.i.i1044, align 4
  %nents.i.i1045 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %161 = ptrtoint ptr %nents.i.i1045 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nents.i.i1045, align 4
  %call2.i1046 = call i32 @sg_copy_from_buffer(ptr noundef %160, i32 noundef %162, ptr noundef nonnull %inq_data, i32 noundef 36) #15
  %result226 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %163 = ptrtoint ptr %result226 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %result226, align 4
  br label %cleanup238.thread

if.end227:                                        ; preds = %if.end219
  %in_reset228 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %164 = ptrtoint ptr %in_reset228 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %in_reset228, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool229.not = icmp eq i8 %165, 0
  br i1 %tobool229.not, label %if.end231, label %if.end227.cleanup238_crit_edge

if.end227.cleanup238_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup238

if.end231:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #17
  %inqd_vid232 = getelementptr inbounds %struct.inquiry_data, ptr %inq_data, i32 0, i32 7
  %type = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 2
  %166 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %type, align 8
  call fastcc void @setinqstr(ptr noundef %hostdata, ptr noundef %inqd_vid232, i32 noundef %167)
  %168 = ptrtoint ptr %inq_data to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %inq_data, align 1
  %sdb.i.i1047 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %169 = ptrtoint ptr %sdb.i.i1047 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sdb.i.i1047, align 4
  %nents.i.i1048 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %171 = ptrtoint ptr %nents.i.i1048 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nents.i.i1048, align 4
  %call2.i1049 = call i32 @sg_copy_from_buffer(ptr noundef %170, i32 noundef %172, ptr noundef nonnull %inq_data, i32 noundef 36) #15
  %call237 = call fastcc i32 @aac_get_container_name(ptr noundef %scsicmd)
  br label %cleanup238

cleanup238.thread:                                ; preds = %if.then223, %if.else206, %cleanup.thread, %if.end185, %if.then154
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %inq_data) #15
  br label %scsi_done_ret

cleanup238:                                       ; preds = %if.end231, %if.end227.cleanup238_crit_edge, %cleanup, %if.then183
  %retval.3 = phi i32 [ %call237, %if.end231 ], [ %call184, %if.then183 ], [ %call203, %cleanup ], [ -1, %if.end227.cleanup238_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %inq_data) #15
  br label %cleanup795

sw.bb240:                                         ; preds = %if.end100
  %raw_io_interface241 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 60
  %173 = ptrtoint ptr %raw_io_interface241 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %raw_io_interface241, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool242.not = icmp eq i8 %174, 0
  br i1 %tobool242.not, label %sw.bb240.scsi_done_ret_crit_edge, label %lor.lhs.false243

sw.bb240.scsi_done_ret_crit_edge:                 ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_done_ret

lor.lhs.false243:                                 ; preds = %sw.bb240
  %raw_io_64244 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 0, i32 7, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %raw_io_64244 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %raw_io_64244, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool245.not = icmp eq i8 %176, 0
  br i1 %tobool245.not, label %lor.lhs.false243.scsi_done_ret_crit_edge, label %lor.lhs.false246

lor.lhs.false243.scsi_done_ret_crit_edge:         ; preds = %lor.lhs.false243
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_done_ret

lor.lhs.false246:                                 ; preds = %lor.lhs.false243
  %arrayidx248 = getelementptr i8, ptr %83, i32 1
  %177 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx248, align 1
  %179 = and i8 %178, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %179)
  %cmp251.not = icmp eq i8 %179, 16
  br i1 %cmp251.not, label %if.end254, label %lor.lhs.false246.scsi_done_ret_crit_edge

lor.lhs.false246.scsi_done_ret_crit_edge:         ; preds = %lor.lhs.false246
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_done_ret

if.end254:                                        ; preds = %lor.lhs.false246
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %cp) #15
  %180 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 1
  %181 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 2
  %182 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 3
  %183 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 4
  %184 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 5
  %185 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 6
  %186 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 7
  %187 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 8
  %188 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 9
  %189 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 10
  %190 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 11
  %191 = getelementptr inbounds [13 x i8], ptr %cp, i32 0, i32 12
  %size = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 1
  %192 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %size, align 8
  %sub256 = add i64 %193, -1
  %shr = lshr i64 %sub256, 56
  %conv258 = trunc i64 %shr to i8
  %194 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv258, ptr %cp, align 1
  %shr260 = lshr i64 %sub256, 48
  %conv262 = trunc i64 %shr260 to i8
  %195 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv262, ptr %180, align 1
  %shr264 = lshr i64 %sub256, 40
  %conv266 = trunc i64 %shr264 to i8
  %196 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv266, ptr %181, align 1
  %shr268 = lshr i64 %sub256, 32
  %conv270 = trunc i64 %shr268 to i8
  %197 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv270, ptr %182, align 1
  %shr272 = lshr i64 %sub256, 24
  %conv274 = trunc i64 %shr272 to i8
  %198 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv274, ptr %183, align 1
  %shr276 = lshr i64 %sub256, 16
  %conv278 = trunc i64 %shr276 to i8
  %199 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv278, ptr %184, align 1
  %shr280 = lshr i64 %sub256, 8
  %conv282 = trunc i64 %shr280 to i8
  %200 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv282, ptr %185, align 1
  %conv286 = trunc i64 %sub256 to i8
  %201 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv286, ptr %186, align 1
  %block_size = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 13
  %202 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %block_size, align 8
  %shr289 = lshr i32 %203, 24
  %conv291 = trunc i32 %shr289 to i8
  %204 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv291, ptr %187, align 1
  %205 = load i32, ptr %block_size, align 8
  %shr295 = lshr i32 %205, 16
  %conv297 = trunc i32 %shr295 to i8
  %206 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv297, ptr %188, align 1
  %207 = load i32, ptr %block_size, align 8
  %shr301 = lshr i32 %207, 8
  %conv303 = trunc i32 %shr301 to i8
  %208 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv303, ptr %189, align 1
  %209 = load i32, ptr %block_size, align 8
  %conv308 = trunc i32 %209 to i8
  %210 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv308, ptr %190, align 1
  %211 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %191, align 1
  %arrayidx312 = getelementptr i8, ptr %83, i32 10
  %212 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx312, align 1
  %conv313 = zext i8 %213 to i32
  %shl = shl nuw i32 %conv313, 24
  %arrayidx315 = getelementptr i8, ptr %83, i32 11
  %214 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx315, align 1
  %conv316 = zext i8 %215 to i32
  %shl317 = shl nuw nsw i32 %conv316, 16
  %add = or i32 %shl317, %shl
  %arrayidx319 = getelementptr i8, ptr %83, i32 12
  %216 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx319, align 1
  %conv320 = zext i8 %217 to i32
  %shl321 = shl nuw nsw i32 %conv320, 8
  %add322 = or i32 %add, %shl321
  %arrayidx324 = getelementptr i8, ptr %83, i32 13
  %218 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx324, align 1
  %conv325 = zext i8 %219 to i32
  %add326 = or i32 %add322, %conv325
  %220 = tail call i32 @llvm.umin.i32(i32 %add326, i32 13)
  %sdb.i.i1050 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %221 = ptrtoint ptr %sdb.i.i1050 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %sdb.i.i1050, align 4
  %nents.i.i1051 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %223 = ptrtoint ptr %nents.i.i1051 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %nents.i.i1051, align 4
  %call2.i1052 = call i32 @sg_copy_from_buffer(ptr noundef %222, i32 noundef %224, ptr noundef nonnull %cp, i32 noundef %220) #15
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 1
  %225 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %220)
  %cmp336 = icmp ugt i32 %226, %220
  br i1 %cmp336, label %if.then338, label %if.end254.if.end341_crit_edge

if.end254.if.end341_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end341

if.then338:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #17
  %sub340 = sub i32 %226, %220
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %scsicmd, i32 0, i32 5
  %227 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub340, ptr %resid_len.i, align 4
  br label %if.end341

if.end341:                                        ; preds = %if.then338, %if.end254.if.end341_crit_edge
  %228 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %device, align 4
  %removable = getelementptr inbounds %struct.scsi_device, ptr %229, i32 0, i32 41
  %230 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %230, i32 8)
  %bf.load343 = load i64, ptr %removable, align 4
  %bf.set = or i64 %bf.load343, -9223372036854775808
  store i64 %bf.set, ptr %removable, align 4
  %result344 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %231 = ptrtoint ptr %result344 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %result344, align 4
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %cp) #15
  br label %scsi_done_ret

sw.bb348:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp350) #15
  %232 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 1
  %233 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 2
  %234 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 3
  %235 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 4
  %236 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 5
  %237 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 6
  %238 = getelementptr inbounds [8 x i8], ptr %cp350, i32 0, i32 7
  %size352 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 1
  %239 = ptrtoint ptr %size352 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %size352, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %240)
  %cmp353 = icmp ult i64 %240, 4294967297
  %241 = trunc i64 %240 to i32
  %conv359 = add i32 %241, -1
  %capacity349.0 = select i1 %cmp353, i32 %conv359, i32 -1
  %shr362 = lshr i32 %capacity349.0, 24
  %conv364 = trunc i32 %shr362 to i8
  %242 = ptrtoint ptr %cp350 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv364, ptr %cp350, align 1
  %shr366 = lshr i32 %capacity349.0, 16
  %conv368 = trunc i32 %shr366 to i8
  %243 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv368, ptr %232, align 1
  %shr370 = lshr i32 %capacity349.0, 8
  %conv372 = trunc i32 %shr370 to i8
  %244 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv372, ptr %233, align 1
  %conv376 = trunc i32 %capacity349.0 to i8
  %245 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv376, ptr %234, align 1
  %block_size379 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 13
  %246 = ptrtoint ptr %block_size379 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %block_size379, align 8
  %shr380 = lshr i32 %247, 24
  %conv382 = trunc i32 %shr380 to i8
  %248 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv382, ptr %235, align 1
  %249 = load i32, ptr %block_size379, align 8
  %shr386 = lshr i32 %249, 16
  %conv388 = trunc i32 %shr386 to i8
  %250 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv388, ptr %236, align 1
  %251 = load i32, ptr %block_size379, align 8
  %shr392 = lshr i32 %251, 8
  %conv394 = trunc i32 %shr392 to i8
  %252 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv394, ptr %237, align 1
  %253 = load i32, ptr %block_size379, align 8
  %conv399 = trunc i32 %253 to i8
  %254 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv399, ptr %238, align 1
  %sdb.i.i1054 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %255 = ptrtoint ptr %sdb.i.i1054 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %sdb.i.i1054, align 4
  %nents.i.i1055 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %257 = ptrtoint ptr %nents.i.i1055 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %nents.i.i1055, align 4
  %call2.i1056 = call i32 @sg_copy_from_buffer(ptr noundef %256, i32 noundef %258, ptr noundef nonnull %cp350, i32 noundef 8) #15
  %259 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %device, align 4
  %removable404 = getelementptr inbounds %struct.scsi_device, ptr %260, i32 0, i32 41
  %261 = ptrtoint ptr %removable404 to i32
  call void @__asan_loadN_noabort(i32 %261, i32 8)
  %bf.load405 = load i64, ptr %removable404, align 4
  %bf.set407 = or i64 %bf.load405, -9223372036854775808
  store i64 %bf.set407, ptr %removable404, align 4
  %result408 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %262 = ptrtoint ptr %result408 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %result408, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp350) #15
  br label %scsi_done_ret

sw.bb411:                                         ; preds = %if.end100
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %mpd) #15
  %263 = getelementptr inbounds %struct.anon.92, ptr %mpd, i32 0, i32 1
  %264 = getelementptr inbounds %struct.anon.92, ptr %mpd, i32 0, i32 2
  %265 = getelementptr inbounds %struct.anon.92, ptr %mpd, i32 0, i32 3
  %266 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 1, i32 1
  %267 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 1, i32 1, i32 1
  %268 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 1, i32 1, i32 2
  %269 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 1, i32 3
  %270 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 1, i32 3, i32 1
  %271 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 1, i32 3, i32 2
  %272 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 2
  %273 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 2, i32 1
  %274 = getelementptr inbounds %struct.aac_modep_data, ptr %mpd, i32 0, i32 2, i32 2
  %size414 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 1
  %275 = call ptr @memset(ptr %mpd, i32 255, i32 15)
  %276 = ptrtoint ptr %size414 to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %size414, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %277)
  %cmp415 = icmp ult i64 %277, 4294967297
  %278 = trunc i64 %277 to i32
  %conv421 = add i32 %278, -1
  %capacity412.0 = select i1 %cmp415, i32 %conv421, i32 -1
  %279 = getelementptr inbounds i8, ptr %mpd, i32 3
  %280 = call ptr @memset(ptr %279, i32 0, i32 12)
  %281 = ptrtoint ptr %mpd to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 3, ptr %mpd, align 1
  %282 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %263, align 1
  %283 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %264, align 1
  %raw_io_interface426 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 60
  %284 = ptrtoint ptr %raw_io_interface426 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %raw_io_interface426, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool428.not = icmp eq i8 %285, 0
  br i1 %tobool428.not, label %sw.bb411.if.end436_crit_edge, label %land.lhs.true429

sw.bb411.if.end436_crit_edge:                     ; preds = %sw.bb411
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end436

land.lhs.true429:                                 ; preds = %sw.bb411
  %286 = load i32, ptr @aac_cache, align 4
  %and430 = and i32 %286, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and430)
  %cmp431.not = icmp eq i32 %and430, 1
  br i1 %cmp431.not, label %land.lhs.true429.if.end436_crit_edge, label %if.then433

land.lhs.true429.if.end436_crit_edge:             ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end436

if.then433:                                       ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #17
  %287 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 16, ptr %264, align 1
  br label %if.end436

if.end436:                                        ; preds = %if.then433, %land.lhs.true429.if.end436_crit_edge, %sw.bb411.if.end436_crit_edge
  %arrayidx438 = getelementptr i8, ptr %83, i32 1
  %288 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx438, align 1
  %290 = and i8 %289, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool441.not = icmp eq i8 %290, 0
  br i1 %tobool441.not, label %if.else444, label %if.then442

if.then442:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #17
  %291 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %265, align 1
  br label %if.end523

if.else444:                                       ; preds = %if.end436
  %292 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 8, ptr %265, align 1
  %293 = ptrtoint ptr %mpd to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 11, ptr %mpd, align 1
  %block_size456 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 13
  %294 = ptrtoint ptr %block_size456 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %block_size456, align 8
  %shr457 = lshr i32 %295, 16
  %conv459 = trunc i32 %shr457 to i8
  %296 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv459, ptr %269, align 1
  %297 = load i32, ptr %block_size456, align 8
  %shr463 = lshr i32 %297, 8
  %conv465 = trunc i32 %shr463 to i8
  %298 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv465, ptr %270, align 1
  %299 = load i32, ptr %block_size456, align 8
  %conv472 = trunc i32 %299 to i8
  %300 = ptrtoint ptr %271 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv472, ptr %271, align 1
  %arrayidx477 = getelementptr i8, ptr %83, i32 2
  %301 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx477, align 1
  %303 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %302, ptr %272, align 1
  %304 = load i8, ptr %arrayidx477, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %304)
  %cmp482 = icmp eq i8 %304, 28
  br i1 %cmp482, label %if.then484, label %if.else444.if.end492_crit_edge

if.else444.if.end492_crit_edge:                   ; preds = %if.else444
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end492

if.then484:                                       ; preds = %if.else444
  call void @__sanitizer_cov_trace_pc() #17
  %305 = ptrtoint ptr %273 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 10, ptr %273, align 1
  br label %if.end492

if.end492:                                        ; preds = %if.then484, %if.else444.if.end492_crit_edge
  %storemerge = phi i8 [ 23, %if.then484 ], [ 15, %if.else444.if.end492_crit_edge ]
  %306 = ptrtoint ptr %mpd to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %storemerge, ptr %mpd, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %capacity412.0)
  %cmp493 = icmp ugt i32 %capacity412.0, 16777215
  br i1 %cmp493, label %if.then495, label %if.else504

if.then495:                                       ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #17
  %307 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 -1, ptr %266, align 1
  %308 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 -1, ptr %267, align 1
  %309 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -1, ptr %268, align 1
  br label %if.end523

if.else504:                                       ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #17
  %shr505 = lshr i32 %capacity412.0, 16
  %conv507 = trunc i32 %shr505 to i8
  %310 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv507, ptr %266, align 1
  %shr511 = lshr i32 %capacity412.0, 8
  %conv513 = trunc i32 %shr511 to i8
  %311 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %conv513, ptr %267, align 1
  %conv518 = trunc i32 %capacity412.0 to i8
  %312 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %conv518, ptr %268, align 1
  br label %if.end523

if.end523:                                        ; preds = %if.else504, %if.then495, %if.then442
  %arrayidx525 = getelementptr i8, ptr %83, i32 2
  %313 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx525, align 1
  %trunc1083 = trunc i8 %314 to i6
  %315 = zext i6 %trunc1083 to i64
  call void @__sanitizer_cov_trace_switch(i64 %315, ptr @__sancov_gen_cov_switch_values.115)
  switch i6 %trunc1083, label %if.end523.if.end554_crit_edge [
    i6 8, label %if.end523.if.then537_crit_edge
    i6 -1, label %if.end523.if.then537_crit_edge1098
  ]

if.end523.if.then537_crit_edge1098:               ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then537

if.end523.if.then537_crit_edge:                   ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then537

if.end523.if.end554_crit_edge:                    ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end554

if.then537:                                       ; preds = %if.end523.if.then537_crit_edge, %if.end523.if.then537_crit_edge1098
  %316 = ptrtoint ptr %mpd to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %mpd, align 1
  %add541 = add i8 %317, 3
  store i8 %add541, ptr %mpd, align 1
  %318 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 8, ptr %272, align 1
  %319 = ptrtoint ptr %273 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 1, ptr %273, align 1
  %320 = load i32, ptr @aac_cache, align 4
  %and547 = and i32 %320, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and547)
  %cmp548 = icmp eq i32 %and547, 2
  %conv551 = select i1 %cmp548, i8 0, i8 4
  %321 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv551, ptr %274, align 1
  br label %if.end554

if.end554:                                        ; preds = %if.then537, %if.end523.if.end554_crit_edge
  %mode_buf_length.0 = phi i32 [ 15, %if.then537 ], [ 4, %if.end523.if.end554_crit_edge ]
  %arrayidx556 = getelementptr i8, ptr %83, i32 4
  %322 = ptrtoint ptr %arrayidx556 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx556, align 1
  %conv557 = zext i8 %323 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mode_buf_length.0, i32 %conv557)
  %cmp558 = icmp ugt i32 %mode_buf_length.0, %conv557
  %conv557. = select i1 %cmp558, i32 %conv557, i32 15
  %sdb.i.i1057 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %324 = ptrtoint ptr %sdb.i.i1057 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %sdb.i.i1057, align 4
  %nents.i.i1058 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %326 = ptrtoint ptr %nents.i.i1058 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %nents.i.i1058, align 4
  %call2.i1059 = call i32 @sg_copy_from_buffer(ptr noundef %325, i32 noundef %327, ptr noundef nonnull %mpd, i32 noundef %conv557.) #15
  %result567 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %328 = ptrtoint ptr %result567 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %result567, align 4
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %mpd) #15
  br label %scsi_done_ret

sw.bb571:                                         ; preds = %if.end100
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %mpd10) #15
  %329 = getelementptr inbounds [2 x i8], ptr %mpd10, i32 0, i32 1
  %330 = getelementptr inbounds %struct.anon.94, ptr %mpd10, i32 0, i32 2
  %331 = getelementptr inbounds %struct.anon.94, ptr %mpd10, i32 0, i32 3
  %332 = getelementptr inbounds %struct.anon.94, ptr %mpd10, i32 0, i32 3, i32 1
  %333 = getelementptr inbounds %struct.anon.94, ptr %mpd10, i32 0, i32 4
  %334 = getelementptr inbounds %struct.anon.94, ptr %mpd10, i32 0, i32 4, i32 1
  %335 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 1, i32 1
  %336 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 1, i32 1, i32 1
  %337 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 1, i32 1, i32 2
  %338 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 1, i32 3
  %339 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 1, i32 3, i32 1
  %340 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 1, i32 3, i32 2
  %341 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 2
  %342 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 2, i32 1
  %343 = getelementptr inbounds %struct.aac_modep10_data, ptr %mpd10, i32 0, i32 2, i32 2
  %size575 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 1
  %344 = call ptr @memset(ptr %mpd10, i32 255, i32 19)
  %345 = ptrtoint ptr %size575 to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %size575, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %346)
  %cmp576 = icmp ult i64 %346, 4294967297
  %347 = trunc i64 %346 to i32
  %conv582 = add i32 %347, -1
  %capacity572.0 = select i1 %cmp576, i32 %conv582, i32 -1
  %348 = call ptr @memset(ptr %mpd10, i32 0, i32 19)
  %349 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 7, ptr %329, align 1
  %350 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %330, align 1
  %raw_io_interface595 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 60
  %351 = ptrtoint ptr %raw_io_interface595 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %raw_io_interface595, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool597.not = icmp eq i8 %352, 0
  br i1 %tobool597.not, label %sw.bb571.if.end605_crit_edge, label %land.lhs.true598

sw.bb571.if.end605_crit_edge:                     ; preds = %sw.bb571
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end605

land.lhs.true598:                                 ; preds = %sw.bb571
  %353 = load i32, ptr @aac_cache, align 4
  %and599 = and i32 %353, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and599)
  %cmp600.not = icmp eq i32 %and599, 1
  br i1 %cmp600.not, label %land.lhs.true598.if.end605_crit_edge, label %if.then602

land.lhs.true598.if.end605_crit_edge:             ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end605

if.then602:                                       ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #17
  %354 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 16, ptr %330, align 1
  br label %if.end605

if.end605:                                        ; preds = %if.then602, %land.lhs.true598.if.end605_crit_edge, %sw.bb571.if.end605_crit_edge
  %355 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 0, ptr %331, align 1
  %356 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 0, ptr %332, align 1
  %arrayidx612 = getelementptr i8, ptr %83, i32 1
  %357 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx612, align 1
  %359 = and i8 %358, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool615.not = icmp eq i8 %359, 0
  %360 = ptrtoint ptr %333 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 0, ptr %333, align 1
  br i1 %tobool615.not, label %if.else623, label %if.then616

if.then616:                                       ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #17
  %361 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 0, ptr %334, align 1
  br label %if.end694

if.else623:                                       ; preds = %if.end605
  %362 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 8, ptr %334, align 1
  %363 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 15, ptr %329, align 1
  %block_size641 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 13
  %364 = ptrtoint ptr %block_size641 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %block_size641, align 8
  %shr642 = lshr i32 %365, 16
  %conv644 = trunc i32 %shr642 to i8
  %366 = ptrtoint ptr %338 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %conv644, ptr %338, align 1
  %367 = load i32, ptr %block_size641, align 8
  %shr650 = lshr i32 %367, 8
  %conv652 = trunc i32 %shr650 to i8
  %368 = ptrtoint ptr %339 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %conv652, ptr %339, align 1
  %369 = load i32, ptr %block_size641, align 8
  %conv659 = trunc i32 %369 to i8
  %370 = ptrtoint ptr %340 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv659, ptr %340, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %capacity572.0)
  %cmp663 = icmp ugt i32 %capacity572.0, 16777215
  br i1 %cmp663, label %if.then665, label %if.else675

if.then665:                                       ; preds = %if.else623
  call void @__sanitizer_cov_trace_pc() #17
  %371 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 -1, ptr %335, align 1
  %372 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 -1, ptr %336, align 1
  %373 = ptrtoint ptr %337 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 -1, ptr %337, align 1
  br label %if.end694

if.else675:                                       ; preds = %if.else623
  call void @__sanitizer_cov_trace_pc() #17
  %shr676 = lshr i32 %capacity572.0, 16
  %conv678 = trunc i32 %shr676 to i8
  %374 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %conv678, ptr %335, align 1
  %shr682 = lshr i32 %capacity572.0, 8
  %conv684 = trunc i32 %shr682 to i8
  %375 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %conv684, ptr %336, align 1
  %conv689 = trunc i32 %capacity572.0 to i8
  %376 = ptrtoint ptr %337 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %conv689, ptr %337, align 1
  br label %if.end694

if.end694:                                        ; preds = %if.else675, %if.then665, %if.then616
  %arrayidx696 = getelementptr i8, ptr %83, i32 2
  %377 = ptrtoint ptr %arrayidx696 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx696, align 1
  %trunc = trunc i8 %378 to i6
  %379 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %379, ptr @__sancov_gen_cov_switch_values.116)
  switch i6 %trunc, label %if.end694.if.end736_crit_edge [
    i6 8, label %if.end694.if.then708_crit_edge
    i6 -1, label %if.end694.if.then708_crit_edge1099
  ]

if.end694.if.then708_crit_edge1099:               ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then708

if.end694.if.then708_crit_edge:                   ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then708

if.end694.if.end736_crit_edge:                    ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end736

if.then708:                                       ; preds = %if.end694.if.then708_crit_edge, %if.end694.if.then708_crit_edge1099
  %380 = ptrtoint ptr %329 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %329, align 1
  %add713 = add i8 %381, 3
  store i8 %add713, ptr %329, align 1
  %382 = ptrtoint ptr %341 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 8, ptr %341, align 1
  %383 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 1, ptr %342, align 1
  %384 = load i32, ptr @aac_cache, align 4
  %and719 = and i32 %384, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and719)
  %cmp720 = icmp eq i32 %and719, 2
  %conv723 = select i1 %cmp720, i8 0, i8 4
  %385 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %conv723, ptr %343, align 1
  %arrayidx727 = getelementptr i8, ptr %83, i32 8
  %386 = ptrtoint ptr %arrayidx727 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx727, align 1
  %388 = tail call i8 @llvm.umin.i8(i8 %387, i8 19)
  %spec.select = zext i8 %388 to i32
  br label %if.end736

if.end736:                                        ; preds = %if.then708, %if.end694.if.end736_crit_edge
  %mode_buf_length573.0 = phi i32 [ 8, %if.end694.if.end736_crit_edge ], [ %spec.select, %if.then708 ]
  %sdb.i.i1060 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %389 = ptrtoint ptr %sdb.i.i1060 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %sdb.i.i1060, align 4
  %nents.i.i1061 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 0, i32 1
  %391 = ptrtoint ptr %nents.i.i1061 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %nents.i.i1061, align 4
  %call2.i1062 = call i32 @sg_copy_from_buffer(ptr noundef %390, i32 noundef %392, ptr noundef nonnull %mpd10, i32 noundef %mode_buf_length573.0) #15
  %result738 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %393 = ptrtoint ptr %result738 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %result738, align 4
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %mpd10) #15
  br label %scsi_done_ret

sw.bb742:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %sense_buffer743 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %394 = ptrtoint ptr %sense_buffer743 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %sense_buffer743, align 4
  %sense_data746 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 12
  %396 = call ptr @memcpy(ptr %395, ptr %sense_data746, i32 19)
  %397 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %fsa_dev, align 8
  %sense_data749 = getelementptr %struct.fsa_dev_info, ptr %398, i32 %7, i32 12
  %399 = call ptr @memset(ptr %sense_data749, i32 0, i32 19)
  %result750 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %400 = ptrtoint ptr %result750 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 0, ptr %result750, align 4
  br label %scsi_done_ret

sw.bb751:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx753 = getelementptr i8, ptr %83, i32 4
  %401 = ptrtoint ptr %arrayidx753 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx753, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool754.not = icmp ne i8 %402, 0
  %spec.select1084 = zext i1 %tobool754.not to i8
  %403 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 9
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %spec.select1084, ptr %403, align 1
  %result761 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %405 = ptrtoint ptr %result761 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 0, ptr %result761, align 4
  br label %scsi_done_ret

sw.bb762:                                         ; preds = %if.end100
  %sense_key765 = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 12, i32 3
  %406 = ptrtoint ptr %sense_key765 to i32
  call void @__asan_load1_noabort(i32 %406)
  %bf.load766 = load i8, ptr %sense_key765, align 1
  %bf.lshr767.mask = and i8 %bf.load766, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr767.mask)
  %cmp769 = icmp eq i8 %bf.lshr767.mask, 32
  br i1 %cmp769, label %if.then771, label %sw.bb762.sw.bb781_crit_edge

sw.bb762.sw.bb781_crit_edge:                      ; preds = %sw.bb762
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb781

if.then771:                                       ; preds = %sw.bb762
  call void @__sanitizer_cov_trace_pc() #17
  %result772 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %407 = ptrtoint ptr %result772 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 2, ptr %result772, align 4
  %408 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %fsa_dev, align 8
  %sense_data775 = getelementptr %struct.fsa_dev_info, ptr %409, i32 %7, i32 12
  %410 = ptrtoint ptr %sense_data775 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 112, ptr %sense_data775, align 1
  %arrayidx1.i1063 = getelementptr i8, ptr %sense_data775, i32 1
  %411 = ptrtoint ptr %arrayidx1.i1063 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 0, ptr %arrayidx1.i1063, align 1
  %arrayidx2.i1064 = getelementptr i8, ptr %sense_data775, i32 2
  %412 = ptrtoint ptr %arrayidx2.i1064 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 2, ptr %arrayidx2.i1064, align 1
  %arrayidx3.i1065 = getelementptr i8, ptr %sense_data775, i32 12
  %413 = ptrtoint ptr %arrayidx3.i1065 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 4, ptr %arrayidx3.i1065, align 1
  %arrayidx4.i1066 = getelementptr i8, ptr %sense_data775, i32 13
  %414 = ptrtoint ptr %arrayidx4.i1066 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %arrayidx4.i1066, align 1
  %415 = getelementptr i8, ptr %sense_data775, i32 7
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 6, ptr %415, align 1
  %sense_buffer776 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %417 = ptrtoint ptr %sense_buffer776 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %sense_buffer776, align 4
  %419 = load ptr, ptr %fsa_dev, align 8
  %sense_data779 = getelementptr %struct.fsa_dev_info, ptr %419, i32 %7, i32 12
  %420 = call ptr @memcpy(ptr %418, ptr %sense_data779, i32 19)
  br label %scsi_done_ret

sw.bb781:                                         ; preds = %sw.bb762.sw.bb781_crit_edge, %if.end100.sw.bb781_crit_edge, %if.end100.sw.bb781_crit_edge1094, %if.end100.sw.bb781_crit_edge1095, %if.end100.sw.bb781_crit_edge1096, %if.end100.sw.bb781_crit_edge1097
  %result782 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %421 = ptrtoint ptr %result782 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 0, ptr %result782, align 4
  br label %scsi_done_ret

sw.bb783:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %call784 = tail call fastcc i32 @aac_start_stop(ptr noundef %scsicmd)
  br label %cleanup795

sw.default785:                                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %result786 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %422 = ptrtoint ptr %result786 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 2, ptr %result786, align 4
  %423 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %fsa_dev, align 8
  %sense_data789 = getelementptr %struct.fsa_dev_info, ptr %424, i32 %7, i32 12
  %425 = ptrtoint ptr %sense_data789 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 112, ptr %sense_data789, align 1
  %arrayidx1.i1067 = getelementptr i8, ptr %sense_data789, i32 1
  %426 = ptrtoint ptr %arrayidx1.i1067 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %arrayidx1.i1067, align 1
  %arrayidx2.i1068 = getelementptr i8, ptr %sense_data789, i32 2
  %427 = ptrtoint ptr %arrayidx2.i1068 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 5, ptr %arrayidx2.i1068, align 1
  %arrayidx3.i1069 = getelementptr i8, ptr %sense_data789, i32 12
  %428 = ptrtoint ptr %arrayidx3.i1069 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 32, ptr %arrayidx3.i1069, align 1
  %arrayidx4.i1070 = getelementptr i8, ptr %sense_data789, i32 13
  %429 = ptrtoint ptr %arrayidx4.i1070 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 0, ptr %arrayidx4.i1070, align 1
  %arrayidx7.i1071 = getelementptr i8, ptr %sense_data789, i32 15
  %430 = ptrtoint ptr %arrayidx7.i1071 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 0, ptr %arrayidx7.i1071, align 1
  %arrayidx17.i1072 = getelementptr i8, ptr %sense_data789, i32 16
  %431 = ptrtoint ptr %arrayidx17.i1072 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 0, ptr %arrayidx17.i1072, align 1
  %arrayidx19.i1073 = getelementptr i8, ptr %sense_data789, i32 17
  %432 = ptrtoint ptr %arrayidx19.i1073 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 0, ptr %arrayidx19.i1073, align 1
  %433 = getelementptr i8, ptr %sense_data789, i32 7
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 10, ptr %433, align 1
  %sense_buffer790 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %435 = ptrtoint ptr %sense_buffer790 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %sense_buffer790, align 4
  %437 = load ptr, ptr %fsa_dev, align 8
  %sense_data793 = getelementptr %struct.fsa_dev_info, ptr %437, i32 %7, i32 12
  %438 = call ptr @memcpy(ptr %436, ptr %sense_data793, i32 19)
  br label %scsi_done_ret

scsi_done_ret:                                    ; preds = %sw.default785, %sw.bb781, %if.then771, %sw.bb751, %sw.bb742, %if.end736, %if.end554, %sw.bb348, %if.end341, %lor.lhs.false246.scsi_done_ret_crit_edge, %lor.lhs.false243.scsi_done_ret_crit_edge, %sw.bb240.scsi_done_ret_crit_edge, %cleanup238.thread, %if.then123, %if.then91, %if.else76, %if.then12
  %439 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %device, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %440, i32 0, i32 1
  %441 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %442, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i1076

if.then.i1076:                                    ; preds = %scsi_done_ret
  call void @__sanitizer_cov_trace_pc() #17
  call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup795

if.else.i:                                        ; preds = %scsi_done_ret
  call void @__sanitizer_cov_trace_pc() #17
  %443 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr null, ptr %device, align 4
  br label %cleanup795

cleanup795:                                       ; preds = %if.else.i, %if.then.i1076, %sw.bb783, %cleanup238, %if.then129, %if.end114, %sw.bb110.cleanup795_crit_edge, %if.end108, %sw.bb104.cleanup795_crit_edge, %do.end.i, %if.end.i.cleanup795_crit_edge, %if.else.i.i, %if.then.i.i, %if.then70.cleanup795_crit_edge, %if.end60, %if.then56.cleanup795_crit_edge, %if.end38, %sw.bb35.cleanup795_crit_edge, %entry.cleanup795_crit_edge
  %retval.4 = phi i32 [ %call784, %sw.bb783 ], [ %retval.3, %cleanup238 ], [ %call130, %if.then129 ], [ 0, %if.end114 ], [ 0, %if.end108 ], [ %call39, %if.end38 ], [ %call61, %if.end60 ], [ -1, %entry.cleanup795_crit_edge ], [ -1, %sw.bb35.cleanup795_crit_edge ], [ -1, %if.then56.cleanup795_crit_edge ], [ -1, %if.then70.cleanup795_crit_edge ], [ -1, %sw.bb104.cleanup795_crit_edge ], [ -1, %sw.bb110.cleanup795_crit_edge ], [ -1, %do.end.i ], [ 0, %if.end.i.cleanup795_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then.i1076 ], [ 0, %if.else.i ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_probe_container_callback2(ptr noundef %scsicmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsa_dev, align 8
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %valid = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 7
  %8 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @aac_scsi_cmd(ptr noundef %scsicmd)
  br label %cleanup

if.end:                                           ; preds = %entry
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65536, ptr %result, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %device, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_send_hba_fib(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  %maximum_num_physicals = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4
  %6 = ptrtoint ptr %maximum_num_physicals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maximum_num_physicals, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %9)
  %cmp4 = icmp ugt i64 %9, 255
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %10 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %result, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %device, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata.i, ptr noundef %scsicmd) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %14 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 262, ptr %phase, align 4
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %hw_fib_va.i.i = getelementptr inbounds %struct.fib, ptr %call5, i32 0, i32 13
  %19 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_fib_va.i.i, align 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 96)
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 15
  %22 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sc_data_direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %switch.lookup, label %if.end7.aac_construct_hbacmd.exit.i_crit_edge

if.end7.aac_construct_hbacmd.exit.i_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_construct_hbacmd.exit.i

switch.lookup:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %switch.cast = trunc i32 %23 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 66049, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %byte12.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %byte12.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %switch.masked, ptr %byte12.i.i, align 1
  br label %aac_construct_hbacmd.exit.i

aac_construct_hbacmd.exit.i:                      ; preds = %switch.lookup, %if.end7.aac_construct_hbacmd.exit.i_crit_edge
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lun.i.i, align 8
  %30 = lshr i64 %29, 24
  %conv5.i.i = trunc i64 %30 to i8
  %arrayidx.i.i = getelementptr %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv5.i.i, ptr %arrayidx.i.i, align 1
  %32 = load ptr, ptr %device, align 4
  %channel.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  %sub.i.i = add i32 %34, -1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %id.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 16
  %35 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i.i.i, align 8
  %hba_map.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 1, i32 50, i32 12, i32 19
  %arrayidx13.i.i = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map.i.i, i32 0, i32 %spec.select.i.i, i32 %36
  %37 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx13.i.i, align 4
  %it_nexus.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 4
  %39 = ptrtoint ptr %it_nexus.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %it_nexus.i.i, align 4
  %cdb.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 7
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %40 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmnd.i.i, align 4
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 14
  %42 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cmd_len.i.i, align 4
  %conv15.i.i = zext i16 %43 to i32
  %44 = call ptr @memcpy(ptr %cdb.i.i, ptr %41, i32 %conv15.i.i)
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  %data_length.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 9
  %48 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %data_length.i.i, align 4
  %hw_error_pa.i.i = getelementptr inbounds %struct.fib, ptr %call5, i32 0, i32 16
  %49 = ptrtoint ptr %hw_error_pa.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_error_pa.i.i, align 4
  %error_ptr_hi.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 14
  %51 = ptrtoint ptr %error_ptr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %error_ptr_hi.i.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #15
  %error_ptr_lo.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 13
  %53 = ptrtoint ptr %error_ptr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %error_ptr_lo.i.i, align 4
  %error_length.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 15
  %54 = ptrtoint ptr %error_length.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 131072, ptr %error_length.i.i, align 4
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %scsi_host_ptr.i = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 1, i32 49, i32 0, i32 7, i32 1, i32 2
  %59 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scsi_host_ptr.i, align 8
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %60, i32 0, i32 28
  %61 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sg_tablesize.i, align 2
  %conv.i = zext i16 %62 to i32
  %hw_sgl_pa.i = getelementptr inbounds %struct.fib, ptr %call5, i32 0, i32 15
  %63 = ptrtoint ptr %hw_sgl_pa.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hw_sgl_pa.i, align 4
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i.i, label %aac_construct_hbacmd.exit.i.aac_build_sghba.exit.i_crit_edge, label %for.body.preheader.i.i

aac_construct_hbacmd.exit.i.aac_build_sghba.exit.i_crit_edge: ; preds = %aac_construct_hbacmd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_build_sghba.exit.i

for.body.preheader.i.i:                           ; preds = %aac_construct_hbacmd.exit.i
  %sge4.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 17
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %65 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdb.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call.i.i)
  %cmp1.i.i = icmp ugt i32 %call.i.i, 28
  %arrayidx.i16.i = getelementptr %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 17, i32 2
  %sge.0.i.i = select i1 %cmp1.i.i, ptr %arrayidx.i16.i, ptr %sge4.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end24.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %byte_count.0124.i.i = phi i32 [ %add.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sg.0123.i.i = phi ptr [ %call33.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ %66, %for.body.preheader.i.i ]
  %sge.1122.i.i = phi ptr [ %incdec.ptr.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ %sge.0.i.i, %for.body.preheader.i.i ]
  %i.0121.i.i = phi i32 [ %inc.i.i, %if.end24.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0123.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_length.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0123.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_address.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0121.i.i, i32 %conv.i)
  %cmp9.not.i.i = icmp ult i32 %i.0121.i.i, %conv.i
  br i1 %cmp9.not.i.i, label %for.body.i.i.if.end24.i.i_crit_edge, label %do.end.i.i, !prof !373

for.body.i.i.if.end24.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 4064, i32 noundef 9, ptr noundef null) #15
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %do.end.i.i, %for.body.i.i.if.end24.i.i_crit_edge
  %addr_hi.i.i = getelementptr inbounds %struct.aac_hba_sgl, ptr %sge.1122.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %addr_hi.i.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %70) #15
  %73 = ptrtoint ptr %sge.1122.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sge.1122.i.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %68) #15
  %len.i.i = getelementptr inbounds %struct.aac_hba_sgl, ptr %sge.1122.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %len.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.aac_hba_sgl, ptr %sge.1122.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %flags.i.i, align 4
  %add.i.i = add i32 %68, %byte_count.0124.i.i
  %incdec.ptr.i.i = getelementptr %struct.aac_hba_sgl, ptr %sge.1122.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.0121.i.i, 1
  %call33.i.i = tail call ptr @sg_next(ptr noundef %sg.0123.i.i) #15
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end24.i.i.for.body.i.i_crit_edge

if.end24.i.i.for.body.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end24.i.i
  %flags.i.i.le = getelementptr inbounds %struct.aac_hba_sgl, ptr %sge.1122.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %78)
  %cmp36.i.i = icmp ugt i32 %add.i.i, %78
  br i1 %cmp36.i.i, label %if.then38.i.i, label %for.end.i.i.if.end44.i.i_crit_edge

for.end.i.i.if.end44.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i.i

if.then38.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %len.i.i.le = getelementptr inbounds %struct.aac_hba_sgl, ptr %sge.1122.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %len.i.i.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i.i.le, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #15
  %82 = add i32 %78, %add.i.i
  %sub41.i.i = sub i32 %81, %82
  %83 = tail call i32 @llvm.bswap.i32(i32 %sub41.i.i) #15
  %84 = ptrtoint ptr %len.i.i.le to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %len.i.i.le, align 4
  %85 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %length.i.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then38.i.i, %for.end.i.i.if.end44.i.i_crit_edge
  %byte_count.1.i.i = phi i32 [ %86, %if.then38.i.i ], [ %add.i.i, %for.end.i.i.if.end44.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %call.i.i)
  %cmp45.i.i = icmp slt i32 %call.i.i, 29
  br i1 %cmp45.i.i, label %if.then47.i.i, label %if.else50.i.i

if.then47.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %87 = lshr i32 %call.i.i, 24
  %conv48.i.i = trunc i32 %87 to i8
  %emb_data_desc_count.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 11
  %88 = ptrtoint ptr %emb_data_desc_count.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv48.i.i, ptr %emb_data_desc_count.i.i, align 1
  %89 = ptrtoint ptr %flags.i.i.le to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 64, ptr %flags.i.i.le, align 4
  br label %if.end65.i.i

if.else50.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags53.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 17, i32 0, i32 3
  %90 = ptrtoint ptr %flags53.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 128, ptr %flags53.i.i, align 4
  %emb_data_desc_count54.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 11
  %91 = ptrtoint ptr %emb_data_desc_count54.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %emb_data_desc_count54.i.i, align 1
  %addr_hi59.i.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 17, i32 0, i32 1
  %92 = ptrtoint ptr %addr_hi59.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %addr_hi59.i.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  %94 = ptrtoint ptr %sge4.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %sge4.i.i, align 4
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.else50.i.i, %if.then47.i.i
  %underflow.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 19
  %95 = ptrtoint ptr %underflow.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %underflow.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool66.not.i.i = icmp ne i32 %96, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.1.i.i, i32 %96)
  %cmp68.i.i = icmp ult i32 %byte_count.1.i.i, %96
  %or.cond.i.i = select i1 %tobool66.not.i.i, i1 %cmp68.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end73.i.i, label %if.end65.i.i.aac_build_sghba.exit.i_crit_edge

if.end65.i.i.aac_build_sghba.exit.i_crit_edge:    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_build_sghba.exit.i

do.end73.i.i:                                     ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call76.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %byte_count.1.i.i, i32 noundef %96) #18
  br label %aac_build_sghba.exit.i

aac_build_sghba.exit.i:                           ; preds = %do.end73.i.i, %if.end65.i.i.aac_build_sghba.exit.i_crit_edge, %aac_construct_hbacmd.exit.i.aac_build_sghba.exit.i_crit_edge
  %byte_count.2.i.i = phi i32 [ %byte_count.1.i.i, %do.end73.i.i ], [ %byte_count.1.i.i, %if.end65.i.i.aac_build_sghba.exit.i_crit_edge ], [ %call.i.i, %aac_construct_hbacmd.exit.i.aac_build_sghba.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.2.i.i)
  %cmp.i = icmp slt i32 %byte_count.2.i.i, 0
  br i1 %cmp.i, label %aac_build_sghba.exit.i.aac_adapter_hba.exit_crit_edge, label %if.end.i

aac_build_sghba.exit.i.aac_adapter_hba.exit_crit_edge: ; preds = %aac_build_sghba.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_adapter_hba.exit

if.end.i:                                         ; preds = %aac_build_sghba.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %emb_data_desc_count.i = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %20, i32 0, i32 11
  %97 = ptrtoint ptr %emb_data_desc_count.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %emb_data_desc_count.i, align 1
  %conv4.i = zext i8 %98 to i32
  %mul.i = shl i32 %conv4.i, 28
  %add.i = or i32 %mul.i, 64
  %hbacmd_size.i = getelementptr inbounds %struct.fib, ptr %call5, i32 0, i32 17
  %99 = ptrtoint ptr %hbacmd_size.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add.i, ptr %hbacmd_size.i, align 4
  %call5.i = tail call i32 @aac_hba_send(i8 noundef zeroext 64, ptr noundef nonnull %call5, ptr noundef nonnull @aac_hba_callback, ptr noundef %scsicmd) #15
  br label %aac_adapter_hba.exit

aac_adapter_hba.exit:                             ; preds = %if.end.i, %aac_build_sghba.exit.i.aac_adapter_hba.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %byte_count.2.i.i, %aac_build_sghba.exit.i.aac_adapter_hba.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %retval.0.i)
  %cmp9 = icmp eq i32 %retval.0.i, -115
  br i1 %cmp9, label %aac_adapter_hba.exit.cleanup_crit_edge, label %do.end

aac_adapter_hba.exit.cleanup_crit_edge:           ; preds = %aac_adapter_hba.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %aac_adapter_hba.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %retval.0.i) #18
  %call13 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call5) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call5) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %aac_adapter_hba.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %aac_adapter_hba.exit.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_read(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %7, label %sw.default [
    i8 8, label %sw.bb
    i8 -120, label %sw.bb17
    i8 -88, label %sw.bb76
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx2 = getelementptr i8, ptr %5, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2, align 1
  %11 = and i8 %10, 31
  %and = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %and, 16
  %arrayidx5 = getelementptr i8, ptr %5, i32 2
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %shl7
  %arrayidx9 = getelementptr i8, ptr %5, i32 3
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %or11 = or i32 %or, %conv10
  %conv12 = zext i32 %or11 to i64
  %arrayidx14 = getelementptr i8, ptr %5, i32 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  %spec.store.select = select i1 %cmp, i32 256, i32 %conv15
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx19 = getelementptr i8, ptr %5, i32 2
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %19 to i64
  %shl21 = shl nuw i64 %conv20, 56
  %arrayidx23 = getelementptr i8, ptr %5, i32 3
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %21 to i64
  %shl25 = shl nuw nsw i64 %conv24, 48
  %or26 = or i64 %shl25, %shl21
  %arrayidx28 = getelementptr i8, ptr %5, i32 4
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %23 to i64
  %shl30 = shl nuw nsw i64 %conv29, 40
  %or31 = or i64 %or26, %shl30
  %arrayidx33 = getelementptr i8, ptr %5, i32 5
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %25 to i64
  %shl35 = shl nuw nsw i64 %conv34, 32
  %or36 = or i64 %or31, %shl35
  %arrayidx38 = getelementptr i8, ptr %5, i32 6
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %27 to i64
  %shl40 = shl nuw nsw i64 %conv39, 24
  %or41 = or i64 %or36, %shl40
  %arrayidx43 = getelementptr i8, ptr %5, i32 7
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %29 to i32
  %shl45 = shl nuw nsw i32 %conv44, 16
  %30 = zext i32 %shl45 to i64
  %or47 = or i64 %or41, %30
  %arrayidx49 = getelementptr i8, ptr %5, i32 8
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %32 to i32
  %shl51 = shl nuw nsw i32 %conv50, 8
  %33 = zext i32 %shl51 to i64
  %arrayidx55 = getelementptr i8, ptr %5, i32 9
  %34 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %35 to i64
  %or53 = or i64 %or47, %conv56
  %or57 = or i64 %or53, %33
  %arrayidx59 = getelementptr i8, ptr %5, i32 10
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %37 to i32
  %shl61 = shl nuw i32 %conv60, 24
  %arrayidx63 = getelementptr i8, ptr %5, i32 11
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %39 to i32
  %shl65 = shl nuw nsw i32 %conv64, 16
  %or66 = or i32 %shl65, %shl61
  %arrayidx68 = getelementptr i8, ptr %5, i32 12
  %40 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %41 to i32
  %shl70 = shl nuw nsw i32 %conv69, 8
  %or71 = or i32 %or66, %shl70
  %arrayidx73 = getelementptr i8, ptr %5, i32 13
  %42 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %43 to i32
  %or75 = or i32 %or71, %conv74
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx78 = getelementptr i8, ptr %5, i32 2
  %44 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %45 to i64
  %shl80 = shl nuw nsw i64 %conv79, 24
  %arrayidx82 = getelementptr i8, ptr %5, i32 3
  %46 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %47 to i32
  %shl84 = shl nuw nsw i32 %conv83, 16
  %48 = zext i32 %shl84 to i64
  %or86 = or i64 %shl80, %48
  %arrayidx88 = getelementptr i8, ptr %5, i32 4
  %49 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %50 to i32
  %shl90 = shl nuw nsw i32 %conv89, 8
  %51 = zext i32 %shl90 to i64
  %arrayidx94 = getelementptr i8, ptr %5, i32 5
  %52 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %53 to i64
  %or92 = or i64 %or86, %conv95
  %or96 = or i64 %or92, %51
  %arrayidx98 = getelementptr i8, ptr %5, i32 6
  %54 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %55 to i32
  %shl100 = shl nuw i32 %conv99, 24
  %arrayidx102 = getelementptr i8, ptr %5, i32 7
  %56 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %57 to i32
  %shl104 = shl nuw nsw i32 %conv103, 16
  %or105 = or i32 %shl104, %shl100
  %arrayidx107 = getelementptr i8, ptr %5, i32 8
  %58 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %59 to i32
  %shl109 = shl nuw nsw i32 %conv108, 8
  %or110 = or i32 %or105, %shl109
  %arrayidx112 = getelementptr i8, ptr %5, i32 9
  %60 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %61 to i32
  %or114 = or i32 %or110, %conv113
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx116 = getelementptr i8, ptr %5, i32 2
  %62 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %63 to i64
  %shl118 = shl nuw nsw i64 %conv117, 24
  %arrayidx120 = getelementptr i8, ptr %5, i32 3
  %64 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %65 to i32
  %shl122 = shl nuw nsw i32 %conv121, 16
  %66 = zext i32 %shl122 to i64
  %or124 = or i64 %shl118, %66
  %arrayidx126 = getelementptr i8, ptr %5, i32 4
  %67 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %68 to i32
  %shl128 = shl nuw nsw i32 %conv127, 8
  %69 = zext i32 %shl128 to i64
  %arrayidx132 = getelementptr i8, ptr %5, i32 5
  %70 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %71 to i64
  %or130 = or i64 %or124, %conv133
  %or134 = or i64 %or130, %69
  %arrayidx136 = getelementptr i8, ptr %5, i32 7
  %72 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %73 to i32
  %shl138 = shl nuw nsw i32 %conv137, 8
  %arrayidx140 = getelementptr i8, ptr %5, i32 8
  %74 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %75 to i32
  %or142 = or i32 %shl138, %conv141
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb76, %sw.bb17, %sw.bb
  %lba.0 = phi i64 [ %or134, %sw.default ], [ %or96, %sw.bb76 ], [ %or57, %sw.bb17 ], [ %conv12, %sw.bb ]
  %count.0 = phi i32 [ %or142, %sw.default ], [ %or114, %sw.bb76 ], [ %or75, %sw.bb17 ], [ %spec.store.select, %sw.bb ]
  %conv143 = zext i32 %count.0 to i64
  %add = add i64 %lba.0, %conv143
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %76 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fsa_dev, align 8
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %78 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id.i, align 8
  %size = getelementptr %struct.fsa_dev_info, ptr %77, i32 %79, i32 1
  %80 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %81)
  %cmp146 = icmp ugt i64 %add, %81
  br i1 %cmp146, label %if.then148, label %if.end156

if.then148:                                       ; preds = %sw.epilog
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %82 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %result, align 4
  %83 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fsa_dev, align 8
  %sense_data = getelementptr %struct.fsa_dev_info, ptr %84, i32 %79, i32 12
  %85 = ptrtoint ptr %sense_data to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 112, ptr %sense_data, align 1
  %arrayidx1.i = getelementptr i8, ptr %sense_data, i32 1
  %86 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %sense_data, i32 2
  %87 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 5, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %sense_data, i32 12
  %88 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 33, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %sense_data, i32 13
  %89 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %sense_data, i32 15
  %90 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %sense_data, i32 16
  %91 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %sense_data, i32 17
  %92 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx19.i, align 1
  %93 = getelementptr i8, ptr %sense_data, i32 7
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 10, ptr %93, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %95 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sense_buffer, align 4
  %97 = load ptr, ptr %fsa_dev, align 8
  %sense_data155 = getelementptr %struct.fsa_dev_info, ptr %97, i32 %79, i32 12
  %98 = call ptr @memcpy(ptr %96, ptr %sense_data155, i32 19)
  %99 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %102, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %device, align 4
  br label %cleanup

if.end156:                                        ; preds = %sw.epilog
  %adapter_bounds = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1
  %104 = ptrtoint ptr %adapter_bounds to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adapter_bounds, align 4
  %call157 = tail call i32 %105(ptr noundef %hostdata, ptr noundef %scsicmd, i64 noundef %lba.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool.not = icmp eq i32 %call157, 0
  br i1 %tobool.not, label %if.end159, label %if.end156.cleanup_crit_edge

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end159:                                        ; preds = %if.end156
  %call160 = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %106 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 262, ptr %phase, align 4
  %dev161 = getelementptr inbounds %struct.fib, ptr %call160, i32 0, i32 3
  %107 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev161, align 4
  %adapter_read = getelementptr inbounds %struct.aac_dev, ptr %108, i32 0, i32 17, i32 12
  %109 = ptrtoint ptr %adapter_read to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adapter_read, align 4
  %call163 = tail call i32 %110(ptr noundef %call160, ptr noundef %scsicmd, i64 noundef %lba.0, i32 noundef %count.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call163)
  %cmp164 = icmp eq i32 %call163, -115
  br i1 %cmp164, label %if.end159.cleanup_crit_edge, label %do.end

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end159
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call163) #18
  %result169 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %111 = ptrtoint ptr %result169 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 40, ptr %result169, align 4
  %112 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device, align 4
  %request_queue.i3 = getelementptr inbounds %struct.scsi_device, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %request_queue.i3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %request_queue.i3, align 4
  %tobool.not.i4 = icmp eq ptr %115, null
  br i1 %tobool.not.i4, label %if.else.i6, label %if.then.i5

if.then.i5:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %aac_scsi_done.exit7

if.else.i6:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %device, align 4
  br label %aac_scsi_done.exit7

aac_scsi_done.exit7:                              ; preds = %if.else.i6, %if.then.i5
  %call170 = tail call i32 @aac_fib_complete(ptr noundef %call160) #15
  tail call void @aac_fib_free(ptr noundef %call160) #15
  br label %cleanup

cleanup:                                          ; preds = %aac_scsi_done.exit7, %if.end159.cleanup_crit_edge, %if.end156.cleanup_crit_edge, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_write(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %7, label %if.else137 [
    i8 10, label %if.then
    i8 -118, label %if.then25
    i8 -86, label %if.then94
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx3 = getelementptr i8, ptr %5, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %11 = and i8 %10, 31
  %and = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %and, 16
  %arrayidx6 = getelementptr i8, ptr %5, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %shl8
  %arrayidx10 = getelementptr i8, ptr %5, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %15 to i32
  %or12 = or i32 %or, %conv11
  %conv13 = zext i32 %or12 to i64
  %arrayidx15 = getelementptr i8, ptr %5, i32 4
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp17 = icmp eq i8 %17, 0
  %spec.store.select = select i1 %cmp17, i32 256, i32 %conv16
  br label %if.end172

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx27 = getelementptr i8, ptr %5, i32 2
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %19 to i64
  %shl29 = shl nuw i64 %conv28, 56
  %arrayidx31 = getelementptr i8, ptr %5, i32 3
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %21 to i64
  %shl33 = shl nuw nsw i64 %conv32, 48
  %or34 = or i64 %shl33, %shl29
  %arrayidx36 = getelementptr i8, ptr %5, i32 4
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %23 to i64
  %shl38 = shl nuw nsw i64 %conv37, 40
  %or39 = or i64 %or34, %shl38
  %arrayidx41 = getelementptr i8, ptr %5, i32 5
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %25 to i64
  %shl43 = shl nuw nsw i64 %conv42, 32
  %or44 = or i64 %or39, %shl43
  %arrayidx46 = getelementptr i8, ptr %5, i32 6
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %27 to i64
  %shl48 = shl nuw nsw i64 %conv47, 24
  %or49 = or i64 %or44, %shl48
  %arrayidx51 = getelementptr i8, ptr %5, i32 7
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %29 to i32
  %shl53 = shl nuw nsw i32 %conv52, 16
  %30 = zext i32 %shl53 to i64
  %or55 = or i64 %or49, %30
  %arrayidx57 = getelementptr i8, ptr %5, i32 8
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %32 to i32
  %shl59 = shl nuw nsw i32 %conv58, 8
  %33 = zext i32 %shl59 to i64
  %arrayidx63 = getelementptr i8, ptr %5, i32 9
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %35 to i64
  %or61 = or i64 %or55, %conv64
  %or65 = or i64 %or61, %33
  %arrayidx67 = getelementptr i8, ptr %5, i32 10
  %36 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %37 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %arrayidx71 = getelementptr i8, ptr %5, i32 11
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %39 to i32
  %shl73 = shl nuw nsw i32 %conv72, 16
  %or74 = or i32 %shl73, %shl69
  %arrayidx76 = getelementptr i8, ptr %5, i32 12
  %40 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %41 to i32
  %shl78 = shl nuw nsw i32 %conv77, 8
  %or79 = or i32 %or74, %shl78
  %arrayidx81 = getelementptr i8, ptr %5, i32 13
  %42 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %43 to i32
  %or83 = or i32 %or79, %conv82
  %arrayidx85 = getelementptr i8, ptr %5, i32 1
  %44 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx85, align 1
  %46 = and i8 %45, 8
  br label %if.end172

if.then94:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx96 = getelementptr i8, ptr %5, i32 2
  %47 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %48 to i64
  %shl98 = shl nuw nsw i64 %conv97, 24
  %arrayidx100 = getelementptr i8, ptr %5, i32 3
  %49 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %50 to i32
  %shl102 = shl nuw nsw i32 %conv101, 16
  %51 = zext i32 %shl102 to i64
  %or104 = or i64 %shl98, %51
  %arrayidx106 = getelementptr i8, ptr %5, i32 4
  %52 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %53 to i32
  %shl108 = shl nuw nsw i32 %conv107, 8
  %54 = zext i32 %shl108 to i64
  %arrayidx112 = getelementptr i8, ptr %5, i32 5
  %55 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %56 to i64
  %or110 = or i64 %or104, %conv113
  %or114 = or i64 %or110, %54
  %arrayidx116 = getelementptr i8, ptr %5, i32 6
  %57 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %58 to i32
  %shl118 = shl nuw i32 %conv117, 24
  %arrayidx120 = getelementptr i8, ptr %5, i32 7
  %59 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %60 to i32
  %shl122 = shl nuw nsw i32 %conv121, 16
  %or123 = or i32 %shl122, %shl118
  %arrayidx125 = getelementptr i8, ptr %5, i32 8
  %61 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %62 to i32
  %shl127 = shl nuw nsw i32 %conv126, 8
  %or128 = or i32 %or123, %shl127
  %arrayidx130 = getelementptr i8, ptr %5, i32 9
  %63 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %64 to i32
  %or132 = or i32 %or128, %conv131
  %arrayidx134 = getelementptr i8, ptr %5, i32 1
  %65 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx134, align 1
  %67 = and i8 %66, 8
  br label %if.end172

if.else137:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx139 = getelementptr i8, ptr %5, i32 2
  %68 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %69 to i64
  %shl141 = shl nuw nsw i64 %conv140, 24
  %arrayidx143 = getelementptr i8, ptr %5, i32 3
  %70 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %71 to i32
  %shl145 = shl nuw nsw i32 %conv144, 16
  %72 = zext i32 %shl145 to i64
  %or147 = or i64 %shl141, %72
  %arrayidx149 = getelementptr i8, ptr %5, i32 4
  %73 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %74 to i32
  %shl151 = shl nuw nsw i32 %conv150, 8
  %75 = zext i32 %shl151 to i64
  %arrayidx155 = getelementptr i8, ptr %5, i32 5
  %76 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %77 to i64
  %or153 = or i64 %or147, %conv156
  %or157 = or i64 %or153, %75
  %arrayidx159 = getelementptr i8, ptr %5, i32 7
  %78 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %79 to i32
  %shl161 = shl nuw nsw i32 %conv160, 8
  %arrayidx163 = getelementptr i8, ptr %5, i32 8
  %80 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %81 to i32
  %or165 = or i32 %shl161, %conv164
  %arrayidx167 = getelementptr i8, ptr %5, i32 1
  %82 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx167, align 1
  %84 = and i8 %83, 8
  br label %if.end172

if.end172:                                        ; preds = %if.else137, %if.then94, %if.then25, %if.then
  %lba.0 = phi i64 [ %conv13, %if.then ], [ %or65, %if.then25 ], [ %or114, %if.then94 ], [ %or157, %if.else137 ]
  %count.0 = phi i32 [ %spec.store.select, %if.then ], [ %or83, %if.then25 ], [ %or132, %if.then94 ], [ %or165, %if.else137 ]
  %fua.0.shrunk = phi i8 [ 0, %if.then ], [ %46, %if.then25 ], [ %67, %if.then94 ], [ %84, %if.else137 ]
  %fua.0 = zext i8 %fua.0.shrunk to i32
  %conv173 = zext i32 %count.0 to i64
  %add = add i64 %lba.0, %conv173
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %85 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fsa_dev, align 8
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id.i, align 8
  %size = getelementptr %struct.fsa_dev_info, ptr %86, i32 %88, i32 1
  %89 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %90)
  %cmp176 = icmp ugt i64 %add, %90
  br i1 %cmp176, label %if.then178, label %if.end186

if.then178:                                       ; preds = %if.end172
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %91 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %result, align 4
  %92 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fsa_dev, align 8
  %sense_data = getelementptr %struct.fsa_dev_info, ptr %93, i32 %88, i32 12
  %94 = ptrtoint ptr %sense_data to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 112, ptr %sense_data, align 1
  %arrayidx1.i = getelementptr i8, ptr %sense_data, i32 1
  %95 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %sense_data, i32 2
  %96 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %sense_data, i32 12
  %97 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 33, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %sense_data, i32 13
  %98 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %sense_data, i32 15
  %99 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %sense_data, i32 16
  %100 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %sense_data, i32 17
  %101 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx19.i, align 1
  %102 = getelementptr i8, ptr %sense_data, i32 7
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 10, ptr %102, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 21
  %104 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sense_buffer, align 4
  %106 = load ptr, ptr %fsa_dev, align 8
  %sense_data185 = getelementptr %struct.fsa_dev_info, ptr %106, i32 %88, i32 12
  %107 = call ptr @memcpy(ptr %105, ptr %sense_data185, i32 19)
  %108 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %111, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #17
  %112 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %device, align 4
  br label %cleanup

if.end186:                                        ; preds = %if.end172
  %adapter_bounds = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1
  %113 = ptrtoint ptr %adapter_bounds to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter_bounds, align 4
  %call187 = tail call i32 %114(ptr noundef %hostdata, ptr noundef %scsicmd, i64 noundef %lba.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool.not = icmp eq i32 %call187, 0
  br i1 %tobool.not, label %if.end189, label %if.end186.cleanup_crit_edge

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end189:                                        ; preds = %if.end186
  %call190 = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %115 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 262, ptr %phase, align 4
  %dev191 = getelementptr inbounds %struct.fib, ptr %call190, i32 0, i32 3
  %116 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev191, align 4
  %adapter_write = getelementptr inbounds %struct.aac_dev, ptr %117, i32 0, i32 17, i32 13
  %118 = ptrtoint ptr %adapter_write to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adapter_write, align 4
  %call193 = tail call i32 %119(ptr noundef %call190, ptr noundef %scsicmd, i64 noundef %lba.0, i32 noundef %count.0, i32 noundef %fua.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call193)
  %cmp194 = icmp eq i32 %call193, -115
  br i1 %cmp194, label %if.end189.cleanup_crit_edge, label %do.end

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end189
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call193) #18
  %result199 = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %120 = ptrtoint ptr %result199 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 40, ptr %result199, align 4
  %121 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device, align 4
  %request_queue.i3 = getelementptr inbounds %struct.scsi_device, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %request_queue.i3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %request_queue.i3, align 4
  %tobool.not.i4 = icmp eq ptr %124, null
  br i1 %tobool.not.i4, label %if.else.i6, label %if.then.i5

if.then.i5:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %aac_scsi_done.exit7

if.else.i6:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %125 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %device, align 4
  br label %aac_scsi_done.exit7

aac_scsi_done.exit7:                              ; preds = %if.else.i6, %if.then.i5
  %call200 = tail call i32 @aac_fib_complete(ptr noundef %call190) #15
  tail call void @aac_fib_free(ptr noundef %call190) #15
  br label %cleanup

cleanup:                                          ; preds = %aac_scsi_done.exit7, %if.end189.cleanup_crit_edge, %if.end186.cleanup_crit_edge, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_synchronize(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %4 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  tail call void @aac_fib_init(ptr noundef %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %7, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2130706432, ptr %type, align 4
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %7, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cid, align 4
  %count = getelementptr inbounds %struct.hw_fib, ptr %7, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 268435456, ptr %count, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %17 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 262, ptr %phase, align 4
  %call4 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %call, i32 noundef 32, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @synchronize_callback, ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call4)
  %cmp = icmp eq i32 %call4, -115
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %call4) #18
  %call8 = tail call i32 @aac_fib_complete(ptr noundef %call) #15
  tail call void @aac_fib_free(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4181, %do.end ], [ 4181, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_get_container_serial(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %call = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  tail call void @aac_fib_init(ptr noundef %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1526726656, ptr %type, align 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cid, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %14 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 262, ptr %phase, align 4
  %call4 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %call, i32 noundef 16, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @get_container_serial_callback, ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call4)
  %cmp = icmp eq i32 %call4, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %call4) #18
  %call6 = tail call i32 @aac_fib_complete(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setinqstr(ptr noundef %dev, ptr noundef %data, i32 noundef %tindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supplement_adapter_info = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52
  %0 = call ptr @memset(ptr %data, i32 32, i32 28)
  %1 = ptrtoint ptr %supplement_adapter_info to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supplement_adapter_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else56, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef %supplement_adapter_info, i32 noundef 18, i32 noundef 2592) #15
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup90_crit_edge, label %if.end

if.then.cleanup90_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup90

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %4)
  %cmp = icmp eq i8 %4, 65
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arrayidx6 = getelementptr i8, ptr %call, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %6)
  %cmp8 = icmp eq i8 %6, 79
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.if.elsethread-pre-split_crit_edge

land.lhs.true.if.elsethread-pre-split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.elsethread-pre-split

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx11 = getelementptr i8, ptr %call, i32 2
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %8)
  %cmp13 = icmp eq i8 %8, 67
  br i1 %cmp13, label %while.body.i.preheader, label %land.lhs.true10.if.elsethread-pre-split_crit_edge

land.lhs.true10.if.elsethread-pre-split_crit_edge: ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.elsethread-pre-split

while.body.i.preheader:                           ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr2.i = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 83, ptr %data, align 1
  %incdec.ptr2.i.1 = getelementptr i8, ptr %data, i32 2
  %10 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 77, ptr %incdec.ptr2.i, align 1
  %11 = ptrtoint ptr %incdec.ptr2.i.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 67, ptr %incdec.ptr2.i.1, align 1
  br label %while.cond40.preheader

while.cond40.preheader:                           ; preds = %while.cond28.while.cond40.preheader_crit_edge, %while.cond28.while.cond40.preheader_crit_edge193, %while.body.i.preheader
  %cp.3.ph = phi ptr [ %call, %while.body.i.preheader ], [ %cp.1, %while.cond28.while.cond40.preheader_crit_edge ], [ %cp.1, %while.cond28.while.cond40.preheader_crit_edge193 ]
  br label %while.cond40

if.elsethread-pre-split:                          ; preds = %land.lhs.true10.if.elsethread-pre-split_crit_edge, %land.lhs.true.if.elsethread-pre-split_crit_edge
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr184 = load i8, ptr %call, align 1
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %if.end.if.else_crit_edge
  %13 = phi i8 [ %.pr184, %if.elsethread-pre-split ], [ %4, %if.end.if.else_crit_edge ]
  %uglygep = getelementptr i8, ptr %call, i32 7
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %13, label %land.rhs [
    i8 0, label %if.else.while.end_crit_edge
    i8 32, label %if.else.while.end_crit_edge185
  ]

if.else.while.end_crit_edge185:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs:                                         ; preds = %if.else
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %16, label %land.rhs.1 [
    i8 0, label %land.rhs.while.end_crit_edge
    i8 32, label %land.rhs.while.end_crit_edge186
  ]

land.rhs.while.end_crit_edge186:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.1:                                       ; preds = %land.rhs
  %incdec.ptr.1 = getelementptr i8, ptr %call, i32 2
  %18 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.1, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %19, label %land.rhs.2 [
    i8 0, label %land.rhs.1.while.end_crit_edge
    i8 32, label %land.rhs.1.while.end_crit_edge187
  ]

land.rhs.1.while.end_crit_edge187:                ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.1.while.end_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.2:                                       ; preds = %land.rhs.1
  %incdec.ptr.2 = getelementptr i8, ptr %call, i32 3
  %21 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.2, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %22, label %land.rhs.3 [
    i8 0, label %land.rhs.2.while.end_crit_edge
    i8 32, label %land.rhs.2.while.end_crit_edge188
  ]

land.rhs.2.while.end_crit_edge188:                ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.2.while.end_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.3:                                       ; preds = %land.rhs.2
  %incdec.ptr.3 = getelementptr i8, ptr %call, i32 4
  %24 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.3, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %25, label %land.rhs.4 [
    i8 0, label %land.rhs.3.while.end_crit_edge
    i8 32, label %land.rhs.3.while.end_crit_edge189
  ]

land.rhs.3.while.end_crit_edge189:                ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.3.while.end_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.4:                                       ; preds = %land.rhs.3
  %incdec.ptr.4 = getelementptr i8, ptr %call, i32 5
  %27 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.4, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %28, label %land.rhs.5 [
    i8 0, label %land.rhs.4.while.end_crit_edge
    i8 32, label %land.rhs.4.while.end_crit_edge190
  ]

land.rhs.4.while.end_crit_edge190:                ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.4.while.end_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.5:                                       ; preds = %land.rhs.4
  %incdec.ptr.5 = getelementptr i8, ptr %call, i32 6
  %30 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.5, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %31, label %land.rhs.6 [
    i8 0, label %land.rhs.5.while.end_crit_edge
    i8 32, label %land.rhs.5.while.end_crit_edge191
  ]

land.rhs.5.while.end_crit_edge191:                ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.5.while.end_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.6:                                       ; preds = %land.rhs.5
  %incdec.ptr.6 = getelementptr i8, ptr %call, i32 7
  %33 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.6, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %34, label %land.rhs.7 [
    i8 0, label %land.rhs.6.while.end_crit_edge
    i8 32, label %land.rhs.6.while.end_crit_edge192
  ]

land.rhs.6.while.end_crit_edge192:                ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.6.while.end_crit_edge:                   ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.7:                                       ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %land.rhs.7, %land.rhs.6.while.end_crit_edge, %land.rhs.6.while.end_crit_edge192, %land.rhs.5.while.end_crit_edge, %land.rhs.5.while.end_crit_edge191, %land.rhs.4.while.end_crit_edge, %land.rhs.4.while.end_crit_edge190, %land.rhs.3.while.end_crit_edge, %land.rhs.3.while.end_crit_edge189, %land.rhs.2.while.end_crit_edge, %land.rhs.2.while.end_crit_edge188, %land.rhs.1.while.end_crit_edge, %land.rhs.1.while.end_crit_edge187, %land.rhs.while.end_crit_edge, %land.rhs.while.end_crit_edge186, %if.else.while.end_crit_edge, %if.else.while.end_crit_edge185
  %cp.0.lcssa = phi ptr [ %call, %if.else.while.end_crit_edge ], [ %call, %if.else.while.end_crit_edge185 ], [ %incdec.ptr, %land.rhs.while.end_crit_edge ], [ %incdec.ptr, %land.rhs.while.end_crit_edge186 ], [ %incdec.ptr.1, %land.rhs.1.while.end_crit_edge ], [ %incdec.ptr.1, %land.rhs.1.while.end_crit_edge187 ], [ %incdec.ptr.2, %land.rhs.2.while.end_crit_edge ], [ %incdec.ptr.2, %land.rhs.2.while.end_crit_edge188 ], [ %incdec.ptr.3, %land.rhs.3.while.end_crit_edge ], [ %incdec.ptr.3, %land.rhs.3.while.end_crit_edge189 ], [ %incdec.ptr.4, %land.rhs.4.while.end_crit_edge ], [ %incdec.ptr.4, %land.rhs.4.while.end_crit_edge190 ], [ %incdec.ptr.5, %land.rhs.5.while.end_crit_edge ], [ %incdec.ptr.5, %land.rhs.5.while.end_crit_edge191 ], [ %incdec.ptr.6, %land.rhs.6.while.end_crit_edge ], [ %incdec.ptr.6, %land.rhs.6.while.end_crit_edge192 ], [ %uglygep, %land.rhs.7 ]
  %.lcssa183 = phi i8 [ %13, %if.else.while.end_crit_edge ], [ %13, %if.else.while.end_crit_edge185 ], [ %16, %land.rhs.while.end_crit_edge ], [ %16, %land.rhs.while.end_crit_edge186 ], [ %19, %land.rhs.1.while.end_crit_edge ], [ %19, %land.rhs.1.while.end_crit_edge187 ], [ %22, %land.rhs.2.while.end_crit_edge ], [ %22, %land.rhs.2.while.end_crit_edge188 ], [ %25, %land.rhs.3.while.end_crit_edge ], [ %25, %land.rhs.3.while.end_crit_edge189 ], [ %28, %land.rhs.4.while.end_crit_edge ], [ %28, %land.rhs.4.while.end_crit_edge190 ], [ %31, %land.rhs.5.while.end_crit_edge ], [ %31, %land.rhs.5.while.end_crit_edge191 ], [ %34, %land.rhs.6.while.end_crit_edge ], [ %34, %land.rhs.6.while.end_crit_edge192 ], [ %34, %land.rhs.7 ]
  %36 = ptrtoint ptr %cp.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %cp.0.lcssa, align 1
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not4.i = icmp eq i8 %38, 0
  br i1 %cmp.not4.i, label %while.end.inqstrcpy.exit139_crit_edge, label %while.end.while.body.i138_crit_edge

while.end.while.body.i138_crit_edge:              ; preds = %while.end
  br label %while.body.i138

while.end.inqstrcpy.exit139_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %inqstrcpy.exit139

while.body.i138:                                  ; preds = %while.body.i138.while.body.i138_crit_edge, %while.end.while.body.i138_crit_edge
  %39 = phi i8 [ %42, %while.body.i138.while.body.i138_crit_edge ], [ %38, %while.end.while.body.i138_crit_edge ]
  %b.addr.06.i133 = phi ptr [ %incdec.ptr2.i136, %while.body.i138.while.body.i138_crit_edge ], [ %data, %while.end.while.body.i138_crit_edge ]
  %a.addr.05.i134 = phi ptr [ %incdec.ptr.i135, %while.body.i138.while.body.i138_crit_edge ], [ %call, %while.end.while.body.i138_crit_edge ]
  %incdec.ptr.i135 = getelementptr i8, ptr %a.addr.05.i134, i32 1
  %incdec.ptr2.i136 = getelementptr i8, ptr %b.addr.06.i133, i32 1
  %40 = ptrtoint ptr %b.addr.06.i133 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %b.addr.06.i133, align 1
  %41 = ptrtoint ptr %incdec.ptr.i135 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i135, align 1
  %cmp.not.i137 = icmp eq i8 %42, 0
  br i1 %cmp.not.i137, label %while.body.i138.inqstrcpy.exit139_crit_edge, label %while.body.i138.while.body.i138_crit_edge

while.body.i138.while.body.i138_crit_edge:        ; preds = %while.body.i138
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i138

while.body.i138.inqstrcpy.exit139_crit_edge:      ; preds = %while.body.i138
  call void @__sanitizer_cov_trace_pc() #17
  br label %inqstrcpy.exit139

inqstrcpy.exit139:                                ; preds = %while.body.i138.inqstrcpy.exit139_crit_edge, %while.end.inqstrcpy.exit139_crit_edge
  %43 = ptrtoint ptr %cp.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.lcssa183, ptr %cp.0.lcssa, align 1
  br label %while.cond28

while.cond28:                                     ; preds = %while.body36, %inqstrcpy.exit139
  %44 = phi i8 [ %.pr, %while.body36 ], [ %.lcssa183, %inqstrcpy.exit139 ]
  %cp.1 = phi ptr [ %incdec.ptr37, %while.body36 ], [ %cp.0.lcssa, %inqstrcpy.exit139 ]
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %44, label %while.body36 [
    i8 0, label %while.cond28.while.cond40.preheader_crit_edge
    i8 32, label %while.cond28.while.cond40.preheader_crit_edge193
  ]

while.cond28.while.cond40.preheader_crit_edge193: ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond40.preheader

while.cond28.while.cond40.preheader_crit_edge:    ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond40.preheader

while.body36:                                     ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr37 = getelementptr i8, ptr %cp.1, i32 1
  %46 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr = load i8, ptr %incdec.ptr37, align 1
  br label %while.cond28

while.cond40:                                     ; preds = %while.cond40.while.cond40_crit_edge, %while.cond40.preheader
  %cp.3 = phi ptr [ %incdec.ptr45, %while.cond40.while.cond40_crit_edge ], [ %cp.3.ph, %while.cond40.preheader ]
  %47 = ptrtoint ptr %cp.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cp.3, align 1
  %cmp42 = icmp eq i8 %48, 32
  %incdec.ptr45 = getelementptr i8, ptr %cp.3, i32 1
  br i1 %cmp42, label %while.cond40.while.cond40_crit_edge, label %while.end46

while.cond40.while.cond40_crit_edge:              ; preds = %while.cond40
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond40

while.end46:                                      ; preds = %while.cond40
  %call47 = tail call i32 @strlen(ptr noundef %cp.3) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call47)
  %cmp48 = icmp ugt i32 %call47, 16
  br i1 %cmp48, label %if.then50, label %while.end46.if.end52_crit_edge

while.end46.if.end52_crit_edge:                   ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then50:                                        ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx51 = getelementptr i8, ptr %cp.3, i32 16
  %49 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx51, align 1
  %50 = ptrtoint ptr %cp.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr179 = load i8, ptr %cp.3, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %while.end46.if.end52_crit_edge
  %51 = phi i8 [ %.pr179, %if.then50 ], [ %48, %while.end46.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.not4.i140 = icmp eq i8 %51, 0
  br i1 %cmp.not4.i140, label %if.end52.inqstrcpy.exit147_crit_edge, label %while.body.i146.preheader

if.end52.inqstrcpy.exit147_crit_edge:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %inqstrcpy.exit147

while.body.i146.preheader:                        ; preds = %if.end52
  %pid = getelementptr inbounds %struct.scsi_inq, ptr %data, i32 0, i32 1
  br label %while.body.i146

while.body.i146:                                  ; preds = %while.body.i146.while.body.i146_crit_edge, %while.body.i146.preheader
  %52 = phi i8 [ %55, %while.body.i146.while.body.i146_crit_edge ], [ %51, %while.body.i146.preheader ]
  %b.addr.06.i141 = phi ptr [ %incdec.ptr2.i144, %while.body.i146.while.body.i146_crit_edge ], [ %pid, %while.body.i146.preheader ]
  %a.addr.05.i142 = phi ptr [ %incdec.ptr.i143, %while.body.i146.while.body.i146_crit_edge ], [ %cp.3, %while.body.i146.preheader ]
  %incdec.ptr.i143 = getelementptr i8, ptr %a.addr.05.i142, i32 1
  %incdec.ptr2.i144 = getelementptr i8, ptr %b.addr.06.i141, i32 1
  %53 = ptrtoint ptr %b.addr.06.i141 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %b.addr.06.i141, align 1
  %54 = ptrtoint ptr %incdec.ptr.i143 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.i143, align 1
  %cmp.not.i145 = icmp eq i8 %55, 0
  br i1 %cmp.not.i145, label %while.body.i146.inqstrcpy.exit147_crit_edge, label %while.body.i146.while.body.i146_crit_edge

while.body.i146.while.body.i146_crit_edge:        ; preds = %while.body.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i146

while.body.i146.inqstrcpy.exit147_crit_edge:      ; preds = %while.body.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %inqstrcpy.exit147

inqstrcpy.exit147:                                ; preds = %while.body.i146.inqstrcpy.exit147_crit_edge, %if.end52.inqstrcpy.exit147_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #15
  br label %if.end62

if.else56:                                        ; preds = %entry
  %cardtype = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 43
  %56 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cardtype, align 8
  %call57 = tail call ptr @aac_get_driver_ident(i32 noundef %57) #15
  %vname = getelementptr inbounds %struct.aac_driver_ident, ptr %call57, i32 0, i32 2
  %58 = ptrtoint ptr %vname to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vname, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp.not4.i148 = icmp eq i8 %61, 0
  br i1 %cmp.not4.i148, label %if.else56.inqstrcpy.exit155_crit_edge, label %if.else56.while.body.i154_crit_edge

if.else56.while.body.i154_crit_edge:              ; preds = %if.else56
  br label %while.body.i154

if.else56.inqstrcpy.exit155_crit_edge:            ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #17
  br label %inqstrcpy.exit155

while.body.i154:                                  ; preds = %while.body.i154.while.body.i154_crit_edge, %if.else56.while.body.i154_crit_edge
  %62 = phi i8 [ %65, %while.body.i154.while.body.i154_crit_edge ], [ %61, %if.else56.while.body.i154_crit_edge ]
  %b.addr.06.i149 = phi ptr [ %incdec.ptr2.i152, %while.body.i154.while.body.i154_crit_edge ], [ %data, %if.else56.while.body.i154_crit_edge ]
  %a.addr.05.i150 = phi ptr [ %incdec.ptr.i151, %while.body.i154.while.body.i154_crit_edge ], [ %59, %if.else56.while.body.i154_crit_edge ]
  %incdec.ptr.i151 = getelementptr i8, ptr %a.addr.05.i150, i32 1
  %incdec.ptr2.i152 = getelementptr i8, ptr %b.addr.06.i149, i32 1
  %63 = ptrtoint ptr %b.addr.06.i149 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %b.addr.06.i149, align 1
  %64 = ptrtoint ptr %incdec.ptr.i151 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.i151, align 1
  %cmp.not.i153 = icmp eq i8 %65, 0
  br i1 %cmp.not.i153, label %while.body.i154.inqstrcpy.exit155_crit_edge, label %while.body.i154.while.body.i154_crit_edge

while.body.i154.while.body.i154_crit_edge:        ; preds = %while.body.i154
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i154

while.body.i154.inqstrcpy.exit155_crit_edge:      ; preds = %while.body.i154
  call void @__sanitizer_cov_trace_pc() #17
  br label %inqstrcpy.exit155

inqstrcpy.exit155:                                ; preds = %while.body.i154.inqstrcpy.exit155_crit_edge, %if.else56.inqstrcpy.exit155_crit_edge
  %model = getelementptr inbounds %struct.aac_driver_ident, ptr %call57, i32 0, i32 3
  %66 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %model, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.not4.i156 = icmp eq i8 %69, 0
  br i1 %cmp.not4.i156, label %inqstrcpy.exit155.if.end62_crit_edge, label %while.body.i162.preheader

inqstrcpy.exit155.if.end62_crit_edge:             ; preds = %inqstrcpy.exit155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

while.body.i162.preheader:                        ; preds = %inqstrcpy.exit155
  %pid60 = getelementptr inbounds %struct.scsi_inq, ptr %data, i32 0, i32 1
  br label %while.body.i162

while.body.i162:                                  ; preds = %while.body.i162.while.body.i162_crit_edge, %while.body.i162.preheader
  %70 = phi i8 [ %73, %while.body.i162.while.body.i162_crit_edge ], [ %69, %while.body.i162.preheader ]
  %b.addr.06.i157 = phi ptr [ %incdec.ptr2.i160, %while.body.i162.while.body.i162_crit_edge ], [ %pid60, %while.body.i162.preheader ]
  %a.addr.05.i158 = phi ptr [ %incdec.ptr.i159, %while.body.i162.while.body.i162_crit_edge ], [ %67, %while.body.i162.preheader ]
  %incdec.ptr.i159 = getelementptr i8, ptr %a.addr.05.i158, i32 1
  %incdec.ptr2.i160 = getelementptr i8, ptr %b.addr.06.i157, i32 1
  %71 = ptrtoint ptr %b.addr.06.i157 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %b.addr.06.i157, align 1
  %72 = ptrtoint ptr %incdec.ptr.i159 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.i159, align 1
  %cmp.not.i161 = icmp eq i8 %73, 0
  br i1 %cmp.not.i161, label %while.body.i162.if.end62_crit_edge, label %while.body.i162.while.body.i162_crit_edge

while.body.i162.while.body.i162_crit_edge:        ; preds = %while.body.i162
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i162

while.body.i162.if.end62_crit_edge:               ; preds = %while.body.i162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.end62:                                         ; preds = %while.body.i162.if.end62_crit_edge, %inqstrcpy.exit155.if.end62_crit_edge, %inqstrcpy.exit147
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %tindex)
  %cmp63 = icmp ult i32 %tindex, 21
  br i1 %cmp63, label %if.then65, label %if.end62.if.end88_crit_edge

if.end62.if.end88_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then65:                                        ; preds = %if.end62
  %pid66 = getelementptr inbounds %struct.scsi_inq, ptr %data, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.then65
  %findit.0 = phi ptr [ %pid66, %if.then65 ], [ %incdec.ptr71, %for.cond.for.cond_crit_edge ]
  %74 = ptrtoint ptr %findit.0 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %findit.0, align 1
  %cmp69.not = icmp eq i8 %75, 32
  %incdec.ptr71 = getelementptr i8, ptr %findit.0, i32 1
  br i1 %cmp69.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %findit.0, i32 -4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @.str.96, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp73 = icmp eq i32 %bcmp, 0
  br i1 %cmp73, label %if.then75, label %for.end.if.end77_crit_edge

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 32, ptr %add.ptr, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %for.end.if.end77_crit_edge
  %findit.1 = phi ptr [ %add.ptr, %if.then75 ], [ %findit.0, %for.end.if.end77_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %findit.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pid66 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx80 = getelementptr [21 x ptr], ptr @container_types, i32 0, i32 %tindex
  %77 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx80, align 4
  %call81 = tail call i32 @strlen(ptr noundef %78) #21
  %add = add i32 %sub.ptr.sub, %call81
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add)
  %cmp82 = icmp ult i32 %add, 20
  br i1 %cmp82, label %if.then84, label %if.end77.if.end88_crit_edge

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then84:                                        ; preds = %if.end77
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp.not4.i164 = icmp eq i8 %80, 0
  br i1 %cmp.not4.i164, label %if.then84.if.end88_crit_edge, label %if.then84.while.body.i170_crit_edge

if.then84.while.body.i170_crit_edge:              ; preds = %if.then84
  br label %while.body.i170

if.then84.if.end88_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

while.body.i170:                                  ; preds = %while.body.i170.while.body.i170_crit_edge, %if.then84.while.body.i170_crit_edge
  %81 = phi i8 [ %84, %while.body.i170.while.body.i170_crit_edge ], [ %80, %if.then84.while.body.i170_crit_edge ]
  %b.addr.06.i165.pn = phi ptr [ %b.addr.06.i165, %while.body.i170.while.body.i170_crit_edge ], [ %findit.1, %if.then84.while.body.i170_crit_edge ]
  %a.addr.05.i166 = phi ptr [ %incdec.ptr.i167, %while.body.i170.while.body.i170_crit_edge ], [ %78, %if.then84.while.body.i170_crit_edge ]
  %b.addr.06.i165 = getelementptr i8, ptr %b.addr.06.i165.pn, i32 1
  %incdec.ptr.i167 = getelementptr i8, ptr %a.addr.05.i166, i32 1
  %82 = ptrtoint ptr %b.addr.06.i165 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %b.addr.06.i165, align 1
  %83 = ptrtoint ptr %incdec.ptr.i167 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr.i167, align 1
  %cmp.not.i169 = icmp eq i8 %84, 0
  br i1 %cmp.not.i169, label %while.body.i170.if.end88_crit_edge, label %while.body.i170.while.body.i170_crit_edge

while.body.i170.while.body.i170_crit_edge:        ; preds = %while.body.i170
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i170

while.body.i170.if.end88_crit_edge:               ; preds = %while.body.i170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.end88:                                         ; preds = %while.body.i170.if.end88_crit_edge, %if.then84.if.end88_crit_edge, %if.end77.if.end88_crit_edge, %if.end62.if.end88_crit_edge
  %prl = getelementptr inbounds %struct.scsi_inq, ptr %data, i32 0, i32 2
  %incdec.ptr2.i175 = getelementptr %struct.scsi_inq, ptr %data, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %prl to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 86, ptr %prl, align 1
  %incdec.ptr2.i175.1 = getelementptr %struct.scsi_inq, ptr %data, i32 0, i32 2, i32 2
  %86 = ptrtoint ptr %incdec.ptr2.i175 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 49, ptr %incdec.ptr2.i175, align 1
  %incdec.ptr2.i175.2 = getelementptr %struct.scsi_inq, ptr %data, i32 0, i32 2, i32 3
  %87 = ptrtoint ptr %incdec.ptr2.i175.1 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 46, ptr %incdec.ptr2.i175.1, align 1
  %88 = ptrtoint ptr %incdec.ptr2.i175.2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 48, ptr %incdec.ptr2.i175.2, align 1
  br label %cleanup90

cleanup90:                                        ; preds = %if.end88, %if.then.cleanup90_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_get_container_name(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %call = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  tail call void @aac_fib_init(ptr noundef %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %6 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 262, ptr %phase, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2113929216, ptr %type, align 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cid, align 4
  %count = getelementptr inbounds %struct.hw_fib, ptr %5, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 268435456, ptr %count, align 4
  %call4 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %call, i32 noundef 52, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @get_container_name_callback, ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call4)
  %cmp = icmp eq i32 %call4, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %call4) #18
  %call6 = tail call i32 @aac_fib_complete(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_start_stop(ptr noundef %scsicmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %supported_options2 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %supported_options2, align 8
  %and = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 24
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %result, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef %scsicmd) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %device, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 63
  %10 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @aac_fib_alloc_tag(ptr noundef %hostdata, ptr noundef %scsicmd) #15
  tail call void @aac_fib_init(ptr noundef %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -184549376, ptr %type, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 16
  %16 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool6.not, i32 50331648, i32 33554432
  %sub = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %sub to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %sub, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %cid = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cid, align 4
  %26 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmnd, align 4
  %arrayidx9 = getelementptr i8, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9, align 1
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 24
  %parm = getelementptr inbounds %struct.hw_fib, ptr %13, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %parm, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 22, i32 9
  %34 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 262, ptr %phase, align 4
  %call14 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %call, i32 noundef 20, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @aac_start_stop_callback, ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call14)
  %cmp = icmp eq i32 %call14, -115
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end17

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 @aac_fib_complete(ptr noundef %call) #15
  tail call void @aac_fib_free(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ 4181, %if.end17 ], [ 4181, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_dev_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %dd.i37 = alloca %struct.aac_delete_disk, align 4
  %dd.i = alloca %struct.aac_delete_disk, align 4
  %qd.i = alloca %struct.aac_query_disk, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 371, label %sw.bb
    i32 355, label %sw.bb1
    i32 270627, label %sw.bb3
    i32 2131, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %qd.i) #15
  %1 = call ptr @memset(ptr %qd.i, i32 255, i32 48)
  %fsa_dev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %2 = ptrtoint ptr %fsa_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsa_dev.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sw.bb.query_disk.exit_crit_edge, label %if.end59.i.i.i

sw.bb.query_disk.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

if.end59.i.i.i:                                   ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.102, i32 noundef 156) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 48, i32 -1226833920) #22
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !373

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %qd.i, i32 noundef 48) #15
  %5 = call i32 @llvm.read_register.i32(metadata !353) #15
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #13, !srcloc !374
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %qd.i, ptr noundef %arg, i32 noundef 48) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #15, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !373

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i84.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 48, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 48, %res.0.i.i84.i
  %add.ptr.i.i.i = getelementptr i8, ptr %qd.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i84.i)
  br label %query_disk.exit

if.end3.i:                                        ; preds = %if.end.i.i.i
  %9 = ptrtoint ptr %qd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i = icmp eq i32 %10, -1
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end3.i
  %id.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 2
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i = icmp slt i32 %12, 0
  br i1 %cmp5.i, label %if.then4.i.query_disk.exit_crit_edge, label %lor.lhs.false.i

if.then4.i.query_disk.exit_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %maximum_num_containers.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %13 = ptrtoint ptr %maximum_num_containers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maximum_num_containers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp7.not.i = icmp slt i32 %12, %14
  br i1 %cmp7.not.i, label %if.end9.i, label %lor.lhs.false.i.query_disk.exit_crit_edge

lor.lhs.false.i.query_disk.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

if.end9.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %qd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %qd.i, align 4
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end3.i
  %bus.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 1
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp12.i = icmp eq i32 %17, -1
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.else.i.query_disk.exit_crit_edge

if.else.i.query_disk.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %id13.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 2
  %18 = ptrtoint ptr %id13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp14.i = icmp eq i32 %19, -1
  br i1 %cmp14.i, label %land.lhs.true15.i, label %land.lhs.true.i.query_disk.exit_crit_edge

land.lhs.true.i.query_disk.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %lun.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 3
  %20 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lun.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp16.i = icmp ne i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19.i = icmp slt i32 %10, 0
  %or.cond.i = select i1 %cmp16.i, i1 true, i1 %cmp19.i
  br i1 %or.cond.i, label %land.lhs.true15.i.query_disk.exit_crit_edge, label %lor.lhs.false20.i

land.lhs.true15.i.query_disk.exit_crit_edge:      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

lor.lhs.false20.i:                                ; preds = %land.lhs.true15.i
  %maximum_num_containers22.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %22 = ptrtoint ptr %maximum_num_containers22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maximum_num_containers22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %23)
  %cmp23.not.i = icmp slt i32 %10, %23
  br i1 %cmp23.not.i, label %if.end25.i, label %lor.lhs.false20.i.query_disk.exit_crit_edge

lor.lhs.false20.i.query_disk.exit_crit_edge:      ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

if.end25.i:                                       ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #17
  %scsi_host_ptr.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %24 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scsi_host_ptr.i, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_no.i, align 4
  %instance.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 7
  %28 = ptrtoint ptr %instance.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %instance.i, align 4
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bus.i, align 4
  %30 = ptrtoint ptr %id13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %10, ptr %id13.i, align 4
  %31 = ptrtoint ptr %lun.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %lun.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end25.i, %if.end9.i
  %32 = ptrtoint ptr %qd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qd.i, align 4
  %valid.i = getelementptr %struct.fsa_dev_info, ptr %3, i32 %33, i32 7
  %34 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %valid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp34.i = icmp ne i8 %35, 0
  %conv35.i = zext i1 %cmp34.i to i32
  %valid36.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 4
  %36 = ptrtoint ptr %valid36.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv35.i, ptr %valid36.i, align 4
  %locked.i = getelementptr %struct.fsa_dev_info, ptr %3, i32 %33, i32 9
  %37 = ptrtoint ptr %locked.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %locked.i, align 1
  %conv39.i = zext i8 %38 to i32
  %locked40.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 5
  %39 = ptrtoint ptr %locked40.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv39.i, ptr %locked40.i, align 4
  %deleted.i = getelementptr %struct.fsa_dev_info, ptr %3, i32 %33, i32 10
  %40 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %deleted.i, align 2
  %conv43.i = zext i8 %41 to i32
  %deleted44.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 6
  %42 = ptrtoint ptr %deleted44.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv43.i, ptr %deleted44.i, align 4
  %devname.i = getelementptr %struct.fsa_dev_info, ptr %3, i32 %33, i32 11
  %43 = ptrtoint ptr %devname.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %devname.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp49.i = icmp eq i8 %44, 0
  %spec.select89.i = zext i1 %cmp49.i to i32
  %45 = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 9
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select89.i, ptr %45, align 4
  %name.i = getelementptr inbounds %struct.aac_query_disk, ptr %qd.i, i32 0, i32 8
  %call59.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %devname.i, i32 noundef 9) #15
  call void @__might_fault(ptr noundef nonnull @.str.102, i32 noundef 174) #15
  %call.i.i77.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i77.i, label %if.end32.i.query_disk.exit_crit_edge, label %copy_to_user.exit.i

if.end32.i.query_disk.exit_crit_edge:             ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %query_disk.exit

copy_to_user.exit.i:                              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i80.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %qd.i, i32 noundef 48) #15
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %qd.i, i32 noundef 48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool61.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool61.not.i, i32 0, i32 -14
  br label %query_disk.exit

query_disk.exit:                                  ; preds = %copy_to_user.exit.i, %if.end32.i.query_disk.exit_crit_edge, %lor.lhs.false20.i.query_disk.exit_crit_edge, %land.lhs.true15.i.query_disk.exit_crit_edge, %land.lhs.true.i.query_disk.exit_crit_edge, %if.else.i.query_disk.exit_crit_edge, %lor.lhs.false.i.query_disk.exit_crit_edge, %if.then4.i.query_disk.exit_crit_edge, %if.then11.i.i.i, %sw.bb.query_disk.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %sw.bb.query_disk.exit_crit_edge ], [ -22, %lor.lhs.false.i.query_disk.exit_crit_edge ], [ -22, %if.then4.i.query_disk.exit_crit_edge ], [ -22, %lor.lhs.false20.i.query_disk.exit_crit_edge ], [ -22, %land.lhs.true15.i.query_disk.exit_crit_edge ], [ -22, %land.lhs.true.i.query_disk.exit_crit_edge ], [ -22, %if.else.i.query_disk.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end32.i.query_disk.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %qd.i) #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dd.i) #15
  %47 = ptrtoint ptr %dd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %dd.i, align 4, !annotation !377
  %48 = getelementptr inbounds %struct.aac_delete_disk, ptr %dd.i, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 4, !annotation !377
  %fsa_dev.i12 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %50 = ptrtoint ptr %fsa_dev.i12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fsa_dev.i12, align 8
  %tobool.not.i13 = icmp eq ptr %51, null
  br i1 %tobool.not.i13, label %sw.bb1.delete_disk.exit_crit_edge, label %if.end59.i.i.i15

sw.bb1.delete_disk.exit_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %delete_disk.exit

if.end59.i.i.i15:                                 ; preds = %sw.bb1
  tail call void @__might_fault(ptr noundef nonnull @.str.102, i32 noundef 156) #15
  %call.i.i.i14 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i14, label %if.end59.i.i.i15.if.then11.i.i.i29_crit_edge, label %land.lhs.true.i.i.i18

if.end59.i.i.i15.if.then11.i.i.i29_crit_edge:     ; preds = %if.end59.i.i.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i29

land.lhs.true.i.i.i18:                            ; preds = %if.end59.i.i.i15
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #22, !srcloc !378
  %asmresult.i.i.i16 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i16)
  %cmp.i6.i.i17 = icmp eq i32 %asmresult.i.i.i16, 0
  br i1 %cmp.i6.i.i17, label %if.end.i.i.i26, label %land.lhs.true.i.i.i18.if.then11.i.i.i29_crit_edge, !prof !373

land.lhs.true.i.i.i18.if.then11.i.i.i29_crit_edge: ; preds = %land.lhs.true.i.i.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i29

if.end.i.i.i26:                                   ; preds = %land.lhs.true.i.i.i18
  %call.i.i.i.i19 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dd.i, i32 noundef 8) #15
  %53 = call i32 @llvm.read_register.i32(metadata !353) #15
  %and.i.i.i.i.i.i.i20 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i20 to ptr
  %cpu_domain.i.i.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i21) #13, !srcloc !374
  %and.i.i.i.i.i22 = and i32 %55, -13
  %or.i.i.i.i.i23 = or i32 %and.i.i.i.i.i22, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i23) #15, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %call1.i.i.i.i24 = call i32 @arm_copy_from_user(ptr noundef nonnull %dd.i, ptr noundef %arg, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #15, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i24)
  %tobool4.not.i.i.i25 = icmp eq i32 %call1.i.i.i.i24, 0
  br i1 %tobool4.not.i.i.i25, label %if.end3.i31, label %if.end.i.i.i26.if.then11.i.i.i29_crit_edge, !prof !373

if.end.i.i.i26.if.then11.i.i.i29_crit_edge:       ; preds = %if.end.i.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i29

if.then11.i.i.i29:                                ; preds = %if.end.i.i.i26.if.then11.i.i.i29_crit_edge, %land.lhs.true.i.i.i18.if.then11.i.i.i29_crit_edge, %if.end59.i.i.i15.if.then11.i.i.i29_crit_edge
  %res.0.i.i22.i = phi i32 [ %call1.i.i.i.i24, %if.end.i.i.i26.if.then11.i.i.i29_crit_edge ], [ 8, %if.end59.i.i.i15.if.then11.i.i.i29_crit_edge ], [ 8, %land.lhs.true.i.i.i18.if.then11.i.i.i29_crit_edge ]
  %sub.i.i.i27 = sub i32 8, %res.0.i.i22.i
  %add.ptr.i.i.i28 = getelementptr i8, ptr %dd.i, i32 %sub.i.i.i27
  %56 = call ptr @memset(ptr %add.ptr.i.i.i28, i32 0, i32 %res.0.i.i22.i)
  br label %delete_disk.exit

if.end3.i31:                                      ; preds = %if.end.i.i.i26
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %48, align 4
  %maximum_num_containers.i30 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %59 = ptrtoint ptr %maximum_num_containers.i30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maximum_num_containers.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.not.i = icmp ult i32 %58, %60
  br i1 %cmp.not.i, label %if.end5.i, label %if.end3.i31.delete_disk.exit_crit_edge

if.end3.i31.delete_disk.exit_crit_edge:           ; preds = %if.end3.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %delete_disk.exit

if.end5.i:                                        ; preds = %if.end3.i31
  %locked.i32 = getelementptr %struct.fsa_dev_info, ptr %51, i32 %58, i32 9
  %61 = ptrtoint ptr %locked.i32 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %locked.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool7.not.i = icmp eq i8 %62, 0
  br i1 %tobool7.not.i, label %if.else.i35, label %if.end5.i.delete_disk.exit_crit_edge

if.end5.i.delete_disk.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %delete_disk.exit

if.else.i35:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %valid.i33 = getelementptr %struct.fsa_dev_info, ptr %51, i32 %58, i32 7
  %63 = ptrtoint ptr %valid.i33 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %valid.i33, align 1
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %48, align 4
  %devname.i34 = getelementptr %struct.fsa_dev_info, ptr %51, i32 %65, i32 11
  %66 = ptrtoint ptr %devname.i34 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %devname.i34, align 1
  br label %delete_disk.exit

delete_disk.exit:                                 ; preds = %if.else.i35, %if.end5.i.delete_disk.exit_crit_edge, %if.end3.i31.delete_disk.exit_crit_edge, %if.then11.i.i.i29, %sw.bb1.delete_disk.exit_crit_edge
  %retval.0.i36 = phi i32 [ 0, %if.else.i35 ], [ -16, %sw.bb1.delete_disk.exit_crit_edge ], [ -22, %if.end3.i31.delete_disk.exit_crit_edge ], [ -16, %if.end5.i.delete_disk.exit_crit_edge ], [ -14, %if.then11.i.i.i29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dd.i) #15
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dd.i37) #15
  %67 = ptrtoint ptr %dd.i37 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %dd.i37, align 4, !annotation !377
  %68 = getelementptr inbounds %struct.aac_delete_disk, ptr %dd.i37, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %68, align 4, !annotation !377
  %fsa_dev.i38 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %70 = ptrtoint ptr %fsa_dev.i38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fsa_dev.i38, align 8
  %tobool.not.i39 = icmp eq ptr %71, null
  br i1 %tobool.not.i39, label %sw.bb3.force_delete_disk.exit_crit_edge, label %if.end59.i.i.i41

sw.bb3.force_delete_disk.exit_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %force_delete_disk.exit

if.end59.i.i.i41:                                 ; preds = %sw.bb3
  tail call void @__might_fault(ptr noundef nonnull @.str.102, i32 noundef 156) #15
  %call.i.i.i40 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i40, label %if.end59.i.i.i41.if.then11.i.i.i55_crit_edge, label %land.lhs.true.i.i.i44

if.end59.i.i.i41.if.then11.i.i.i55_crit_edge:     ; preds = %if.end59.i.i.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i55

land.lhs.true.i.i.i44:                            ; preds = %if.end59.i.i.i41
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #22, !srcloc !378
  %asmresult.i.i.i42 = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i42)
  %cmp.i6.i.i43 = icmp eq i32 %asmresult.i.i.i42, 0
  br i1 %cmp.i6.i.i43, label %if.end.i.i.i52, label %land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge, !prof !373

land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge: ; preds = %land.lhs.true.i.i.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i55

if.end.i.i.i52:                                   ; preds = %land.lhs.true.i.i.i44
  %call.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dd.i37, i32 noundef 8) #15
  %73 = call i32 @llvm.read_register.i32(metadata !353) #15
  %and.i.i.i.i.i.i.i46 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i.i46 to ptr
  %cpu_domain.i.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i47) #13, !srcloc !374
  %and.i.i.i.i.i48 = and i32 %75, -13
  %or.i.i.i.i.i49 = or i32 %and.i.i.i.i.i48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i49) #15, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %call1.i.i.i.i50 = call i32 @arm_copy_from_user(ptr noundef nonnull %dd.i37, ptr noundef %arg, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #15, !srcloc !375
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i50)
  %tobool4.not.i.i.i51 = icmp eq i32 %call1.i.i.i.i50, 0
  br i1 %tobool4.not.i.i.i51, label %if.end3.i58, label %if.end.i.i.i52.if.then11.i.i.i55_crit_edge, !prof !373

if.end.i.i.i52.if.then11.i.i.i55_crit_edge:       ; preds = %if.end.i.i.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i55

if.then11.i.i.i55:                                ; preds = %if.end.i.i.i52.if.then11.i.i.i55_crit_edge, %land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge, %if.end59.i.i.i41.if.then11.i.i.i55_crit_edge
  %res.0.i.i16.i = phi i32 [ %call1.i.i.i.i50, %if.end.i.i.i52.if.then11.i.i.i55_crit_edge ], [ 8, %if.end59.i.i.i41.if.then11.i.i.i55_crit_edge ], [ 8, %land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge ]
  %sub.i.i.i53 = sub i32 8, %res.0.i.i16.i
  %add.ptr.i.i.i54 = getelementptr i8, ptr %dd.i37, i32 %sub.i.i.i53
  %76 = call ptr @memset(ptr %add.ptr.i.i.i54, i32 0, i32 %res.0.i.i16.i)
  br label %force_delete_disk.exit

if.end3.i58:                                      ; preds = %if.end.i.i.i52
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %68, align 4
  %maximum_num_containers.i56 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %79 = ptrtoint ptr %maximum_num_containers.i56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %maximum_num_containers.i56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp.not.i57 = icmp ult i32 %78, %80
  br i1 %cmp.not.i57, label %if.end5.i61, label %if.end3.i58.force_delete_disk.exit_crit_edge

if.end3.i58.force_delete_disk.exit_crit_edge:     ; preds = %if.end3.i58
  call void @__sanitizer_cov_trace_pc() #17
  br label %force_delete_disk.exit

if.end5.i61:                                      ; preds = %if.end3.i58
  call void @__sanitizer_cov_trace_pc() #17
  %deleted.i59 = getelementptr %struct.fsa_dev_info, ptr %71, i32 %78, i32 10
  %81 = ptrtoint ptr %deleted.i59 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %deleted.i59, align 2
  %82 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %68, align 4
  %valid.i60 = getelementptr %struct.fsa_dev_info, ptr %71, i32 %83, i32 7
  %84 = ptrtoint ptr %valid.i60 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %valid.i60, align 1
  br label %force_delete_disk.exit

force_delete_disk.exit:                           ; preds = %if.end5.i61, %if.end3.i58.force_delete_disk.exit_crit_edge, %if.then11.i.i.i55, %sw.bb3.force_delete_disk.exit_crit_edge
  %retval.0.i62 = phi i32 [ 0, %if.end5.i61 ], [ -16, %sw.bb3.force_delete_disk.exit_crit_edge ], [ -22, %if.end3.i58.force_delete_disk.exit_crit_edge ], [ -14, %if.then11.i.i.i55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dd.i37) #15
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 @aac_get_containers(ptr noundef %dev)
  br label %return

return:                                           ; preds = %sw.bb5, %force_delete_disk.exit, %delete_disk.exit, %query_disk.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.bb5 ], [ %retval.0.i62, %force_delete_disk.exit ], [ %retval.0.i36, %delete_disk.exit ], [ %retval.0.i, %query_disk.exit ], [ -25, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_hba_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %4, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %if.end, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.end, label %if.end.if.end15_crit_edge, !prof !363

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3660, i32 noundef 9, ptr noundef null) #15
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %dev22 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %5 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev22, align 4
  %flags = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then24, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_dma_unmap(ptr noundef nonnull %context) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end15.if.end25_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and27 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %result, align 4
  br label %out

if.end30:                                         ; preds = %if.end25
  %service_response = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %service_response to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %service_response, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %13, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb31
    i8 4, label %sw.bb32
    i8 5, label %sw.bb34
    i8 2, label %if.end30.sw.bb36_crit_edge
    i8 3, label %if.end30.sw.bb36_crit_edge79
  ]

if.end30.sw.bb36_crit_edge79:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb36

if.end30.sw.bb36_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb36

sw.bb:                                            ; preds = %if.end30
  %status.i = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status.i, align 1
  %conv.i = zext i8 %16 to i32
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %17 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %result.i, align 4
  %residual_count.i = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 8
  %18 = ptrtoint ptr %residual_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %residual_count.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %context, i32 0, i32 5
  %21 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %resid_len.i.i, align 4
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %23, label %sw.default.i [
    i8 0, label %sw.bb.out_crit_edge
    i8 2, label %sw.bb4.i
    i8 8, label %sw.bb12.i
    i8 64, label %sw.bb15.i
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb4.i:                                         ; preds = %sw.bb
  %sense_response_data_len.i = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 7
  %25 = ptrtoint ptr %sense_response_data_len.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sense_response_data_len.i, align 1
  %27 = tail call i8 @llvm.umin.i8(i8 %26, i8 96) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i68 = icmp eq i8 %27, 0
  br i1 %tobool.not.i68, label %sw.bb4.i.out_crit_edge, label %if.then.i

sw.bb4.i.out_crit_edge:                           ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #17
  %cond.i = zext i8 %27 to i32
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 21
  %28 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sense_buffer.i, align 4
  %sense_response_buf.i = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 9
  %30 = call ptr @memcpy(ptr %29, ptr %sense_response_buf.i, i32 %cond.i)
  br label %out

sw.bb12.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %or14.i = or i32 %conv.i, 131072
  %31 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or14.i, ptr %result.i, align 4
  br label %out

sw.bb15.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %or17.i = or i32 %conv.i, 327680
  %32 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or17.i, ptr %result.i, align 4
  br label %out

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %or20.i = or i32 %conv.i, 458752
  %33 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or20.i, ptr %result.i, align 4
  br label %out

sw.bb31:                                          ; preds = %if.end30
  %status.i69 = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %status.i69 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %status.i69, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %35, label %sw.default.i72 [
    i8 14, label %sw.bb.i
    i8 1, label %sw.bb31.hba_resp_task_failure.exit_crit_edge
    i8 3, label %sw.bb31.hba_resp_task_failure.exit_crit_edge80
    i8 2, label %sw.bb17.i
    i8 4, label %sw.bb19.i
    i8 81, label %sw.bb21.i
  ]

sw.bb31.hba_resp_task_failure.exit_crit_edge80:   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

sw.bb31.hba_resp_task_failure.exit_crit_edge:     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

sw.bb.i:                                          ; preds = %sw.bb31
  %37 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device4.i, align 4
  %channel.i.i = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i70 = icmp eq i32 %40, 0
  %sub.i = add i32 %40, -1
  %spec.select.i = select i1 %tobool.not.i70, i32 0, i32 %sub.i
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 16
  %41 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i.i, align 8
  %devtype.i = getelementptr %struct.aac_dev, ptr %6, i32 0, i32 81, i32 %spec.select.i, i32 %42, i32 1
  %43 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp.i = icmp eq i8 %44, 3
  br i1 %cmp.i, label %if.then.i71, label %sw.bb.i.hba_resp_task_failure.exit_crit_edge

sw.bb.i.hba_resp_task_failure.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

if.then.i71:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx5.i = getelementptr %struct.aac_dev, ptr %6, i32 0, i32 81, i32 %spec.select.i, i32 %42
  %45 = ptrtoint ptr %devtype.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %devtype.i, align 4
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %arrayidx5.i, align 4
  br label %hba_resp_task_failure.exit

sw.bb17.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

sw.bb19.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

sw.bb21.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

sw.default.i72:                                   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %hba_resp_task_failure.exit

hba_resp_task_failure.exit:                       ; preds = %sw.default.i72, %sw.bb21.i, %sw.bb19.i, %sw.bb17.i, %if.then.i71, %sw.bb.i.hba_resp_task_failure.exit_crit_edge, %sw.bb31.hba_resp_task_failure.exit_crit_edge, %sw.bb31.hba_resp_task_failure.exit_crit_edge80
  %.sink.i = phi i32 [ 458752, %sw.default.i72 ], [ 0, %sw.bb21.i ], [ 65536, %sw.bb19.i ], [ 327680, %sw.bb17.i ], [ 65536, %if.then.i71 ], [ 65536, %sw.bb.i.hba_resp_task_failure.exit_crit_edge ], [ 8, %sw.bb31.hba_resp_task_failure.exit_crit_edge ], [ 8, %sw.bb31.hba_resp_task_failure.exit_crit_edge80 ]
  %result24.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %47 = ptrtoint ptr %result24.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink.i, ptr %result24.i, align 4
  br label %out

sw.bb32:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %result33 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %48 = ptrtoint ptr %result33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 458752, ptr %result33, align 4
  br label %out

sw.bb34:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %result35 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %49 = ptrtoint ptr %result35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 65536, ptr %result35, align 4
  br label %out

sw.bb36:                                          ; preds = %if.end30.sw.bb36_crit_edge, %if.end30.sw.bb36_crit_edge79
  %result37 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %50 = ptrtoint ptr %result37 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %result37, align 4
  br label %out

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %result38 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %51 = ptrtoint ptr %result38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 458752, ptr %result38, align 4
  br label %out

out:                                              ; preds = %sw.default, %sw.bb36, %sw.bb34, %sw.bb32, %hba_resp_task_failure.exit, %sw.default.i, %sw.bb15.i, %sw.bb12.i, %if.then.i, %sw.bb4.i.out_crit_edge, %sw.bb.out_crit_edge, %if.then29
  %call39 = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and41 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 8
  %54 = ptrtoint ptr %sent_command to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1, ptr %sent_command, align 4
  br label %cleanup

if.else:                                          ; preds = %out
  %55 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i74 = icmp eq ptr %58, null
  br i1 %tobool.not.i74, label %if.else.i, label %if.then.i75

if.then.i75:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i75, %if.then43, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_aac_probe_container1(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %options.i = getelementptr inbounds %struct.aac_dev, ptr %3, i32 0, i32 51, i32 19
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options.i, align 4
  %and.i = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %entry
  %capacityhigh = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 100
  %6 = ptrtoint ptr %capacityhigh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %capacityhigh, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %vol = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 52
  %9 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not = icmp eq i32 %10, 0
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_aac_probe_container2(ptr noundef %context, ptr noundef %fibptr)
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %if.end6.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

if.end6.aac_valid_context.exit.thread_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %if.end6
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %11 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %12 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %if.end10, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %if.end6.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  tail call void @aac_fib_init(ptr noundef %fibptr) #15
  %14 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_fib_va, align 4
  %data12 = getelementptr inbounds %struct.hw_fib, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %supported_options2 = getelementptr inbounds %struct.aac_dev, ptr %17, i32 0, i32 52, i32 19
  %18 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %supported_options2, align 8
  %and = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %. = select i1 %tobool15.not, i32 369098752, i32 503316480
  %20 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %., ptr %data12, align 4
  %21 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device4.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %count = getelementptr inbounds %struct.hw_fib, ptr %15, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %count, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %15, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 134217728, ptr %type, align 4
  %28 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 262, ptr %phase.i, align 4
  %call20 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef %fibptr, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_aac_probe_container2, ptr noundef nonnull %context) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call20)
  %cmp23.not = icmp eq i32 %call20, -115
  %or.cond = or i1 %cmp21, %cmp23.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.then24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %data, align 4
  tail call void @_aac_probe_container2(ptr noundef nonnull %context, ptr noundef %fibptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end10.cleanup_crit_edge, %aac_valid_context.exit.thread, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_aac_probe_container2(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %if.end, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 5
  %3 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %Status, align 4
  %dev = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsa_dev, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end76_crit_edge, label %if.then2

if.end.if.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then2:                                         ; preds = %if.end
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %8 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device4.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  %supported_options2 = getelementptr inbounds %struct.aac_dev, ptr %5, i32 0, i32 52, i32 19
  %14 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %supported_options2, align 8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.then2.if.end65_crit_edge

if.then2.if.end65_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

land.lhs.true:                                    ; preds = %if.then2
  %vol = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 52
  %18 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5.not = icmp eq i32 %19, 0
  br i1 %cmp5.not, label %land.lhs.true.if.end65_crit_edge, label %land.lhs.true6

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

land.lhs.true6:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 60
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %21)
  %cmp9.not = icmp eq i32 %21, 67108864
  br i1 %cmp9.not, label %land.lhs.true6.if.end65_crit_edge, label %if.then10

land.lhs.true6.if.end65_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then10:                                        ; preds = %land.lhs.true6
  %and = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %fileinfo = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 64
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %fileinfo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 512, ptr %fileinfo, align 4
  br label %if.end21

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %fileinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fileinfo, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %.sink = phi i32 [ 512, %if.then12 ], [ %25, %if.else ]
  %26 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %26, align 8
  %identifier = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 72
  %28 = ptrtoint ptr %identifier to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %identifier, align 1
  %arrayidx28 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 0
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx28, align 1
  %arrayidx26.1 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 73
  %31 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx26.1, align 1
  %arrayidx28.1 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 1
  %33 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx28.1, align 1
  %arrayidx26.2 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 74
  %34 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx26.2, align 1
  %arrayidx28.2 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 2
  %36 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx28.2, align 1
  %arrayidx26.3 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 75
  %37 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx26.3, align 1
  %arrayidx28.3 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 3
  %39 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx28.3, align 1
  %arrayidx26.4 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 76
  %40 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx26.4, align 1
  %arrayidx28.4 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 4
  %42 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx28.4, align 1
  %arrayidx26.5 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 77
  %43 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx26.5, align 1
  %arrayidx28.5 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 5
  %45 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx28.5, align 1
  %arrayidx26.6 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 78
  %46 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx26.6, align 1
  %arrayidx28.6 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 6
  %48 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx28.6, align 1
  %arrayidx26.7 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 79
  %49 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx26.7, align 1
  %arrayidx28.7 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 7
  %51 = ptrtoint ptr %arrayidx28.7 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx28.7, align 1
  %arrayidx26.8 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 80
  %52 = ptrtoint ptr %arrayidx26.8 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx26.8, align 1
  %arrayidx28.8 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 8
  %54 = ptrtoint ptr %arrayidx28.8 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx28.8, align 1
  %arrayidx26.9 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 81
  %55 = ptrtoint ptr %arrayidx26.9 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx26.9, align 1
  %arrayidx28.9 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 9
  %57 = ptrtoint ptr %arrayidx28.9 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx28.9, align 1
  %arrayidx26.10 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 82
  %58 = ptrtoint ptr %arrayidx26.10 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx26.10, align 1
  %arrayidx28.10 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 10
  %60 = ptrtoint ptr %arrayidx28.10 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx28.10, align 1
  %arrayidx26.11 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 83
  %61 = ptrtoint ptr %arrayidx26.11 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx26.11, align 1
  %arrayidx28.11 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 11
  %63 = ptrtoint ptr %arrayidx28.11 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx28.11, align 1
  %arrayidx26.12 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 84
  %64 = ptrtoint ptr %arrayidx26.12 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx26.12, align 1
  %arrayidx28.12 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 12
  %66 = ptrtoint ptr %arrayidx28.12 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx28.12, align 1
  %arrayidx26.13 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 85
  %67 = ptrtoint ptr %arrayidx26.13 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx26.13, align 1
  %arrayidx28.13 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 13
  %69 = ptrtoint ptr %arrayidx28.13 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx28.13, align 1
  %arrayidx26.14 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 86
  %70 = ptrtoint ptr %arrayidx26.14 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx26.14, align 1
  %arrayidx28.14 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 14
  %72 = ptrtoint ptr %arrayidx28.14 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx28.14, align 1
  %arrayidx26.15 = getelementptr %struct.hw_fib, ptr %9, i32 0, i32 1, i32 87
  %73 = ptrtoint ptr %arrayidx26.15 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx26.15, align 1
  %arrayidx28.15 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 14, i32 15
  %75 = ptrtoint ptr %arrayidx28.15 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx28.15, align 1
  %valid = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 7
  %76 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %valid, align 1
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state, align 4
  %and32 = and i32 %78, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %sense_key37 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 12, i32 3
  %79 = ptrtoint ptr %sense_key37 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load38 = load i8, ptr %sense_key37, align 1
  br i1 %tobool33.not, label %if.else35, label %if.then34

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear = and i8 %bf.load38, 15
  %bf.set = or i8 %bf.clear, 32
  br label %if.end48.sink.split

if.else35:                                        ; preds = %if.end21
  %bf.lshr.mask = and i8 %bf.load38, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask)
  %cmp39 = icmp eq i8 %bf.lshr.mask, 32
  br i1 %cmp39, label %if.then41, label %if.else35.if.end48_crit_edge

if.else35.if.end48_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then41:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear45 = and i8 %bf.load38, 15
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.then41, %if.then34
  %bf.clear45.sink = phi i8 [ %bf.clear45, %if.then41 ], [ %bf.set, %if.then34 ]
  %80 = ptrtoint ptr %sense_key37 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %bf.clear45.sink, ptr %sense_key37, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else35.if.end48_crit_edge
  %81 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vol, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %type = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 2
  %84 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %type, align 8
  %capacity = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 48
  %85 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %capacity, align 4
  %capacityhigh = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 100
  %87 = ptrtoint ptr %capacityhigh to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %capacityhigh, align 4
  %89 = zext i32 %88 to i64
  %90 = zext i32 %86 to i64
  %91 = shl nuw i64 %90, 32
  %92 = or i64 %91, %89
  %93 = tail call i64 @llvm.bswap.i64(i64 %92)
  %size = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 1
  %94 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %size, align 8
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state, align 4
  %97 = lshr i32 %96, 25
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %ro = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 8
  %100 = ptrtoint ptr %ro to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %ro, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end48, %land.lhs.true6.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %if.then2.if.end65_crit_edge
  %valid66 = getelementptr %struct.fsa_dev_info, ptr %7, i32 %13, i32 7
  %101 = ptrtoint ptr %valid66 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %valid66, align 1
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp69 = icmp eq i8 %103, 0
  br i1 %cmp69, label %if.then71, label %if.end65.if.end73_crit_edge

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %valid66 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %valid66, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end65.if.end73_crit_edge
  %count = getelementptr inbounds %struct.hw_fib, ptr %9, i32 0, i32 1, i32 8
  %105 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %108 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %107, ptr %Status, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end73, %if.end.if.end76_crit_edge
  %call77 = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  tail call void @aac_fib_free(ptr noundef %fibptr) #15
  %109 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %SCp, align 4
  store ptr null, ptr %SCp, align 4
  %call81 = tail call i32 %110(ptr noundef nonnull %context) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_send_safw_bmic_cmd(ptr noundef %dev, ptr nocapture noundef %srbu, ptr noundef %xfer_buf, i32 noundef %xfer_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %0 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @aac_fib_alloc(ptr noundef %dev) #15
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @aac_fib_init(ptr noundef nonnull %call) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_fib_va, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, -2049
  store i32 %and, ptr %3, align 4
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %xfer_buf) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end3
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !373

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %xfer_buf, i32 noundef %xfer_len) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %xfer_buf to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %xfer_len, i32 noundef 0, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev7, i32 noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.fib_error_crit_edge, label %if.end11

dma_map_single_attrs.exit.fib_error_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fib_error

if.end11:                                         ; preds = %dma_map_single_attrs.exit
  %16 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %data, ptr %srbu, i32 64)
  %virt_device_bus = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 36
  %19 = ptrtoint ptr %virt_device_bus to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %virt_device_bus, align 8
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %virt_device_target = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 37
  %22 = ptrtoint ptr %virt_device_target to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %virt_device_target, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv15 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %channel = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %channel, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv15)
  %id = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %id, align 4
  %lun = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 12
  %29 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lun, align 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %data, align 4
  %timeout = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 16
  %31 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %timeout, align 4
  %retry_limit = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 28
  %32 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %retry_limit, align 4
  %cdb_size = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 32
  %33 = ptrtoint ptr %cdb_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 268435456, ptr %cdb_size, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %xfer_len)
  %count = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 24
  %35 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %count, align 4
  %sg = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 52
  %36 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %sg, align 4
  %sg18 = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 56
  %arrayidx20 = getelementptr %struct.hw_fib, ptr %17, i32 0, i32 1, i32 60
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx20, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %39 = ptrtoint ptr %sg18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sg18, align 4
  %count28 = getelementptr inbounds %struct.hw_fib, ptr %17, i32 0, i32 1, i32 64
  %40 = ptrtoint ptr %count28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %34, ptr %count28, align 4
  %41 = call ptr @memcpy(ptr %srbu, ptr %data, i32 64)
  %call30 = tail call i32 @aac_fib_send(i16 noundef zeroext 601, ptr noundef nonnull %call, i32 noundef 68, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call30)
  %cmp = icmp eq i32 %call30, -512
  %spec.store.select = select i1 %cmp, i32 -85, i32 %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp34 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp34, label %if.end11.bmic_error_crit_edge, label %if.end39, !prof !363

if.end11.bmic_error_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %bmic_error

if.end39:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_fib_va, align 4
  %data41 = getelementptr inbounds %struct.hw_fib, ptr %43, i32 0, i32 1
  %srb_reply43 = getelementptr inbounds %struct.aac_srb_unit, ptr %srbu, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %srb_reply43, ptr %data41, i32 52)
  br label %bmic_error

bmic_error:                                       ; preds = %if.end39, %if.end11.bmic_error_crit_edge
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev45, i32 noundef %retval.0.i, i32 noundef %xfer_len, i32 noundef 0, i32 noundef 0) #15
  br label %fib_error

fib_error:                                        ; preds = %bmic_error, %dma_map_single_attrs.exit.fib_error_crit_edge
  %rcode.0 = phi i32 [ %spec.store.select, %bmic_error ], [ -12, %dma_map_single_attrs.exit.fib_error_crit_edge ]
  %call46 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %fib_error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rcode.0, %fib_error ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_build_sg64(ptr noundef %scsicmd, ptr nocapture noundef %psg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psg, i32 0, i32 16)
  %call = tail call i32 @scsi_dma_map(ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %1 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %byte_count.095 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.093 = phi ptr [ %call27, %for.body.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.093, i32 0, i32 4
  %3 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.093, i32 0, i32 3
  %5 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_address, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %arrayidx16 = getelementptr %struct.sgmap64, ptr %psg, i32 0, i32 1, i32 %i.094
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx16, align 4
  %arrayidx23 = getelementptr [2 x i32], ptr %arrayidx16, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx23, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %4)
  %count26 = getelementptr %struct.sgmap64, ptr %psg, i32 0, i32 1, i32 %i.094, i32 1
  %11 = ptrtoint ptr %count26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %count26, align 4
  %add = add i32 %4, %byte_count.095
  %inc = add nuw nsw i32 %i.094, 1
  %call27 = tail call ptr @sg_next(ptr noundef %sg.093) #15
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %12 = tail call i32 @llvm.bswap.i32(i32 %call)
  %13 = ptrtoint ptr %psg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %psg, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp30 = icmp ult i32 %15, %add
  br i1 %cmp30, label %if.then32, label %for.end.if.end44_crit_edge

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add nsw i32 %call, -1
  %count35 = getelementptr %struct.sgmap64, ptr %psg, i32 0, i32 1, i32 %sub, i32 1
  %16 = ptrtoint ptr %count35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count35, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %sub37.neg = sub i32 %15, %add
  %sub38 = add i32 %sub37.neg, %18
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub38)
  %20 = ptrtoint ptr %count35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count35, align 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %for.end.if.end44_crit_edge
  %byte_count.1 = phi i32 [ %22, %if.then32 ], [ %add, %for.end.if.end44_crit_edge ]
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 19
  %23 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.1, i32 %24)
  %cmp46 = icmp ult i32 %byte_count.1, %24
  %or.cond = select i1 %tobool.not, i1 %cmp46, i1 false
  br i1 %or.cond, label %do.end, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %byte_count.1, i32 noundef %24) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %byte_count.1, %do.end ], [ %byte_count.1, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_srb_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  %inq_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %do.body, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body4, label %do.end10, !prof !363

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3383, 0\0A.popsection", ""() #15, !srcloc !379
  unreachable

do.end10:                                         ; preds = %do.body
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %3 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 21
  %5 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sense_buffer, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  %flags = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %srb_status = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %srb_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16777216, ptr %srb_status, align 4
  %scsi_status = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %scsi_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %scsi_status, align 4
  br label %if.end14

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %data_xfer_length = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %data_xfer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_xfer_length, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sub = sub i32 %13, %16
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %context, i32 0, i32 5
  %17 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  tail call void @scsi_dma_unmap(ptr noundef nonnull %context) #15
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 16
  %18 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmnd, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %21)
  %cmp16 = icmp eq i8 %21, 18
  br i1 %cmp16, label %land.lhs.true, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end14
  %arrayidx19 = getelementptr i8, ptr %19, i32 1
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp eq i8 %24, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

land.lhs.true23:                                  ; preds = %land.lhs.true
  %25 = load i32, ptr @expose_physicals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp24 = icmp sgt i32 %25, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true23.if.end27_crit_edge

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inq_data.i) #15
  %26 = ptrtoint ptr %inq_data.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %inq_data.i, align 1, !annotation !377
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17
  %27 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdb.i.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17, i32 0, i32 1
  %29 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents.i.i.i, align 4
  %call2.i.i = call i32 @sg_copy_to_buffer(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %inq_data.i, i32 noundef 1) #15
  %31 = ptrtoint ptr %inq_data.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %inq_data.i, align 1
  %33 = and i8 %32, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %33)
  %34 = icmp eq i8 %33, 32
  br i1 %34, label %if.then.i, label %if.then26.aac_expose_phy_device.exit_crit_edge

if.then26.aac_expose_phy_device.exit_crit_edge:   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_expose_phy_device.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %and5.i = and i8 %32, -33
  %35 = ptrtoint ptr %inq_data.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %and5.i, ptr %inq_data.i, align 1
  %36 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdb.i.i.i, align 4
  %38 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents.i.i.i, align 4
  %call2.i11.i = call i32 @sg_copy_from_buffer(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %inq_data.i, i32 noundef 1) #15
  br label %aac_expose_phy_device.exit

aac_expose_phy_device.exit:                       ; preds = %if.then.i, %if.then26.aac_expose_phy_device.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inq_data.i) #15
  br label %if.end27

if.end27:                                         ; preds = %aac_expose_phy_device.exit, %land.lhs.true23.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp28.not = icmp eq i32 %41, 0
  br i1 %cmp28.not, label %if.end27.if.end41_crit_edge, label %if.then30

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %42) #18
  %sense_data_size = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 16
  %43 = ptrtoint ptr %sense_data_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sense_data_size, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 96)
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %47 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 458754, ptr %result, align 4
  %48 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sense_buffer, align 4
  %sense_data = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 20
  %50 = call ptr @memcpy(ptr %49, ptr %sense_data, i32 %46)
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %if.end27.if.end41_crit_edge
  %srb_status42 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 4
  %51 = ptrtoint ptr %srb_status42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %srb_status42, align 4
  %53 = lshr i32 %52, 24
  %and43 = and i32 %53, 63
  %54 = zext i32 %and43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %and43, label %sw.default87 [
    i32 35, label %if.end41.sw.bb_crit_edge
    i32 0, label %if.end41.sw.bb_crit_edge198
    i32 1, label %if.end41.sw.bb_crit_edge199
    i32 18, label %sw.bb45
    i32 2, label %sw.bb70
    i32 3, label %sw.bb72
    i32 15, label %sw.bb74
    i32 8, label %if.end41.sw.bb76_crit_edge
    i32 7, label %if.end41.sw.bb76_crit_edge200
    i32 33, label %if.end41.sw.bb76_crit_edge201
    i32 32, label %if.end41.sw.bb76_crit_edge202
    i32 10, label %if.end41.sw.bb76_crit_edge203
    i32 11, label %if.end41.sw.bb78_crit_edge
    i32 9, label %if.end41.sw.bb78_crit_edge204
    i32 5, label %sw.bb80
    i32 14, label %sw.bb82
    i32 13, label %sw.bb84
  ]

if.end41.sw.bb78_crit_edge204:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb78

if.end41.sw.bb78_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb78

if.end41.sw.bb76_crit_edge203:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

if.end41.sw.bb76_crit_edge202:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

if.end41.sw.bb76_crit_edge201:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

if.end41.sw.bb76_crit_edge200:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

if.end41.sw.bb76_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

if.end41.sw.bb_crit_edge199:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end41.sw.bb_crit_edge198:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end41.sw.bb_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %if.end41.sw.bb_crit_edge, %if.end41.sw.bb_crit_edge198, %if.end41.sw.bb_crit_edge199
  %result44 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %55 = ptrtoint ptr %result44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %result44, align 4
  br label %sw.epilog112

sw.bb45:                                          ; preds = %if.end41
  %56 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmnd, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %59, label %sw.default [
    i8 8, label %sw.bb45.sw.bb49_crit_edge
    i8 10, label %sw.bb45.sw.bb49_crit_edge205
    i8 40, label %sw.bb45.sw.bb49_crit_edge206
    i8 42, label %sw.bb45.sw.bb49_crit_edge207
    i8 -88, label %sw.bb45.sw.bb49_crit_edge208
    i8 -86, label %sw.bb45.sw.bb49_crit_edge209
    i8 -120, label %sw.bb45.sw.bb49_crit_edge210
    i8 -118, label %sw.bb45.sw.bb49_crit_edge211
    i8 18, label %sw.bb67
  ]

sw.bb45.sw.bb49_crit_edge211:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge210:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge209:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge208:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge207:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge206:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge205:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb45.sw.bb49_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb45.sw.bb49_crit_edge, %sw.bb45.sw.bb49_crit_edge205, %sw.bb45.sw.bb49_crit_edge206, %sw.bb45.sw.bb49_crit_edge207, %sw.bb45.sw.bb49_crit_edge208, %sw.bb45.sw.bb49_crit_edge209, %sw.bb45.sw.bb49_crit_edge210, %sw.bb45.sw.bb49_crit_edge211
  %data_xfer_length50 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 12
  %61 = ptrtoint ptr %data_xfer_length50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_xfer_length50, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 19
  %64 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp51 = icmp ult i32 %63, %65
  %.str.73..str.76 = select i1 %cmp51, ptr @.str.73, ptr @.str.76
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.73..str.76) #18
  %result66 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %66 = ptrtoint ptr %result66 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 458752, ptr %result66, align 4
  br label %sw.epilog112

sw.bb67:                                          ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  %result68 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %67 = ptrtoint ptr %result68 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %result68, align 4
  br label %sw.epilog112

sw.default:                                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  %result69 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %68 = ptrtoint ptr %result69 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %result69, align 4
  br label %sw.epilog112

sw.bb70:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %result71 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %69 = ptrtoint ptr %result71 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 327680, ptr %result71, align 4
  br label %sw.epilog112

sw.bb72:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %result73 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %70 = ptrtoint ptr %result73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 458752, ptr %result73, align 4
  br label %sw.epilog112

sw.bb74:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %result75 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %71 = ptrtoint ptr %result75 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 393216, ptr %result75, align 4
  br label %sw.epilog112

sw.bb76:                                          ; preds = %if.end41.sw.bb76_crit_edge, %if.end41.sw.bb76_crit_edge200, %if.end41.sw.bb76_crit_edge201, %if.end41.sw.bb76_crit_edge202, %if.end41.sw.bb76_crit_edge203
  %result77 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %72 = ptrtoint ptr %result77 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 65536, ptr %result77, align 4
  br label %sw.epilog112

sw.bb78:                                          ; preds = %if.end41.sw.bb78_crit_edge, %if.end41.sw.bb78_crit_edge204
  %result79 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %73 = ptrtoint ptr %result79 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 196608, ptr %result79, align 4
  br label %sw.epilog112

sw.bb80:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %result81 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %74 = ptrtoint ptr %result81 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 131072, ptr %result81, align 4
  br label %sw.epilog112

sw.bb82:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %result83 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %75 = ptrtoint ptr %result83 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 524288, ptr %result83, align 4
  br label %sw.epilog112

sw.bb84:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %result85 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %76 = ptrtoint ptr %result85 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 458752, ptr %result85, align 4
  br label %sw.epilog112

sw.default87:                                     ; preds = %if.end41
  %77 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmnd, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %80, label %if.else109 [
    i8 -95, label %sw.default87.if.then98_crit_edge
    i8 -123, label %sw.default87.if.then98_crit_edge212
  ]

sw.default87.if.then98_crit_edge212:              ; preds = %sw.default87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then98

sw.default87.if.then98_crit_edge:                 ; preds = %sw.default87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then98

if.then98:                                        ; preds = %sw.default87.if.then98_crit_edge, %sw.default87.if.then98_crit_edge212
  %arrayidx100 = getelementptr i8, ptr %78, i32 2
  %82 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx100, align 1
  %84 = and i8 %83, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool103.not = icmp eq i8 %84, 0
  %result107 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  br i1 %tobool103.not, label %if.else106, label %if.then104

if.then104:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %result107 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %result107, align 4
  br label %sw.epilog112

if.else106:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %result107 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 458752, ptr %result107, align 4
  br label %sw.epilog112

if.else109:                                       ; preds = %sw.default87
  call void @__sanitizer_cov_trace_pc() #17
  %result110 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %87 = ptrtoint ptr %result110 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 458752, ptr %result110, align 4
  br label %sw.epilog112

sw.epilog112:                                     ; preds = %if.else109, %if.else106, %if.then104, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72, %sw.bb70, %sw.default, %sw.bb67, %sw.bb49, %sw.bb
  %scsi_status113 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 8
  %88 = ptrtoint ptr %scsi_status113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %scsi_status113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %89)
  %cmp114 = icmp eq i32 %89, 33554432
  br i1 %cmp114, label %if.then116, label %sw.epilog112.if.end130_crit_edge

sw.epilog112.if.end130_crit_edge:                 ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.then116:                                       ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #17
  %result118 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %90 = ptrtoint ptr %result118 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %result118, align 4
  %or = or i32 %91, 2
  store i32 %or, ptr %result118, align 4
  %sense_data_size119 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 16
  %92 = ptrtoint ptr %sense_data_size119 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sense_data_size119, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 96)
  %96 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sense_buffer, align 4
  %sense_data128 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 20
  %98 = call ptr @memcpy(ptr %97, ptr %sense_data128, i32 %95)
  br label %if.end130

if.end130:                                        ; preds = %if.then116, %sw.epilog112.if.end130_crit_edge
  %99 = ptrtoint ptr %scsi_status113 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %scsi_status113, align 4
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %result132 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %102 = ptrtoint ptr %result132 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %result132, align 4
  %or133 = or i32 %103, %101
  store i32 %or133, ptr %result132, align 4
  %call134 = call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  %104 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i193 = icmp eq ptr %107, null
  br i1 %tobool.not.i193, label %if.else.i, label %if.then.i194

if.then.i194:                                     ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i194, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_build_sg(ptr noundef %scsicmd, ptr nocapture noundef %psg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %psg, align 4
  %sg1 = getelementptr inbounds %struct.sgmap, ptr %psg, i32 0, i32 1
  %1 = ptrtoint ptr %sg1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sg1, align 4
  %count4 = getelementptr inbounds %struct.sgmap, ptr %psg, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %count4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count4, align 4
  %call = tail call i32 @scsi_dma_map(ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %call)
  %4 = ptrtoint ptr %psg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %psg, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %5 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %byte_count.075 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.073 = phi ptr [ %call15, %for.body.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.073, i32 0, i32 3
  %7 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_address, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx9 = getelementptr %struct.sgmap, ptr %psg, i32 0, i32 1, i32 %i.074
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx9, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.073, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %count13 = getelementptr %struct.sgmap, ptr %psg, i32 0, i32 1, i32 %i.074, i32 1
  %14 = ptrtoint ptr %count13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count13, align 4
  %15 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length, align 4
  %add = add i32 %16, %byte_count.075
  %inc = add nuw nsw i32 %i.074, 1
  %call15 = tail call ptr @sg_next(ptr noundef %sg.073) #15
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp17 = icmp ult i32 %18, %add
  br i1 %cmp17, label %if.then18, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add nsw i32 %call, -1
  %count21 = getelementptr %struct.sgmap, ptr %psg, i32 0, i32 1, i32 %sub, i32 1
  %19 = ptrtoint ptr %count21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count21, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %sub23.neg = sub i32 %18, %add
  %sub24 = add i32 %sub23.neg, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %sub24)
  %23 = ptrtoint ptr %count21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %count21, align 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then18, %for.end.if.end30_crit_edge
  %byte_count.1 = phi i32 [ %25, %if.then18 ], [ %add, %for.end.if.end30_crit_edge ]
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 19
  %26 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.1, i32 %27)
  %cmp32 = icmp ult i32 %byte_count.1, %27
  %or.cond = select i1 %tobool.not, i1 %cmp32, i1 false
  br i1 %or.cond, label %do.end, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %byte_count.1, i32 noundef %27) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %byte_count.1, %do.end ], [ %byte_count.1, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_build_sgraw2(ptr noundef %scsicmd, ptr nocapture noundef %rio2, i32 noundef %sg_max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_dma_map(ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup130_crit_edge, label %for.body.lr.ph

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup130

for.body.lr.ph:                                   ; preds = %entry
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %0 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdb.i, align 4
  %sgeNominalSize = getelementptr inbounds %struct.aac_raw_io2, ptr %rio2, i32 0, i32 6
  %sgeFirstSize = getelementptr inbounds %struct.aac_raw_io2, ptr %rio2, i32 0, i32 5
  %smax = call i32 @llvm.smax.i32(i32 %sg_max, i32 0)
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %byte_count.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %if.end41.for.body_crit_edge ]
  %min_size.0233 = phi i32 [ 4096, %for.body.lr.ph ], [ %min_size.1, %if.end41.for.body_crit_edge ]
  %conformable.0232 = phi i32 [ 0, %for.body.lr.ph ], [ %conformable.1, %if.end41.for.body_crit_edge ]
  %i.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end41.for.body_crit_edge ]
  %sg.0229 = phi ptr [ %1, %for.body.lr.ph ], [ %call43, %if.end41.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0229, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0230, i32 %smax)
  %exitcond.not = icmp eq i32 %i.0230, %smax
  br i1 %exitcond.not, label %do.body7, label %do.end13, !prof !363

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3938, 0\0A.popsection", ""() #15, !srcloc !380
  unreachable

do.end13:                                         ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0229, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.0230
  %addrHigh = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.0230, i32 1
  %6 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %addrHigh, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %5)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %3)
  %length = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.0230, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %length, align 4
  %flags = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.0230, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %12 = zext i32 %i.0230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %i.0230, label %if.else28 [
    i32 0, label %if.then24
    i32 1, label %if.then27
  ]

if.then24:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %sgeFirstSize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %sgeFirstSize, align 4
  br label %if.end41

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %sgeNominalSize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %sgeNominalSize, align 4
  br label %if.end41

if.else28:                                        ; preds = %do.end13
  %add = add nuw nsw i32 %i.0230, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call)
  %cmp29 = icmp slt i32 %add, %call
  br i1 %cmp29, label %land.lhs.true, label %if.else28.if.end41_crit_edge

if.else28.if.end41_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

land.lhs.true:                                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %sgeNominalSize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sgeNominalSize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %16)
  %cmp32.not = icmp eq i32 %9, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %9, i32 %min_size.0233)
  %spec.select = select i1 %cmp32.not, i32 %conformable.0232, i32 0
  %spec.select221 = select i1 %cmp32.not, i32 %min_size.0233, i32 %17
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true, %if.else28.if.end41_crit_edge, %if.then27, %if.then24
  %conformable.1 = phi i32 [ 1, %if.then24 ], [ %conformable.0232, %if.then27 ], [ %conformable.0232, %if.else28.if.end41_crit_edge ], [ %spec.select, %land.lhs.true ]
  %min_size.1 = phi i32 [ %min_size.0233, %if.then24 ], [ %9, %if.then27 ], [ %min_size.0233, %if.else28.if.end41_crit_edge ], [ %spec.select221, %land.lhs.true ]
  %add42 = add i32 %3, %byte_count.0234
  %inc = add nuw nsw i32 %i.0230, 1
  %call43 = tail call ptr @sg_next(ptr noundef %sg.0229) #15
  %exitcond251.not = icmp eq i32 %inc, %call
  br i1 %exitcond251.not, label %for.end, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end41
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add42)
  %cmp45 = icmp ult i32 %19, %add42
  br i1 %cmp45, label %if.then47, label %for.end.if.end59_crit_edge

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %call, -1
  %length50 = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %sub, i32 2
  %20 = ptrtoint ptr %length50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length50, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %sub52.neg = sub i32 %19, %add42
  %sub53 = add i32 %sub52.neg, %22
  %23 = tail call i32 @llvm.bswap.i32(i32 %sub53)
  %24 = ptrtoint ptr %length50 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length50, align 4
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then47, %for.end.if.end59_crit_edge
  %byte_count.1 = phi i32 [ %26, %if.then47 ], [ %add42, %for.end.if.end59_crit_edge ]
  %27 = lshr i32 %call, 24
  %conv60 = trunc i32 %27 to i8
  %sgeCnt = getelementptr inbounds %struct.aac_raw_io2, ptr %rio2, i32 0, i32 7
  %28 = ptrtoint ptr %sgeCnt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv60, ptr %sgeCnt, align 4
  %flags61 = getelementptr inbounds %struct.aac_raw_io2, ptr %rio2, i32 0, i32 4
  %29 = ptrtoint ptr %flags61 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags61, align 2
  %31 = or i16 %30, 32
  store i16 %31, ptr %flags61, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conformable.1)
  %tobool64.not = icmp eq i32 %conformable.1, 0
  br i1 %tobool64.not, label %if.then65, label %if.else112

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %min_size.1)
  %cmp67245.not = icmp ult i32 %min_size.1, 4096
  br i1 %cmp67245.not, label %if.then65.if.end117_crit_edge, label %for.cond70.preheader.lr.ph

if.then65.if.end117_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

for.cond70.preheader.lr.ph:                       ; preds = %if.then65
  %div208 = lshr i32 %min_size.1, 12
  %sub71 = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub71)
  %cmp72238 = icmp sgt i32 %sub71, 1
  br label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.inc93.critedge.for.cond70.preheader_crit_edge, %for.cond70.preheader.lr.ph
  %i.1246 = phi i32 [ %div208, %for.cond70.preheader.lr.ph ], [ %dec, %for.inc93.critedge.for.cond70.preheader_crit_edge ]
  br i1 %cmp72238, label %for.body74.lr.ph, label %for.cond70.preheader.for.end94_crit_edge

for.cond70.preheader.for.end94_crit_edge:         ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end94

for.body74.lr.ph:                                 ; preds = %for.cond70.preheader
  %mul = shl i32 %i.1246, 12
  br label %for.body74

for.body74:                                       ; preds = %if.end80.for.body74_crit_edge, %for.body74.lr.ph
  %nseg_new.1240 = phi i32 [ 2, %for.body74.lr.ph ], [ %add86, %if.end80.for.body74_crit_edge ]
  %j.0239 = phi i32 [ 1, %for.body74.lr.ph ], [ %inc88, %if.end80.for.body74_crit_edge ]
  %length77 = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %j.0239, i32 2
  %32 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length77, align 4
  %.frozen = freeze i32 %33
  %mul.frozen = freeze i32 %mul
  %div85 = udiv i32 %.frozen, %mul.frozen
  %34 = mul i32 %div85, %mul.frozen
  %rem.decomposed = sub i32 %.frozen, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool78.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool78.not, label %if.end80, label %for.inc93.critedge

if.end80:                                         ; preds = %for.body74
  %add86 = add i32 %div85, %nseg_new.1240
  %inc88 = add nuw nsw i32 %j.0239, 1
  %exitcond252.not = icmp eq i32 %inc88, %sub71
  br i1 %exitcond252.not, label %if.end80.for.end94_crit_edge, label %if.end80.for.body74_crit_edge

if.end80.for.body74_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body74

if.end80.for.end94_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end94

for.inc93.critedge:                               ; preds = %for.body74
  %dec = add nsw i32 %i.1246, -1
  %cmp67 = icmp sgt i32 %i.1246, 1
  br i1 %cmp67, label %for.inc93.critedge.for.cond70.preheader_crit_edge, label %for.inc93.critedge.if.end117_crit_edge

for.inc93.critedge.if.end117_crit_edge:           ; preds = %for.inc93.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

for.inc93.critedge.for.cond70.preheader_crit_edge: ; preds = %for.inc93.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond70.preheader

for.end94:                                        ; preds = %if.end80.for.end94_crit_edge, %for.cond70.preheader.for.end94_crit_edge
  %i.1246250 = phi i32 [ %i.1246, %if.end80.for.end94_crit_edge ], [ %div208, %for.cond70.preheader.for.end94_crit_edge ]
  %nseg_new.1.lcssa = phi i32 [ %add86, %if.end80.for.end94_crit_edge ], [ 2, %for.cond70.preheader.for.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1246250)
  %cmp95 = icmp slt i32 %i.1246250, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %nseg_new.1.lcssa, i32 %sg_max)
  %cmp98.not = icmp sgt i32 %nseg_new.1.lcssa, %sg_max
  %or.cond = select i1 %cmp95, i1 true, i1 %cmp98.not
  br i1 %or.cond, label %for.end94.if.end117_crit_edge, label %if.then100

for.end94.if.end117_crit_edge:                    ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then100:                                       ; preds = %for.end94
  %35 = load i32, ptr @aac_convert_sgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.then100.if.end117_crit_edge, label %if.end.i

if.then100.if.end117_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.end.i:                                         ; preds = %if.then100
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nseg_new.1.lcssa, i32 16) #15
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end.i.cleanup130_crit_edge, label %if.end7.i.i, !prof !363

if.end.i.cleanup130_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup130

if.end7.i.i:                                      ; preds = %if.end.i
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 2592) #19
  %cmp1.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp1.i, label %if.end7.i.i.cleanup130_crit_edge, label %for.cond.preheader.i

if.end7.i.i.cleanup130_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup130

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %mul.i = shl i32 %i.1246250, 12
  br i1 %cmp72238, label %for.cond.preheader.i.for.cond5.preheader.i_crit_edge, label %for.cond.preheader.i.for.end35.i_crit_edge

for.cond.preheader.i.for.end35.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end35.i

for.cond.preheader.i.for.cond5.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc33.i.for.cond5.preheader.i_crit_edge, %for.cond.preheader.i.for.cond5.preheader.i_crit_edge
  %pos.098.i = phi i32 [ %pos.1.lcssa.i, %for.inc33.i.for.cond5.preheader.i_crit_edge ], [ 1, %for.cond.preheader.i.for.cond5.preheader.i_crit_edge ]
  %i.096.i = phi i32 [ %inc34.i, %for.inc33.i.for.cond5.preheader.i_crit_edge ], [ 1, %for.cond.preheader.i.for.cond5.preheader.i_crit_edge ]
  %length.i212 = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.096.i, i32 2
  %39 = ptrtoint ptr %length.i212 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i212, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %40)
  %cmp792.not.i = icmp ugt i32 %mul.i, %40
  br i1 %cmp792.not.i, label %for.cond5.preheader.i.for.inc33.i_crit_edge, label %for.body8.lr.ph.i

for.cond5.preheader.i.for.inc33.i_crit_edge:      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc33.i

for.body8.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %arrayidx.i = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.096.i
  %addrHigh.i = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %i.096.i, i32 1
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %43 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addrHigh.i, align 4
  %45 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %44, 1
  %46 = ptrtoint ptr %length.i212 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i212, align 4
  %div.i = udiv i32 %47, %mul.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %pos.194.i = phi i32 [ %pos.098.i, %for.body8.lr.ph.i ], [ %inc31.i, %for.body8.i.for.body8.i_crit_edge ]
  %j.093.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc32.i, %for.body8.i.for.body8.i_crit_edge ]
  %mul12.i = mul i32 %j.093.i, %mul.i
  %add.i = add i32 %42, %mul12.i
  %arrayidx13.i = getelementptr %struct.sge_ieee1212, ptr %call8.i.i, i32 %pos.194.i
  %48 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i, ptr %arrayidx13.i, align 16
  %addrHigh18.i = getelementptr %struct.sge_ieee1212, ptr %call8.i.i, i32 %pos.194.i, i32 1
  %49 = ptrtoint ptr %addrHigh18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %44, ptr %addrHigh18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %45)
  %cmp22.i = icmp ult i32 %add.i, %45
  %spec.store.select = select i1 %cmp22.i, i32 %inc.i, i32 %44
  %50 = ptrtoint ptr %addrHigh18.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.store.select, ptr %addrHigh18.i, align 4
  %length29.i = getelementptr %struct.sge_ieee1212, ptr %call8.i.i, i32 %pos.194.i, i32 2
  %51 = ptrtoint ptr %length29.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul.i, ptr %length29.i, align 8
  %flags.i = getelementptr %struct.sge_ieee1212, ptr %call8.i.i, i32 %pos.194.i, i32 3
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flags.i, align 4
  %inc31.i = add i32 %pos.194.i, 1
  %inc32.i = add nuw i32 %j.093.i, 1
  %cmp7.i = icmp ult i32 %inc32.i, %div.i
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.inc33.i_crit_edge

for.body8.i.for.inc33.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc33.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8.i

for.inc33.i:                                      ; preds = %for.body8.i.for.inc33.i_crit_edge, %for.cond5.preheader.i.for.inc33.i_crit_edge
  %pos.1.lcssa.i = phi i32 [ %pos.098.i, %for.cond5.preheader.i.for.inc33.i_crit_edge ], [ %inc31.i, %for.body8.i.for.inc33.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, %sub71
  br i1 %exitcond.not.i, label %for.inc33.i.for.end35.i_crit_edge, label %for.inc33.i.for.cond5.preheader.i_crit_edge

for.inc33.i.for.cond5.preheader.i_crit_edge:      ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond5.preheader.i

for.inc33.i.for.end35.i_crit_edge:                ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end35.i

for.end35.i:                                      ; preds = %for.inc33.i.for.end35.i_crit_edge, %for.cond.preheader.i.for.end35.i_crit_edge
  %pos.0.lcssa.i = phi i32 [ 1, %for.cond.preheader.i.for.end35.i_crit_edge ], [ %pos.1.lcssa.i, %for.inc33.i.for.end35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.sge_ieee1212, ptr %call8.i.i, i32 %pos.0.lcssa.i
  %arrayidx39.i = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 0, i32 12, i32 %sub71
  %53 = call ptr @memcpy(ptr %arrayidx36.i, ptr %arrayidx39.i, i32 16)
  %arrayidx41.i = getelementptr %struct.aac_raw_io2, ptr %rio2, i32 1, i32 5
  %arrayidx42.i = getelementptr %struct.sge_ieee1212, ptr %call8.i.i, i32 1
  %sub43.i = shl i32 %nseg_new.1.lcssa, 4
  %mul44.i = add i32 %sub43.i, -16
  %54 = call ptr @memcpy(ptr %arrayidx41.i, ptr %arrayidx42.i, i32 %mul44.i)
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #15
  %55 = lshr i32 %nseg_new.1.lcssa, 24
  %conv.i = trunc i32 %55 to i8
  %56 = ptrtoint ptr %sgeCnt to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i, ptr %sgeCnt, align 4
  %57 = ptrtoint ptr %flags61 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags61, align 2
  %59 = or i16 %58, 4096
  store i16 %59, ptr %flags61, align 2
  %sgeNominalSize.i = getelementptr inbounds %struct.aac_raw_io2, ptr %rio2, i32 0, i32 6
  %60 = ptrtoint ptr %sgeNominalSize.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul.i, ptr %sgeNominalSize.i, align 4
  br label %if.end117

if.else112:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %61 = or i16 %30, 4128
  %62 = ptrtoint ptr %flags61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %flags61, align 2
  br label %if.end117

if.end117:                                        ; preds = %if.else112, %for.end35.i, %if.then100.if.end117_crit_edge, %for.end94.if.end117_crit_edge, %for.inc93.critedge.if.end117_crit_edge, %if.then65.if.end117_crit_edge
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 19
  %63 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool118.not = icmp ne i32 %64, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.1, i32 %64)
  %cmp121 = icmp ult i32 %byte_count.1, %64
  %or.cond209 = select i1 %tobool118.not, i1 %cmp121, i1 false
  br i1 %or.cond209, label %do.end126, label %if.end117.cleanup130_crit_edge

if.end117.cleanup130_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup130

do.end126:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %byte_count.1, i32 noundef %64) #18
  br label %cleanup130

cleanup130:                                       ; preds = %do.end126, %if.end117.cleanup130_crit_edge, %if.end7.i.i.cleanup130_crit_edge, %if.end.i.cleanup130_crit_edge, %entry.cleanup130_crit_edge
  %retval.3 = phi i32 [ %call, %entry.cleanup130_crit_edge ], [ %byte_count.1, %do.end126 ], [ %byte_count.1, %if.end117.cleanup130_crit_edge ], [ -12, %if.end7.i.i.cleanup130_crit_edge ], [ -12, %if.end.i.cleanup130_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_build_sgraw(ptr noundef %scsicmd, ptr nocapture noundef %psg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psg, i32 0, i32 28)
  %call = tail call i32 @scsi_dma_map(ptr noundef %scsicmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17
  %1 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %byte_count.0118 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0117 = phi ptr [ %call42, %for.body.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0117, i32 0, i32 4
  %3 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0117, i32 0, i32 3
  %5 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_address, align 4
  %arrayidx21 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %i.0116
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx21, align 4
  %prev25 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %i.0116, i32 1
  %8 = ptrtoint ptr %prev25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %prev25, align 4
  %addr29 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %i.0116, i32 2
  %arrayidx30 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %i.0116, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx30, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %6)
  %11 = ptrtoint ptr %addr29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr29, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %4)
  %count38 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %i.0116, i32 3
  %13 = ptrtoint ptr %count38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %count38, align 4
  %flags41 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %i.0116, i32 4
  %14 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags41, align 4
  %add = add i32 %4, %byte_count.0118
  %inc = add nuw nsw i32 %i.0116, 1
  %call42 = tail call ptr @sg_next(ptr noundef %sg.0117) #15
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %15 = tail call i32 @llvm.bswap.i32(i32 %call)
  %16 = ptrtoint ptr %psg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %psg, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp45 = icmp ult i32 %18, %add
  br i1 %cmp45, label %if.then47, label %for.end.if.end59_crit_edge

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add nsw i32 %call, -1
  %count50 = getelementptr %struct.sgmapraw, ptr %psg, i32 0, i32 1, i32 %sub, i32 3
  %19 = ptrtoint ptr %count50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count50, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %sub52.neg = sub i32 %18, %add
  %sub53 = add i32 %sub52.neg, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %sub53)
  %23 = ptrtoint ptr %count50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %count50, align 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then47, %for.end.if.end59_crit_edge
  %byte_count.1 = phi i32 [ %25, %if.then47 ], [ %add, %for.end.if.end59_crit_edge ]
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %scsicmd, i32 0, i32 19
  %26 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %byte_count.1, i32 %27)
  %cmp61 = icmp ult i32 %byte_count.1, %27
  %or.cond = select i1 %tobool.not, i1 %cmp61, i1 false
  br i1 %or.cond, label %do.end, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %byte_count.1, i32 noundef %27) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end59.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %byte_count.1, %do.end ], [ %byte_count.1, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @io_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %if.end, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %dev1 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %5 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device4.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body6, label %do.end12, !prof !363

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2364, 0\0A.popsection", ""() #15, !srcloc !381
  unreachable

do.end12:                                         ; preds = %if.end
  tail call void @scsi_dma_unmap(ptr noundef nonnull %context) #15
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %9 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 72, label %sw.bb13
    i32 8, label %sw.bb21
  ]

sw.bb:                                            ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %result, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %4, i32 0, i32 39
  %16 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fsa_dev, align 8
  %sense_key = getelementptr %struct.fsa_dev_info, ptr %17, i32 %8, i32 12, i32 3
  %18 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %sense_key, align 1
  %bf.clear = and i8 %bf.load, 15
  store i8 %bf.clear, ptr %sense_key, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %result14 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %19 = ptrtoint ptr %result14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %result14, align 4
  %fsa_dev15 = getelementptr inbounds %struct.aac_dev, ptr %4, i32 0, i32 39
  %20 = ptrtoint ptr %fsa_dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fsa_dev15, align 8
  %sense_data17 = getelementptr %struct.fsa_dev_info, ptr %21, i32 %8, i32 12
  %22 = ptrtoint ptr %sense_data17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 112, ptr %sense_data17, align 1
  %arrayidx1.i = getelementptr i8, ptr %sense_data17, i32 1
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %sense_data17, i32 2
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %sense_data17, i32 12
  %25 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %sense_data17, i32 13
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx4.i, align 1
  %27 = getelementptr i8, ptr %sense_data17, i32 7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 6, ptr %27, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 21
  %29 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sense_buffer, align 4
  %31 = load ptr, ptr %fsa_dev15, align 8
  %sense_data20 = getelementptr %struct.fsa_dev_info, ptr %31, i32 %8, i32 12
  %32 = call ptr @memcpy(ptr %30, ptr %sense_data20, i32 19)
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %result22 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %33 = ptrtoint ptr %result22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %result22, align 4
  %fsa_dev23 = getelementptr inbounds %struct.aac_dev, ptr %4, i32 0, i32 39
  %34 = ptrtoint ptr %fsa_dev23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fsa_dev23, align 8
  %sense_data25 = getelementptr %struct.fsa_dev_info, ptr %35, i32 %8, i32 12
  %36 = ptrtoint ptr %sense_data25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 112, ptr %sense_data25, align 1
  %arrayidx1.i68 = getelementptr i8, ptr %sense_data25, i32 1
  %37 = ptrtoint ptr %arrayidx1.i68 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx1.i68, align 1
  %arrayidx2.i69 = getelementptr i8, ptr %sense_data25, i32 2
  %38 = ptrtoint ptr %arrayidx2.i69 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %arrayidx2.i69, align 1
  %arrayidx3.i70 = getelementptr i8, ptr %sense_data25, i32 12
  %39 = ptrtoint ptr %arrayidx3.i70 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 17, ptr %arrayidx3.i70, align 1
  %arrayidx4.i71 = getelementptr i8, ptr %sense_data25, i32 13
  %40 = ptrtoint ptr %arrayidx4.i71 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx4.i71, align 1
  %41 = getelementptr i8, ptr %sense_data25, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %41, align 1
  %sense_buffer26 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 21
  %43 = ptrtoint ptr %sense_buffer26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sense_buffer26, align 4
  %45 = load ptr, ptr %fsa_dev23, align 8
  %sense_data29 = getelementptr %struct.fsa_dev_info, ptr %45, i32 %8, i32 12
  %46 = call ptr @memcpy(ptr %44, ptr %sense_data29, i32 19)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #17
  %result30 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %47 = ptrtoint ptr %result30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %result30, align 4
  %fsa_dev31 = getelementptr inbounds %struct.aac_dev, ptr %4, i32 0, i32 39
  %48 = ptrtoint ptr %fsa_dev31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fsa_dev31, align 8
  %sense_data33 = getelementptr %struct.fsa_dev_info, ptr %49, i32 %8, i32 12
  %50 = ptrtoint ptr %sense_data33 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 112, ptr %sense_data33, align 1
  %arrayidx1.i72 = getelementptr i8, ptr %sense_data33, i32 1
  %51 = ptrtoint ptr %arrayidx1.i72 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx1.i72, align 1
  %arrayidx2.i73 = getelementptr i8, ptr %sense_data33, i32 2
  %52 = ptrtoint ptr %arrayidx2.i73 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %arrayidx2.i73, align 1
  %arrayidx3.i74 = getelementptr i8, ptr %sense_data33, i32 12
  %53 = ptrtoint ptr %arrayidx3.i74 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 68, ptr %arrayidx3.i74, align 1
  %arrayidx4.i75 = getelementptr i8, ptr %sense_data33, i32 13
  %54 = ptrtoint ptr %arrayidx4.i75 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx4.i75, align 1
  %55 = getelementptr i8, ptr %sense_data33, i32 7
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 6, ptr %55, align 1
  %sense_buffer34 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 21
  %57 = ptrtoint ptr %sense_buffer34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sense_buffer34, align 4
  %59 = load ptr, ptr %fsa_dev31, align 8
  %sense_data37 = getelementptr %struct.fsa_dev_info, ptr %59, i32 %8, i32 12
  %60 = call ptr @memcpy(ptr %58, ptr %sense_data37, i32 19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb13, %sw.bb
  %call38 = tail call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  %61 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i76 = icmp eq ptr %64, null
  br i1 %tobool.not.i76, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_fib_alloc_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synchronize_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %do.body, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body4, label %do.end10, !prof !363

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2611, 0\0A.popsection", ""() #15, !srcloc !382
  unreachable

do.end10:                                         ; preds = %do.body
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %3 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_fib_va, align 4
  %status = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -637534208, i32 %6)
  %cmp11 = icmp eq i32 %6, -637534208
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %result, align 4
  br label %if.end24

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device4.i, align 4
  %dev13 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %6)
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %14) #18
  %result20 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %15 = ptrtoint ptr %result20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %result20, align 4
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %11, i32 0, i32 39
  %16 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fsa_dev, align 8
  %sense_data = getelementptr %struct.fsa_dev_info, ptr %17, i32 %13, i32 12
  %18 = ptrtoint ptr %sense_data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 112, ptr %sense_data, align 1
  %arrayidx1.i = getelementptr i8, ptr %sense_data, i32 1
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %sense_data, i32 2
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %sense_data, i32 12
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 68, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %sense_data, i32 13
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx4.i, align 1
  %23 = getelementptr i8, ptr %sense_data, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %23, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 21
  %25 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sense_buffer, align 4
  %27 = load ptr, ptr %fsa_dev, align 8
  %sense_data23 = getelementptr %struct.fsa_dev_info, ptr %27, i32 %13, i32 12
  %28 = call ptr @memcpy(ptr %26, ptr %sense_data23, i32 19)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then12
  %call25 = tail call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  tail call void @aac_fib_free(ptr noundef nonnull %fibptr) #15
  %29 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i40 = icmp eq ptr %32, null
  br i1 %tobool.not.i40, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_container_serial_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  %vpdpage83data = alloca %struct.tvpd_page83, align 4
  %sp = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !363

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 995, 0\0A.popsection", ""() #15, !srcloc !383
  unreachable

do.end7:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %do.end7.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

do.end7.aac_valid_context.exit.thread_crit_edge:  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %do.end7
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %if.end10, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %do.end7.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %3 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_fib_va, align 4
  %status = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -637534208, i32 %6)
  %cmp11 = icmp eq i32 %6, -637534208
  br i1 %cmp11, label %if.then12, label %if.end10.if.end103_crit_edge

if.end10.if.end103_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

if.then12:                                        ; preds = %if.end10
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 16
  %7 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %10)
  %cmp13 = icmp eq i8 %10, -125
  br i1 %cmp13, label %if.then15, label %if.else89

if.then15:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %vpdpage83data) #15
  %11 = call ptr @memset(ptr %vpdpage83data, i32 255, i32 72)
  %12 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device4.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 53
  %PageCode = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 1
  %16 = call ptr @memset(ptr %vpdpage83data, i32 0, i32 72)
  %17 = ptrtoint ptr %PageCode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -125, ptr %PageCode, align 1
  %PageLength = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 3
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 66
  %18 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  %spec.store.select = select i1 %tobool20.not, i8 48, i8 68
  %20 = ptrtoint ptr %PageLength to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.store.select, ptr %PageLength, align 1
  %type1 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4
  %21 = ptrtoint ptr %type1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8208, ptr %type1, align 4
  %identifierlength = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %identifierlength to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %identifierlength, align 1
  %venid = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %venid to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 4702955724148654880, ptr %venid, align 4
  %productid = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 4
  %24 = call ptr @memcpy(ptr %productid, ptr @.str.93, i32 16)
  %uid = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uid, align 4
  %shr = lshr i32 %26, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612737, i32 %26)
  %cmp42 = icmp ugt i32 %26, -1610612737
  %27 = trunc i32 %shr to i8
  %conv48 = add nuw nsw i8 %27, 55
  %conv53 = or i8 %27, 48
  %conv53.sink = select i1 %cmp42, i8 %conv48, i8 %conv53
  %28 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 0
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv53.sink, ptr %28, align 4
  %30 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %uid, align 4
  %shr.1 = lshr i32 %31, 24
  %conv40.1 = and i32 %shr.1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.1)
  %cmp42.1 = icmp ugt i32 %conv40.1, 9
  %32 = trunc i32 %conv40.1 to i8
  %conv48.1 = add nuw nsw i8 %32, 55
  %33 = trunc i32 %conv40.1 to i8
  %conv53.1 = or i8 %33, 48
  %conv53.1.sink = select i1 %cmp42.1, i8 %conv48.1, i8 %conv53.1
  %34 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv53.1.sink, ptr %34, align 1
  %36 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uid, align 4
  %shr.2 = lshr i32 %37, 20
  %conv40.2 = and i32 %shr.2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.2)
  %cmp42.2 = icmp ugt i32 %conv40.2, 9
  %38 = trunc i32 %conv40.2 to i8
  %conv48.2 = add nuw nsw i8 %38, 55
  %39 = trunc i32 %conv40.2 to i8
  %conv53.2 = or i8 %39, 48
  %conv53.2.sink = select i1 %cmp42.2, i8 %conv48.2, i8 %conv53.2
  %40 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv53.2.sink, ptr %40, align 2
  %42 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %uid, align 4
  %shr.3 = lshr i32 %43, 16
  %conv40.3 = and i32 %shr.3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.3)
  %cmp42.3 = icmp ugt i32 %conv40.3, 9
  %44 = trunc i32 %conv40.3 to i8
  %conv48.3 = add nuw nsw i8 %44, 55
  %45 = trunc i32 %conv40.3 to i8
  %conv53.3 = or i8 %45, 48
  %conv53.3.sink = select i1 %cmp42.3, i8 %conv48.3, i8 %conv53.3
  %46 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv53.3.sink, ptr %46, align 1
  %48 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %uid, align 4
  %shr.4 = lshr i32 %49, 12
  %conv40.4 = and i32 %shr.4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.4)
  %cmp42.4 = icmp ugt i32 %conv40.4, 9
  %50 = trunc i32 %conv40.4 to i8
  %conv48.4 = add nuw nsw i8 %50, 55
  %51 = trunc i32 %conv40.4 to i8
  %conv53.4 = or i8 %51, 48
  %conv53.4.sink = select i1 %cmp42.4, i8 %conv48.4, i8 %conv53.4
  %52 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv53.4.sink, ptr %52, align 4
  %54 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uid, align 4
  %shr.5 = lshr i32 %55, 8
  %conv40.5 = and i32 %shr.5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.5)
  %cmp42.5 = icmp ugt i32 %conv40.5, 9
  %56 = trunc i32 %conv40.5 to i8
  %conv48.5 = add nuw nsw i8 %56, 55
  %57 = trunc i32 %conv40.5 to i8
  %conv53.5 = or i8 %57, 48
  %conv53.5.sink = select i1 %cmp42.5, i8 %conv48.5, i8 %conv53.5
  %58 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 5
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv53.5.sink, ptr %58, align 1
  %60 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %uid, align 4
  %shr.6 = lshr i32 %61, 4
  %conv40.6 = and i32 %shr.6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.6)
  %cmp42.6 = icmp ugt i32 %conv40.6, 9
  %62 = trunc i32 %conv40.6 to i8
  %conv48.6 = add nuw nsw i8 %62, 55
  %63 = trunc i32 %conv40.6 to i8
  %conv53.6 = or i8 %63, 48
  %conv53.6.sink = select i1 %cmp42.6, i8 %conv48.6, i8 %conv53.6
  %64 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 6
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv53.6.sink, ptr %64, align 2
  %66 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %uid, align 4
  %conv40.7 = and i32 %67, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv40.7)
  %cmp42.7 = icmp ugt i32 %conv40.7, 9
  %68 = trunc i32 %conv40.7 to i8
  %conv48.7 = add nuw nsw i8 %68, 55
  %69 = trunc i32 %conv40.7 to i8
  %conv53.7 = or i8 %69, 48
  %conv53.7.sink = select i1 %cmp42.7, i8 %conv48.7, i8 %conv53.7
  %70 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 4, i32 5, i32 7
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv53.7.sink, ptr %70, align 1
  %type2 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5
  %72 = ptrtoint ptr %type2 to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load58 = load i16, ptr %type2, align 4
  %bf.clear59 = and i16 %bf.load58, 3855
  %bf.set64 = or i16 %bf.clear59, 4128
  store i16 %bf.set64, ptr %type2, align 4
  %identifierlength66 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5, i32 2
  %73 = ptrtoint ptr %identifierlength66 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 8, ptr %identifierlength66, align 1
  %eu64id = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5, i32 3
  %venid68 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5, i32 3, i32 2
  %74 = ptrtoint ptr %venid68 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -48, ptr %venid68, align 1
  %arrayidx73 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5, i32 3, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx73, align 2
  %arrayidx77 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5, i32 3, i32 2, i32 2
  %76 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx77, align 1
  %77 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %uid, align 4
  %79 = ptrtoint ptr %eu64id to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %eu64id, align 4
  %reserved83 = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 5, i32 3, i32 1
  %80 = ptrtoint ptr %reserved83 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %reserved83, align 4
  %81 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool85.not = icmp eq i8 %82, 0
  br i1 %tobool85.not, label %if.then15.if.end87_crit_edge, label %if.then86

if.then15.if.end87_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then86:                                        ; preds = %if.then15
  %type3.i = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 6
  %83 = ptrtoint ptr %type3.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load.i = load i16, ptr %type3.i, align 4
  %bf.clear.i = and i16 %bf.load.i, 3855
  %bf.set4.i = or i16 %bf.clear.i, 4144
  store i16 %bf.set4.i, ptr %type3.i, align 4
  %identifierlength.i = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 6, i32 2
  %84 = ptrtoint ptr %identifierlength.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 16, ptr %identifierlength.i, align 1
  %maximum_num_containers.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 49, i32 0, i32 7, i32 1, i32 3
  %85 = ptrtoint ptr %maximum_num_containers.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %maximum_num_containers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp17.i = icmp sgt i32 %86, 0
  br i1 %cmp17.i, label %for.body.i, label %if.then86.if.end87_crit_edge

if.then86.if.end87_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

for.body.i:                                       ; preds = %if.then86
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 16
  %87 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id.i.i, align 8
  %89 = add nsw i32 %86, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %89)
  %.not.i = icmp ugt i32 %88, %89
  br i1 %.not.i, label %for.body.i.if.end87_crit_edge, label %if.then.i

for.body.i.if.end87_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %Identifier.i = getelementptr inbounds %struct.tvpd_page83, ptr %vpdpage83data, i32 0, i32 6, i32 3
  %fsa_dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %90 = ptrtoint ptr %fsa_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fsa_dev.i, align 8
  %identifier.i = getelementptr %struct.fsa_dev_info, ptr %91, i32 %88, i32 14
  %92 = call ptr @memcpy(ptr %Identifier.i, ptr %identifier.i, i32 16)
  br label %if.end87

if.end87:                                         ; preds = %if.then.i, %for.body.i.if.end87_crit_edge, %if.then86.if.end87_crit_edge, %if.then15.if.end87_crit_edge
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17
  %93 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17, i32 0, i32 1
  %95 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nents.i.i, align 4
  %call2.i = call i32 @sg_copy_from_buffer(ptr noundef %94, i32 noundef %96, ptr noundef nonnull %vpdpage83data, i32 noundef 72) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %vpdpage83data) #15
  br label %if.end103

if.else89:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %sp) #15
  %97 = getelementptr inbounds [13 x i8], ptr %sp, i32 0, i32 1
  %98 = getelementptr inbounds [13 x i8], ptr %sp, i32 0, i32 2
  %99 = getelementptr inbounds [13 x i8], ptr %sp, i32 0, i32 3
  %100 = getelementptr inbounds [13 x i8], ptr %sp, i32 0, i32 4
  %101 = getelementptr inbounds i8, ptr %sp, i32 4
  %102 = call ptr @memset(ptr %101, i32 255, i32 9)
  %103 = ptrtoint ptr %sp to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %sp, align 1
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx, align 1
  %106 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %97, align 1
  %107 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %98, align 1
  %uid96 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 12
  %108 = ptrtoint ptr %uid96 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %uid96, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %call97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %100, i32 noundef 9, ptr noundef nonnull @.str.94, i32 noundef %110)
  %conv98 = trunc i32 %call97 to i8
  %111 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv98, ptr %99, align 1
  %sdb.i.i128 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17
  %112 = ptrtoint ptr %sdb.i.i128 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sdb.i.i128, align 4
  %nents.i.i129 = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17, i32 0, i32 1
  %114 = ptrtoint ptr %nents.i.i129 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nents.i.i129, align 4
  %call2.i130 = call i32 @sg_copy_from_buffer(ptr noundef %113, i32 noundef %115, ptr noundef nonnull %sp, i32 noundef 13) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %sp) #15
  br label %if.end103

if.end103:                                        ; preds = %if.else89, %if.end87, %if.end10.if.end103_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %116 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %result, align 4
  %call104 = call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  %117 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i132 = icmp eq ptr %120, null
  br i1 %tobool.not.i132, label %if.else.i, label %if.then.i133

if.then.i133:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i133, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_container_name_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  %inq = alloca %struct.inquiry_data, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %do.body, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body4, label %do.end10, !prof !363

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 543, 0\0A.popsection", ""() #15, !srcloc !384
  unreachable

do.end10:                                         ; preds = %do.body
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %3 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_fib_va, align 4
  %status = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -637534208, i32 %6)
  %cmp11 = icmp eq i32 %6, -637534208
  br i1 %cmp11, label %land.lhs.true, label %do.end10.if.end41_crit_edge

do.end10.if.end41_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

land.lhs.true:                                    ; preds = %do.end10
  %data12 = getelementptr inbounds %struct.hw_fib, ptr %4, i32 0, i32 1, i32 32
  %7 = ptrtoint ptr %data12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp13.not = icmp eq i8 %8, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end41_crit_edge, label %if.then15

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then15:                                        ; preds = %land.lhs.true
  %arrayidx18 = getelementptr %struct.hw_fib, ptr %4, i32 0, i32 1, i32 48
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx18, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then15
  %10 = phi i8 [ %.pr, %while.body ], [ %8, %if.then15 ]
  %sp.0 = phi ptr [ %incdec.ptr, %while.body ], [ %data12, %if.then15 ]
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %10, label %if.then23 [
    i8 32, label %while.body
    i8 0, label %while.cond.if.end41_crit_edge
  ]

while.cond.if.end41_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i8, ptr %sp.0, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %incdec.ptr, align 1
  br label %while.cond

if.then23:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %inq) #15
  %13 = call ptr @memset(ptr %inq, i32 255, i32 36)
  %14 = ptrtoint ptr %sp.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sp.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp eq i8 %15, 0
  %not.tobool27.not = xor i1 %tobool27.not, true
  %spec.select.idx = zext i1 %not.tobool27.not to i32
  %spec.select = getelementptr i8, ptr %sp.0, i32 %spec.select.idx
  %spec.select58 = select i1 %tobool27.not, i8 32, i8 %15
  %16 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %spec.select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not.1 = icmp eq i8 %17, 0
  %not.tobool27.not.1 = xor i1 %tobool27.not.1, true
  %spec.select.idx.1 = zext i1 %not.tobool27.not.1 to i32
  %spec.select.1 = getelementptr i8, ptr %spec.select, i32 %spec.select.idx.1
  %spec.select58.1 = select i1 %tobool27.not.1, i8 32, i8 %17
  %18 = ptrtoint ptr %spec.select.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %spec.select.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not.2 = icmp eq i8 %19, 0
  %not.tobool27.not.2 = xor i1 %tobool27.not.2, true
  %spec.select.idx.2 = zext i1 %not.tobool27.not.2 to i32
  %spec.select.2 = getelementptr i8, ptr %spec.select.1, i32 %spec.select.idx.2
  %spec.select58.2 = select i1 %tobool27.not.2, i8 32, i8 %19
  %20 = ptrtoint ptr %spec.select.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %spec.select.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not.3 = icmp eq i8 %21, 0
  %not.tobool27.not.3 = xor i1 %tobool27.not.3, true
  %spec.select.idx.3 = zext i1 %not.tobool27.not.3 to i32
  %spec.select.3 = getelementptr i8, ptr %spec.select.2, i32 %spec.select.idx.3
  %spec.select58.3 = select i1 %tobool27.not.3, i8 32, i8 %21
  %22 = ptrtoint ptr %spec.select.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %spec.select.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not.4 = icmp eq i8 %23, 0
  %not.tobool27.not.4 = xor i1 %tobool27.not.4, true
  %spec.select.idx.4 = zext i1 %not.tobool27.not.4 to i32
  %spec.select.4 = getelementptr i8, ptr %spec.select.3, i32 %spec.select.idx.4
  %spec.select58.4 = select i1 %tobool27.not.4, i8 32, i8 %23
  %24 = ptrtoint ptr %spec.select.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spec.select.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not.5 = icmp eq i8 %25, 0
  %not.tobool27.not.5 = xor i1 %tobool27.not.5, true
  %spec.select.idx.5 = zext i1 %not.tobool27.not.5 to i32
  %spec.select.5 = getelementptr i8, ptr %spec.select.4, i32 %spec.select.idx.5
  %spec.select58.5 = select i1 %tobool27.not.5, i8 32, i8 %25
  %26 = ptrtoint ptr %spec.select.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %spec.select.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27.not.6 = icmp eq i8 %27, 0
  %not.tobool27.not.6 = xor i1 %tobool27.not.6, true
  %spec.select.idx.6 = zext i1 %not.tobool27.not.6 to i32
  %spec.select.6 = getelementptr i8, ptr %spec.select.5, i32 %spec.select.idx.6
  %spec.select58.6 = select i1 %tobool27.not.6, i8 32, i8 %27
  %28 = ptrtoint ptr %spec.select.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %spec.select.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27.not.7 = icmp eq i8 %29, 0
  %not.tobool27.not.7 = xor i1 %tobool27.not.7, true
  %spec.select.idx.7 = zext i1 %not.tobool27.not.7 to i32
  %spec.select.7 = getelementptr i8, ptr %spec.select.6, i32 %spec.select.idx.7
  %spec.select58.7 = select i1 %tobool27.not.7, i8 32, i8 %29
  %30 = ptrtoint ptr %spec.select.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %spec.select.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not.8 = icmp eq i8 %31, 0
  %not.tobool27.not.8 = xor i1 %tobool27.not.8, true
  %spec.select.idx.8 = zext i1 %not.tobool27.not.8 to i32
  %spec.select.8 = getelementptr i8, ptr %spec.select.7, i32 %spec.select.idx.8
  %spec.select58.8 = select i1 %tobool27.not.8, i8 32, i8 %31
  %32 = ptrtoint ptr %spec.select.8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %spec.select.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not.9 = icmp eq i8 %33, 0
  %not.tobool27.not.9 = xor i1 %tobool27.not.9, true
  %spec.select.idx.9 = zext i1 %not.tobool27.not.9 to i32
  %spec.select.9 = getelementptr i8, ptr %spec.select.8, i32 %spec.select.idx.9
  %spec.select58.9 = select i1 %tobool27.not.9, i8 32, i8 %33
  %34 = ptrtoint ptr %spec.select.9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %spec.select.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool27.not.10 = icmp eq i8 %35, 0
  %not.tobool27.not.10 = xor i1 %tobool27.not.10, true
  %spec.select.idx.10 = zext i1 %not.tobool27.not.10 to i32
  %spec.select.10 = getelementptr i8, ptr %spec.select.9, i32 %spec.select.idx.10
  %spec.select58.10 = select i1 %tobool27.not.10, i8 32, i8 %35
  %36 = ptrtoint ptr %spec.select.10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %spec.select.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool27.not.11 = icmp eq i8 %37, 0
  %not.tobool27.not.11 = xor i1 %tobool27.not.11, true
  %spec.select.idx.11 = zext i1 %not.tobool27.not.11 to i32
  %spec.select.11 = getelementptr i8, ptr %spec.select.10, i32 %spec.select.idx.11
  %spec.select58.11 = select i1 %tobool27.not.11, i8 32, i8 %37
  %38 = ptrtoint ptr %spec.select.11 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spec.select.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool27.not.12 = icmp eq i8 %39, 0
  %not.tobool27.not.12 = xor i1 %tobool27.not.12, true
  %spec.select.idx.12 = zext i1 %not.tobool27.not.12 to i32
  %spec.select.12 = getelementptr i8, ptr %spec.select.11, i32 %spec.select.idx.12
  %spec.select58.12 = select i1 %tobool27.not.12, i8 32, i8 %39
  %40 = ptrtoint ptr %spec.select.12 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %spec.select.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool27.not.13 = icmp eq i8 %41, 0
  %not.tobool27.not.13 = xor i1 %tobool27.not.13, true
  %spec.select.idx.13 = zext i1 %not.tobool27.not.13 to i32
  %spec.select.13 = getelementptr i8, ptr %spec.select.12, i32 %spec.select.idx.13
  %spec.select58.13 = select i1 %tobool27.not.13, i8 32, i8 %41
  %42 = ptrtoint ptr %spec.select.13 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %spec.select.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool27.not.14 = icmp eq i8 %43, 0
  %not.tobool27.not.14 = xor i1 %tobool27.not.14, true
  %spec.select.idx.14 = zext i1 %not.tobool27.not.14 to i32
  %spec.select.14 = getelementptr i8, ptr %spec.select.13, i32 %spec.select.idx.14
  %spec.select58.14 = select i1 %tobool27.not.14, i8 32, i8 %43
  %44 = ptrtoint ptr %spec.select.14 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %spec.select.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool27.not.15 = icmp eq i8 %45, 0
  %spec.select58.15 = select i1 %tobool27.not.15, i8 32, i8 %45
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17
  %46 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 17, i32 0, i32 1
  %48 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nents.i.i, align 4
  %call2.i = call i32 @sg_copy_to_buffer(ptr noundef %47, i32 noundef %49, ptr noundef nonnull %inq, i32 noundef 36) #15
  %inqd_pid = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8
  %50 = ptrtoint ptr %inqd_pid to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select58, ptr %inqd_pid, align 1
  %d.sroa.5.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %d.sroa.5.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select58.1, ptr %d.sroa.5.0.inqd_pid.sroa_idx, align 1
  %d.sroa.7.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 2
  %52 = ptrtoint ptr %d.sroa.7.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %spec.select58.2, ptr %d.sroa.7.0.inqd_pid.sroa_idx, align 1
  %d.sroa.9.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 3
  %53 = ptrtoint ptr %d.sroa.9.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %spec.select58.3, ptr %d.sroa.9.0.inqd_pid.sroa_idx, align 1
  %d.sroa.11.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 4
  %54 = ptrtoint ptr %d.sroa.11.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select58.4, ptr %d.sroa.11.0.inqd_pid.sroa_idx, align 1
  %d.sroa.13.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 5
  %55 = ptrtoint ptr %d.sroa.13.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %spec.select58.5, ptr %d.sroa.13.0.inqd_pid.sroa_idx, align 1
  %d.sroa.15.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 6
  %56 = ptrtoint ptr %d.sroa.15.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.select58.6, ptr %d.sroa.15.0.inqd_pid.sroa_idx, align 1
  %d.sroa.17.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 7
  %57 = ptrtoint ptr %d.sroa.17.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %spec.select58.7, ptr %d.sroa.17.0.inqd_pid.sroa_idx, align 1
  %d.sroa.19.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 8
  %58 = ptrtoint ptr %d.sroa.19.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %spec.select58.8, ptr %d.sroa.19.0.inqd_pid.sroa_idx, align 1
  %d.sroa.21.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 9
  %59 = ptrtoint ptr %d.sroa.21.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %spec.select58.9, ptr %d.sroa.21.0.inqd_pid.sroa_idx, align 1
  %d.sroa.23.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 10
  %60 = ptrtoint ptr %d.sroa.23.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %spec.select58.10, ptr %d.sroa.23.0.inqd_pid.sroa_idx, align 1
  %d.sroa.25.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 11
  %61 = ptrtoint ptr %d.sroa.25.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select58.11, ptr %d.sroa.25.0.inqd_pid.sroa_idx, align 1
  %d.sroa.27.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 12
  %62 = ptrtoint ptr %d.sroa.27.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %spec.select58.12, ptr %d.sroa.27.0.inqd_pid.sroa_idx, align 1
  %d.sroa.29.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 13
  %63 = ptrtoint ptr %d.sroa.29.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.select58.13, ptr %d.sroa.29.0.inqd_pid.sroa_idx, align 1
  %d.sroa.31.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 14
  %64 = ptrtoint ptr %d.sroa.31.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.select58.14, ptr %d.sroa.31.0.inqd_pid.sroa_idx, align 1
  %d.sroa.33.0.inqd_pid.sroa_idx = getelementptr inbounds %struct.inquiry_data, ptr %inq, i32 0, i32 8, i32 15
  %65 = ptrtoint ptr %d.sroa.33.0.inqd_pid.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select58.15, ptr %d.sroa.33.0.inqd_pid.sroa_idx, align 1
  %66 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdb.i.i, align 4
  %68 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nents.i.i, align 4
  %call2.i61 = call i32 @sg_copy_from_buffer(ptr noundef %67, i32 noundef %69, ptr noundef nonnull %inq, i32 noundef 36) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %inq) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then23, %while.cond.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %do.end10.if.end41_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %70 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %result, align 4
  %call42 = call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  %71 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i62 = icmp eq ptr %74, null
  br i1 %tobool.not.i62, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_start_stop_callback(ptr noundef %context, ptr noundef %fibptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %context, null
  br i1 %tobool.not.i, label %entry.aac_valid_context.exit.thread_crit_edge, label %if.end.i, !prof !363

entry.aac_valid_context.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

if.end.i:                                         ; preds = %entry
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 257, ptr %phase.i, align 4
  %device4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device4.i, align 4
  %tobool5.not.i = icmp eq ptr %2, null
  br i1 %tobool5.not.i, label %if.end.i.aac_valid_context.exit.thread_crit_edge, label %do.body, !prof !363

if.end.i.aac_valid_context.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_valid_context.exit.thread

aac_valid_context.exit.thread:                    ; preds = %if.end.i.aac_valid_context.exit.thread_crit_edge, %entry.aac_valid_context.exit.thread_crit_edge
  %call15.i = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  %cmp = icmp eq ptr %fibptr, null
  br i1 %cmp, label %do.body4, label %do.end10, !prof !363

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/aachba.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2696, 0\0A.popsection", ""() #15, !srcloc !385
  unreachable

do.end10:                                         ; preds = %do.body
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %context, i32 0, i32 24
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %result, align 4
  %call11 = tail call i32 @aac_fib_complete(ptr noundef nonnull %fibptr) #15
  tail call void @aac_fib_free(ptr noundef nonnull %fibptr) #15
  %4 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device4.i, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue.i, align 4
  %tobool.not.i17 = icmp eq ptr %7, null
  br i1 %tobool.not.i17, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_done(ptr noundef nonnull %context) #15
  br label %cleanup

if.else.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %device4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %device4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %aac_valid_context.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_hba_send(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !61, !63, !65, !66, !68, !70, !72, !73, !75, !77, !79, !80, !82, !84, !86, !87, !89, !91, !93, !94, !96, !98, !99, !101, !103, !104, !106, !108, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !176, !178, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !196, !197, !198, !199, !200, !202, !203, !204, !205, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !308, !310, !312, !313, !314, !315, !317, !319, !321, !323, !325, !327, !329, !330, !331, !332, !334, !335, !337, !339, !341, !342, !343, !344, !346, !347, !348, !349, !351, !352}
!llvm.named.register.sp = !{!353}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360, !361}
!llvm.ident = !{!362}

!0 = !{ptr @aac_commit, !1, !"aac_commit", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/aachba.c", i32 241, i32 5}
!2 = !{ptr @startup_timeout, !3, !"startup_timeout", i1 false, i1 false}
!3 = !{!"../drivers/scsi/aacraid/aachba.c", i32 242, i32 5}
!4 = !{ptr @aif_timeout, !5, !"aif_timeout", i1 false, i1 false}
!5 = !{!"../drivers/scsi/aacraid/aachba.c", i32 243, i32 5}
!6 = !{ptr @__param_aac_sync_mode, !7, !"__param_aac_sync_mode", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aacraid/aachba.c", i32 247, i32 1}
!8 = !{ptr @__UNIQUE_ID_aac_sync_modetype287, !7, !"__UNIQUE_ID_aac_sync_modetype287", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_aac_sync_mode288, !10, !"__UNIQUE_ID_aac_sync_mode288", i1 false, i1 false}
!10 = !{!"../drivers/scsi/aacraid/aachba.c", i32 248, i32 1}
!11 = !{ptr @__param_aac_convert_sgl, !12, !"__param_aac_convert_sgl", i1 false, i1 false}
!12 = !{!"../drivers/scsi/aacraid/aachba.c", i32 250, i32 1}
!13 = !{ptr @__UNIQUE_ID_aac_convert_sgltype289, !12, !"__UNIQUE_ID_aac_convert_sgltype289", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_aac_convert_sgl290, !15, !"__UNIQUE_ID_aac_convert_sgl290", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aacraid/aachba.c", i32 251, i32 1}
!16 = !{ptr @__param_nondasd, !17, !"__param_nondasd", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aacraid/aachba.c", i32 253, i32 1}
!18 = !{ptr @__UNIQUE_ID_nondasdtype291, !17, !"__UNIQUE_ID_nondasdtype291", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_nondasd292, !20, !"__UNIQUE_ID_nondasd292", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aacraid/aachba.c", i32 254, i32 1}
!21 = !{ptr @__param_cache, !22, !"__param_cache", i1 false, i1 false}
!22 = !{!"../drivers/scsi/aacraid/aachba.c", i32 256, i32 1}
!23 = !{ptr @__UNIQUE_ID_cachetype293, !22, !"__UNIQUE_ID_cachetype293", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_cache294, !25, !"__UNIQUE_ID_cache294", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aacraid/aachba.c", i32 257, i32 1}
!26 = !{ptr @__param_dacmode, !27, !"__param_dacmode", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aacraid/aachba.c", i32 261, i32 1}
!28 = !{ptr @__UNIQUE_ID_dacmodetype295, !27, !"__UNIQUE_ID_dacmodetype295", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_dacmode296, !30, !"__UNIQUE_ID_dacmode296", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aacraid/aachba.c", i32 262, i32 1}
!31 = !{ptr @__param_commit, !32, !"__param_commit", i1 false, i1 false}
!32 = !{!"../drivers/scsi/aacraid/aachba.c", i32 264, i32 1}
!33 = !{ptr @__UNIQUE_ID_committype297, !32, !"__UNIQUE_ID_committype297", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_commit298, !35, !"__UNIQUE_ID_commit298", i1 false, i1 false}
!35 = !{!"../drivers/scsi/aacraid/aachba.c", i32 265, i32 1}
!36 = !{ptr @__param_msi, !37, !"__param_msi", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aacraid/aachba.c", i32 269, i32 1}
!38 = !{ptr @__UNIQUE_ID_msitype299, !37, !"__UNIQUE_ID_msitype299", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_msi300, !40, !"__UNIQUE_ID_msi300", i1 false, i1 false}
!40 = !{!"../drivers/scsi/aacraid/aachba.c", i32 270, i32 1}
!41 = !{ptr @__param_startup_timeout, !42, !"__param_startup_timeout", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aacraid/aachba.c", i32 272, i32 1}
!43 = !{ptr @__UNIQUE_ID_startup_timeouttype301, !42, !"__UNIQUE_ID_startup_timeouttype301", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_startup_timeout302, !45, !"__UNIQUE_ID_startup_timeout302", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aacraid/aachba.c", i32 273, i32 1}
!46 = !{ptr @__param_aif_timeout, !47, !"__param_aif_timeout", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aacraid/aachba.c", i32 277, i32 1}
!48 = !{ptr @__UNIQUE_ID_aif_timeouttype303, !47, !"__UNIQUE_ID_aif_timeouttype303", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_aif_timeout304, !50, !"__UNIQUE_ID_aif_timeout304", i1 false, i1 false}
!50 = !{!"../drivers/scsi/aacraid/aachba.c", i32 278, i32 1}
!51 = !{ptr @__param_aac_fib_dump, !52, !"__param_aac_fib_dump", i1 false, i1 false}
!52 = !{!"../drivers/scsi/aacraid/aachba.c", i32 284, i32 1}
!53 = !{ptr @__UNIQUE_ID_aac_fib_dumptype305, !52, !"__UNIQUE_ID_aac_fib_dumptype305", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_aac_fib_dump306, !55, !"__UNIQUE_ID_aac_fib_dump306", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aacraid/aachba.c", i32 285, i32 1}
!56 = !{ptr @numacb, !57, !"numacb", i1 false, i1 false}
!57 = !{!"../drivers/scsi/aacraid/aachba.c", i32 287, i32 5}
!58 = !{ptr @__param_numacb, !59, !"__param_numacb", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aacraid/aachba.c", i32 288, i32 1}
!60 = !{ptr @__UNIQUE_ID_numacbtype307, !59, !"__UNIQUE_ID_numacbtype307", i1 false, i1 false}
!61 = !{ptr @__UNIQUE_ID_numacb308, !62, !"__UNIQUE_ID_numacb308", i1 false, i1 false}
!62 = !{!"../drivers/scsi/aacraid/aachba.c", i32 289, i32 1}
!63 = !{ptr @__param_acbsize, !64, !"__param_acbsize", i1 false, i1 false}
!64 = !{!"../drivers/scsi/aacraid/aachba.c", i32 294, i32 1}
!65 = !{ptr @__UNIQUE_ID_acbsizetype309, !64, !"__UNIQUE_ID_acbsizetype309", i1 false, i1 false}
!66 = !{ptr @__UNIQUE_ID_acbsize310, !67, !"__UNIQUE_ID_acbsize310", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aacraid/aachba.c", i32 295, i32 1}
!68 = !{ptr @update_interval, !69, !"update_interval", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aacraid/aachba.c", i32 299, i32 5}
!70 = !{ptr @__param_update_interval, !71, !"__param_update_interval", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aacraid/aachba.c", i32 300, i32 1}
!72 = !{ptr @__UNIQUE_ID_update_intervaltype311, !71, !"__UNIQUE_ID_update_intervaltype311", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_update_interval312, !74, !"__UNIQUE_ID_update_interval312", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aacraid/aachba.c", i32 301, i32 1}
!75 = !{ptr @check_interval, !76, !"check_interval", i1 false, i1 false}
!76 = !{!"../drivers/scsi/aacraid/aachba.c", i32 304, i32 5}
!77 = !{ptr @__param_check_interval, !78, !"__param_check_interval", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aacraid/aachba.c", i32 305, i32 1}
!79 = !{ptr @__UNIQUE_ID_check_intervaltype313, !78, !"__UNIQUE_ID_check_intervaltype313", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_check_interval314, !81, !"__UNIQUE_ID_check_interval314", i1 false, i1 false}
!81 = !{!"../drivers/scsi/aacraid/aachba.c", i32 306, i32 1}
!82 = !{ptr @aac_check_reset, !83, !"aac_check_reset", i1 false, i1 false}
!83 = !{!"../drivers/scsi/aacraid/aachba.c", i32 309, i32 5}
!84 = !{ptr @__param_check_reset, !85, !"__param_check_reset", i1 false, i1 false}
!85 = !{!"../drivers/scsi/aacraid/aachba.c", i32 310, i32 1}
!86 = !{ptr @__UNIQUE_ID_check_resettype315, !85, !"__UNIQUE_ID_check_resettype315", i1 false, i1 false}
!87 = !{ptr @__UNIQUE_ID_check_reset316, !88, !"__UNIQUE_ID_check_reset316", i1 false, i1 false}
!88 = !{!"../drivers/scsi/aacraid/aachba.c", i32 311, i32 1}
!89 = !{ptr @expose_physicals, !90, !"expose_physicals", i1 false, i1 false}
!90 = !{!"../drivers/scsi/aacraid/aachba.c", i32 315, i32 5}
!91 = !{ptr @__param_expose_physicals, !92, !"__param_expose_physicals", i1 false, i1 false}
!92 = !{!"../drivers/scsi/aacraid/aachba.c", i32 316, i32 1}
!93 = !{ptr @__UNIQUE_ID_expose_physicalstype317, !92, !"__UNIQUE_ID_expose_physicalstype317", i1 false, i1 false}
!94 = !{ptr @__UNIQUE_ID_expose_physicals318, !95, !"__UNIQUE_ID_expose_physicals318", i1 false, i1 false}
!95 = !{!"../drivers/scsi/aacraid/aachba.c", i32 317, i32 1}
!96 = !{ptr @__param_reset_devices, !97, !"__param_reset_devices", i1 false, i1 false}
!97 = !{!"../drivers/scsi/aacraid/aachba.c", i32 321, i32 1}
!98 = !{ptr @__UNIQUE_ID_reset_devicestype319, !97, !"__UNIQUE_ID_reset_devicestype319", i1 false, i1 false}
!99 = !{ptr @__UNIQUE_ID_reset_devices320, !100, !"__UNIQUE_ID_reset_devices320", i1 false, i1 false}
!100 = !{!"../drivers/scsi/aacraid/aachba.c", i32 322, i32 1}
!101 = !{ptr @__param_wwn, !102, !"__param_wwn", i1 false, i1 false}
!102 = !{!"../drivers/scsi/aacraid/aachba.c", i32 325, i32 1}
!103 = !{ptr @__UNIQUE_ID_wwntype321, !102, !"__UNIQUE_ID_wwntype321", i1 false, i1 false}
!104 = !{ptr @__UNIQUE_ID_wwn322, !105, !"__UNIQUE_ID_wwn322", i1 false, i1 false}
!105 = !{!"../drivers/scsi/aacraid/aachba.c", i32 326, i32 1}
!106 = !{ptr @.str, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aacraid/aachba.c", i32 383, i32 3}
!108 = !{ptr @.str.1, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.2, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @aac_get_config_status._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @aac_get_config_status._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.4, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/aacraid/aachba.c", i32 395, i32 4}
!114 = !{ptr @aac_get_config_status._entry.3, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @aac_get_config_status._entry_ptr.5, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.7, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/aacraid/aachba.c", i32 424, i32 4}
!118 = !{ptr @aac_get_config_status._entry.6, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @aac_get_config_status._entry_ptr.8, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.9, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/aacraid/aachba.c", i32 514, i32 4}
!122 = !{ptr @.str.10, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @aac_get_containers._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @aac_get_containers._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.11, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2140, i32 3}
!127 = !{ptr @.str.12, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @aac_get_adapter_info._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @aac_get_adapter_info._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.14, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2150, i32 3}
!132 = !{ptr @aac_get_adapter_info._entry.13, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @aac_get_adapter_info._entry_ptr.15, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.17, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2155, i32 3}
!136 = !{ptr @aac_get_adapter_info._entry.16, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @aac_get_adapter_info._entry_ptr.18, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.20, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2162, i32 4}
!140 = !{ptr @aac_get_adapter_info._entry.19, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @aac_get_adapter_info._entry_ptr.21, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.23, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2165, i32 4}
!144 = !{ptr @aac_get_adapter_info._entry.22, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @aac_get_adapter_info._entry_ptr.24, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.26, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2174, i32 4}
!148 = !{ptr @aac_get_adapter_info._entry.25, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @aac_get_adapter_info._entry_ptr.27, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.29, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2204, i32 3}
!152 = !{ptr @aac_get_adapter_info._entry.28, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @aac_get_adapter_info._entry_ptr.30, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.32, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2210, i32 3}
!156 = !{ptr @aac_get_adapter_info._entry.31, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @aac_get_adapter_info._entry_ptr.33, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.35, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2238, i32 5}
!160 = !{ptr @.str.36, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.37, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @aac_get_adapter_info._entry.34, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @aac_get_adapter_info._entry_ptr.38, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.40, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2240, i32 4}
!166 = !{ptr @aac_get_adapter_info._entry.39, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @aac_get_adapter_info._entry_ptr.41, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.43, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2243, i32 4}
!170 = !{ptr @aac_get_adapter_info._entry.42, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @aac_get_adapter_info._entry_ptr.44, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @aac_msi, !173, !"aac_msi", i1 false, i1 false}
!173 = !{!"../drivers/scsi/aacraid/aachba.c", i32 240, i32 5}
!174 = !{ptr @aac_sync_mode, !175, !"aac_sync_mode", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aacraid/aachba.c", i32 244, i32 5}
!176 = !{ptr @aac_fib_dump, !177, !"aac_fib_dump", i1 false, i1 false}
!177 = !{!"../drivers/scsi/aacraid/aachba.c", i32 283, i32 5}
!178 = !{ptr @aac_reset_devices, !179, !"aac_reset_devices", i1 false, i1 false}
!179 = !{!"../drivers/scsi/aacraid/aachba.c", i32 320, i32 5}
!180 = !{ptr @__param_str_aac_sync_mode, !7, !"__param_str_aac_sync_mode", i1 false, i1 false}
!181 = !{ptr @__param_str_aac_convert_sgl, !12, !"__param_str_aac_convert_sgl", i1 false, i1 false}
!182 = !{ptr @aac_convert_sgl, !183, !"aac_convert_sgl", i1 false, i1 false}
!183 = !{!"../drivers/scsi/aacraid/aachba.c", i32 245, i32 12}
!184 = !{ptr @__param_str_nondasd, !17, !"__param_str_nondasd", i1 false, i1 false}
!185 = !{ptr @nondasd, !186, !"nondasd", i1 false, i1 false}
!186 = !{!"../drivers/scsi/aacraid/aachba.c", i32 237, i32 12}
!187 = !{ptr @__param_str_cache, !22, !"__param_str_cache", i1 false, i1 false}
!188 = !{ptr @aac_cache, !189, !"aac_cache", i1 false, i1 false}
!189 = !{!"../drivers/scsi/aacraid/aachba.c", i32 238, i32 12}
!190 = !{ptr @__param_str_dacmode, !27, !"__param_str_dacmode", i1 false, i1 false}
!191 = !{ptr @dacmode, !192, !"dacmode", i1 false, i1 false}
!192 = !{!"../drivers/scsi/aacraid/aachba.c", i32 239, i32 12}
!193 = !{ptr @__param_str_commit, !32, !"__param_str_commit", i1 false, i1 false}
!194 = !{ptr @__param_str_msi, !37, !"__param_str_msi", i1 false, i1 false}
!195 = !{ptr @__param_str_startup_timeout, !42, !"__param_str_startup_timeout", i1 false, i1 false}
!196 = !{ptr @__param_str_aif_timeout, !47, !"__param_str_aif_timeout", i1 false, i1 false}
!197 = !{ptr @__param_str_aac_fib_dump, !52, !"__param_str_aac_fib_dump", i1 false, i1 false}
!198 = !{ptr @__param_str_numacb, !59, !"__param_str_numacb", i1 false, i1 false}
!199 = !{ptr @__param_str_acbsize, !64, !"__param_str_acbsize", i1 false, i1 false}
!200 = !{ptr @acbsize, !201, !"acbsize", i1 false, i1 false}
!201 = !{!"../drivers/scsi/aacraid/aachba.c", i32 293, i32 12}
!202 = !{ptr @__param_str_update_interval, !71, !"__param_str_update_interval", i1 false, i1 false}
!203 = !{ptr @__param_str_check_interval, !78, !"__param_str_check_interval", i1 false, i1 false}
!204 = !{ptr @__param_str_check_reset, !85, !"__param_str_check_reset", i1 false, i1 false}
!205 = !{ptr @__param_str_expose_physicals, !92, !"__param_str_expose_physicals", i1 false, i1 false}
!206 = !{ptr @__param_str_reset_devices, !97, !"__param_str_reset_devices", i1 false, i1 false}
!207 = !{ptr @__param_str_wwn, !102, !"__param_str_wwn", i1 false, i1 false}
!208 = !{ptr @aac_wwn, !209, !"aac_wwn", i1 false, i1 false}
!209 = !{!"../drivers/scsi/aacraid/aachba.c", i32 324, i32 12}
!210 = !{ptr @.str.45, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/aacraid/aachba.c", i32 867, i32 2}
!212 = !{ptr @.str.46, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/aacraid/aachba.c", i32 868, i32 2}
!214 = !{ptr @.str.47, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/aacraid/aachba.c", i32 869, i32 2}
!216 = !{ptr @.str.48, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/aacraid/aachba.c", i32 870, i32 2}
!218 = !{ptr @.str.49, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/aacraid/aachba.c", i32 871, i32 2}
!220 = !{ptr @.str.50, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/aacraid/aachba.c", i32 872, i32 2}
!222 = !{ptr @.str.51, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/aacraid/aachba.c", i32 873, i32 2}
!224 = !{ptr @.str.52, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/aacraid/aachba.c", i32 874, i32 2}
!226 = !{ptr @.str.53, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/aacraid/aachba.c", i32 875, i32 2}
!228 = !{ptr @.str.54, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/aacraid/aachba.c", i32 876, i32 2}
!230 = !{ptr @.str.55, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/aacraid/aachba.c", i32 877, i32 2}
!232 = !{ptr @.str.56, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/aacraid/aachba.c", i32 878, i32 2}
!234 = !{ptr @.str.57, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/aacraid/aachba.c", i32 879, i32 2}
!236 = !{ptr @.str.58, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/aacraid/aachba.c", i32 880, i32 2}
!238 = !{ptr @.str.59, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/aacraid/aachba.c", i32 881, i32 2}
!240 = !{ptr @.str.60, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/aacraid/aachba.c", i32 882, i32 2}
!242 = !{ptr @.str.61, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/aacraid/aachba.c", i32 883, i32 2}
!244 = !{ptr @.str.62, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/aacraid/aachba.c", i32 884, i32 2}
!246 = !{ptr @.str.63, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/aacraid/aachba.c", i32 885, i32 2}
!248 = !{ptr @.str.64, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/aacraid/aachba.c", i32 886, i32 2}
!250 = !{ptr @.str.65, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/aacraid/aachba.c", i32 887, i32 2}
!252 = !{ptr @container_types, !253, !"container_types", i1 false, i1 false}
!253 = !{!"../drivers/scsi/aacraid/aachba.c", i32 866, i32 14}
!254 = distinct !{null, !255, !"__already_done", i1 false, i1 false}
!255 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!256 = !{ptr @.str.66, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.67, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.68, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3866, i32 3}
!260 = !{ptr @.str.69, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @aac_build_sg64._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @aac_build_sg64._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.70, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3416, i32 3}
!265 = !{ptr @.str.71, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @aac_srb_callback._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @aac_srb_callback._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.73, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3446, i32 5}
!270 = !{ptr @aac_srb_callback._entry.72, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @aac_srb_callback._entry_ptr.74, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.76, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3448, i32 5}
!274 = !{ptr @aac_srb_callback._entry.75, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @aac_srb_callback._entry_ptr.77, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.78, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3822, i32 3}
!278 = !{ptr @aac_build_sg._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @aac_build_sg._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.79, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3995, i32 3}
!282 = !{ptr @aac_build_sgraw2._entry, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @aac_build_sgraw2._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.80, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3914, i32 3}
!286 = !{ptr @aac_build_sgraw._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @aac_build_sgraw._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.81, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2498, i32 2}
!290 = !{ptr @.str.82, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @aac_read._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @aac_read._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.83, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2589, i32 2}
!295 = !{ptr @.str.84, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @aac_write._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @aac_write._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.85, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2682, i32 2}
!300 = !{ptr @.str.86, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @aac_synchronize._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @aac_synchronize._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.87, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/aacraid/aachba.c", i32 2621, i32 3}
!305 = !{ptr @.str.88, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @synchronize_callback._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @synchronize_callback._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.89, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/aacraid/aachba.c", i32 1168, i32 63}
!310 = !{ptr @.str.90, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/aacraid/aachba.c", i32 1147, i32 2}
!312 = !{ptr @.str.91, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @aac_get_container_serial._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @aac_get_container_serial._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = distinct !{null, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/aacraid/aachba.c", i32 1042, i32 5}
!317 = !{ptr @.str.93, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/aacraid/aachba.c", i32 1045, i32 5}
!319 = !{ptr @.str.94, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/aacraid/aachba.c", i32 1098, i32 41}
!321 = distinct !{null, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/aacraid/aachba.c", i32 926, i32 14}
!323 = !{ptr @.str.96, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/aacraid/aachba.c", i32 959, i32 24}
!325 = distinct !{null, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/aacraid/aachba.c", i32 965, i32 13}
!327 = !{ptr @.str.98, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/aacraid/aachba.c", i32 616, i32 2}
!329 = !{ptr @.str.99, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @aac_get_container_name._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @aac_get_container_name._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = distinct !{null, !333, !"__already_done", i1 false, i1 false}
!333 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!334 = distinct !{null, !333, !"<string literal>", i1 false, i1 false}
!335 = distinct !{null, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!337 = !{ptr @.str.102, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!339 = !{ptr @.str.103, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3737, i32 2}
!341 = !{ptr @.str.104, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @aac_send_srb_fib._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @aac_send_srb_fib._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.105, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/aacraid/aachba.c", i32 3781, i32 2}
!346 = !{ptr @.str.106, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @aac_send_hba_fib._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @aac_send_hba_fib._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.107, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/aacraid/aachba.c", i32 4099, i32 3}
!351 = !{ptr @aac_build_sghba._entry, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @aac_build_sghba._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{!"sp"}
!354 = !{i32 1, !"wchar_size", i32 2}
!355 = !{i32 1, !"min_enum_size", i32 4}
!356 = !{i32 8, !"branch-target-enforcement", i32 0}
!357 = !{i32 8, !"sign-return-address", i32 0}
!358 = !{i32 8, !"sign-return-address-all", i32 0}
!359 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!360 = !{i32 7, !"uwtable", i32 1}
!361 = !{i32 7, !"frame-pointer", i32 2}
!362 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!363 = !{!"branch_weights", i32 1, i32 2000}
!364 = !{ptr @aac_probe_container_callback1, ptr @aac_probe_container_callback2}
!365 = !{i64 2155327529, i64 2155328024, i64 2155327566, i64 2155327622, i64 2155327656, i64 2155327680, i64 2155327721, i64 2155327742, i64 2155327770, i64 2155327804}
!366 = !{i64 2155329528, i64 2155330023, i64 2155329565, i64 2155329621, i64 2155329655, i64 2155329679, i64 2155329720, i64 2155329741, i64 2155329769, i64 2155329803}
!367 = !{i64 2155305021, i64 2155305516, i64 2155305058, i64 2155305114, i64 2155305148, i64 2155305172, i64 2155305213, i64 2155305234, i64 2155305262, i64 2155305296}
!368 = !{i64 2155318589, i64 2155319084, i64 2155318626, i64 2155318682, i64 2155318716, i64 2155318740, i64 2155318781, i64 2155318802, i64 2155318830, i64 2155318864}
!369 = !{i64 2155307426, i64 2155307921, i64 2155307463, i64 2155307519, i64 2155307553, i64 2155307577, i64 2155307618, i64 2155307639, i64 2155307667, i64 2155307701}
!370 = !{i64 2155320996, i64 2155321491, i64 2155321033, i64 2155321089, i64 2155321123, i64 2155321147, i64 2155321188, i64 2155321209, i64 2155321237, i64 2155321271}
!371 = !{i64 2155314033, i64 2155314528, i64 2155314070, i64 2155314126, i64 2155314160, i64 2155314184, i64 2155314225, i64 2155314246, i64 2155314274, i64 2155314308}
!372 = !{i64 2155323635, i64 2155324130, i64 2155323672, i64 2155323728, i64 2155323762, i64 2155323786, i64 2155323827, i64 2155323848, i64 2155323876, i64 2155323910}
!373 = !{!"branch_weights", i32 2000, i32 1}
!374 = !{i64 6485751}
!375 = !{i64 6485948}
!376 = !{i64 2153971181}
!377 = !{!"auto-init"}
!378 = !{i64 2153990196, i64 2153990221}
!379 = !{i64 2155399496, i64 2155404052, i64 2155399533, i64 2155399589, i64 2155399623, i64 2155399647, i64 2155399688, i64 2155399709, i64 2155399737, i64 2155399771}
!380 = !{i64 2155431236, i64 2155431731, i64 2155431273, i64 2155431329, i64 2155431363, i64 2155431387, i64 2155431428, i64 2155431449, i64 2155431477, i64 2155431511}
!381 = !{i64 2155360157, i64 2155360652, i64 2155360194, i64 2155360250, i64 2155360284, i64 2155360308, i64 2155360349, i64 2155360370, i64 2155360398, i64 2155360432}
!382 = !{i64 2155375927, i64 2155376422, i64 2155375964, i64 2155376020, i64 2155376054, i64 2155376078, i64 2155376119, i64 2155376140, i64 2155376168, i64 2155376202}
!383 = !{i64 2155295839, i64 2155296333, i64 2155295876, i64 2155295932, i64 2155295966, i64 2155295990, i64 2155296031, i64 2155296052, i64 2155296080, i64 2155296114}
!384 = !{i64 2155286232, i64 2155286726, i64 2155286269, i64 2155286325, i64 2155286359, i64 2155286383, i64 2155286424, i64 2155286445, i64 2155286473, i64 2155286507}
!385 = !{i64 2155383966, i64 2155384461, i64 2155384003, i64 2155384059, i64 2155384093, i64 2155384117, i64 2155384158, i64 2155384179, i64 2155384207, i64 2155384241}
