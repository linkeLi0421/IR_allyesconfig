; ModuleID = '/llk/IR_all_yes/drivers/scsi/sym53c8xx_2/sym_glue.c_pt.bc'
source_filename = "../drivers/scsi/sym53c8xx_2/sym_glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sym_driver_setup = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_hcb = type { %struct.sym_ccbh, %struct.sym_tcbh, %struct.sym_lcbh, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x %struct.sym_tcb], ptr, i32, ptr, %struct.sym_shcb, i32, i32, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, %struct.sym_fwa_ba, %struct.sym_fwb_ba, %struct.sym_fwz_ba, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i16, i16, i16, ptr, i32, [8 x i8], [8 x i8], i32, i32, i8, i8, i8, ptr, %struct.sym_quehead, %struct.sym_quehead, %struct.sym_quehead, [4 x i8], %struct.sym_tblmove, %struct.sym_tblsel, i8, i8 }
%struct.sym_ccbh = type { %struct.sym_actscr, i32, i32, [4 x i8] }
%struct.sym_tcbh = type { i32, i32, i8, i8, i8, i8 }
%struct.sym_lcbh = type { i32, i32, i32 }
%struct.sym_actscr = type { i32, i32 }
%struct.sym_tcb = type { %struct.sym_tcbh, ptr, i32, ptr, ptr, %struct.sym_trans, %struct.sym_trans, ptr, i8, i8, i8, i8, i16, ptr }
%struct.sym_trans = type { i8, i8, i8, i8 }
%struct.sym_shcb = type { i32, [16 x i8], [8 x i8], ptr, ptr, ptr, %struct.timer_list, i32, i32, i8 }
%struct.sym_fwa_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwb_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwz_ba = type { i32, i32 }
%struct.sym_quehead = type { ptr, ptr }
%struct.sym_tblmove = type { i32, i32 }
%struct.sym_tblsel = type { i8, i8, i8, i8 }
%struct.sym_ccb = type { %struct.sym_dsb, ptr, [16 x i8], [32 x i8], i32, i32, i8, i8, i8, i8, i32, [12 x i8], [12 x i8], [6 x i8], i8, i8, i32, i32, i16, i8, i8, ptr, %struct.sym_quehead, i32, i32, i32, i32, i8, i8 }
%struct.sym_dsb = type { %struct.sym_ccbh, %struct.sym_pmc, %struct.sym_pmc, %struct.sym_tblsel, %struct.sym_tblmove, %struct.sym_tblmove, %struct.sym_tblmove, %struct.sym_tblmove, %struct.sym_tblmove, [96 x %struct.sym_tblmove] }
%struct.sym_pmc = type { %struct.sym_tblmove, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.execute_work = type { %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.pci_bus_region = type { i32, i32 }
%struct.sym_device = type { ptr, i32, i32, %struct.anon.84, %struct.sym_chip, ptr, i8 }
%struct.anon.84 = type { ptr, ptr }
%struct.sym_chip = type { i16, i16, ptr, i8, i8, i8, i8, i32 }
%struct.sym_nvram = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.Symbios_nvram }
%struct.Symbios_nvram = type { i16, i16, i16, i8, i8, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, [4 x %struct.Symbios_host], [16 x %struct.Symbios_target], [4 x %struct.Symbios_scam], [120 x i8], [6 x i8] }
%struct.Symbios_host = type { i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.Symbios_target = type { i8, i8, i8, i8, i16, i16 }
%struct.Symbios_scam = type { i16, i16, i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.sym_lcb = type { %struct.sym_lcbh, ptr, i16, i16, i16, i16, ptr, %struct.sym_slcb, i8, [2 x i16], i16, i8, i8, i8 }
%struct.sym_slcb = type { i16, i16 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }

@sym_driver_setup = dso_local global { %struct.sym_driver_setup, [52 x i8] } { %struct.sym_driver_setup { i16 16, i8 7, i8 1, i8 1, i8 0, i8 1, i8 7, i8 0, i8 3, i8 1, [8 x i32] zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@sym_debug_flags = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_cmd_per_lun = internal constant [22 x i8] c"sym53c8xx.cmd_per_lun\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@__param_cmd_per_lun = internal constant %struct.kernel_param { ptr @__param_str_cmd_per_lun, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @sym_driver_setup } }, section "__param", align 4
@__UNIQUE_ID_cmd_per_luntype287 = internal constant [38 x i8] c"sym53c8xx.parmtype=cmd_per_lun:ushort\00", section ".modinfo", align 1
@__param_str_burst = internal constant [16 x i8] c"sym53c8xx.burst\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@__param_burst = internal constant %struct.kernel_param { ptr @__param_str_burst, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_bursttype288 = internal constant [30 x i8] c"sym53c8xx.parmtype=burst:byte\00", section ".modinfo", align 1
@__param_str_led = internal constant [14 x i8] c"sym53c8xx.led\00", align 1
@__param_led = internal constant %struct.kernel_param { ptr @__param_str_led, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 3) } }, section "__param", align 4
@__UNIQUE_ID_ledtype289 = internal constant [28 x i8] c"sym53c8xx.parmtype=led:byte\00", section ".modinfo", align 1
@__param_str_diff = internal constant [15 x i8] c"sym53c8xx.diff\00", align 1
@__param_diff = internal constant %struct.kernel_param { ptr @__param_str_diff, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_difftype290 = internal constant [29 x i8] c"sym53c8xx.parmtype=diff:byte\00", section ".modinfo", align 1
@__param_str_irqm = internal constant [15 x i8] c"sym53c8xx.irqm\00", align 1
@__param_irqm = internal constant %struct.kernel_param { ptr @__param_str_irqm, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 5) } }, section "__param", align 4
@__UNIQUE_ID_irqmtype291 = internal constant [29 x i8] c"sym53c8xx.parmtype=irqm:byte\00", section ".modinfo", align 1
@__param_str_buschk = internal constant [17 x i8] c"sym53c8xx.buschk\00", align 1
@__param_buschk = internal constant %struct.kernel_param { ptr @__param_str_buschk, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 6) } }, section "__param", align 4
@__UNIQUE_ID_buschktype292 = internal constant [31 x i8] c"sym53c8xx.parmtype=buschk:byte\00", section ".modinfo", align 1
@__param_str_hostid = internal constant [17 x i8] c"sym53c8xx.hostid\00", align 1
@__param_hostid = internal constant %struct.kernel_param { ptr @__param_str_hostid, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 7) } }, section "__param", align 4
@__UNIQUE_ID_hostidtype293 = internal constant [31 x i8] c"sym53c8xx.parmtype=hostid:byte\00", section ".modinfo", align 1
@__param_str_verb = internal constant [15 x i8] c"sym53c8xx.verb\00", align 1
@__param_verb = internal constant %struct.kernel_param { ptr @__param_str_verb, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_verbtype294 = internal constant [29 x i8] c"sym53c8xx.parmtype=verb:byte\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"sym53c8xx.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @sym_debug_flags } }, section "__param", align 4
@__UNIQUE_ID_debugtype295 = internal constant [30 x i8] c"sym53c8xx.parmtype=debug:uint\00", section ".modinfo", align 1
@__param_str_settle = internal constant [17 x i8] c"sym53c8xx.settle\00", align 1
@__param_settle = internal constant %struct.kernel_param { ptr @__param_str_settle, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 9) } }, section "__param", align 4
@__UNIQUE_ID_settletype296 = internal constant [31 x i8] c"sym53c8xx.parmtype=settle:byte\00", section ".modinfo", align 1
@__param_str_nvram = internal constant [16 x i8] c"sym53c8xx.nvram\00", align 1
@__param_nvram = internal constant %struct.kernel_param { ptr @__param_str_nvram, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @sym_driver_setup, i64 10) } }, section "__param", align 4
@__UNIQUE_ID_nvramtype297 = internal constant [30 x i8] c"sym53c8xx.parmtype=nvram:byte\00", section ".modinfo", align 1
@__param_str_excl = internal constant [15 x i8] c"sym53c8xx.excl\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@excl_string = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_excl = internal constant %struct.kernel_param { ptr @__param_str_excl, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @excl_string } }, section "__param", align 4
@__UNIQUE_ID_excltype298 = internal constant [30 x i8] c"sym53c8xx.parmtype=excl:charp\00", section ".modinfo", align 1
@__param_str_safe = internal constant [15 x i8] c"sym53c8xx.safe\00", align 1
@safe_string = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_safe = internal constant %struct.kernel_param { ptr @__param_str_safe, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @safe_string } }, section "__param", align 4
@__UNIQUE_ID_safetype299 = internal constant [30 x i8] c"sym53c8xx.parmtype=safe:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_cmd_per_lun300 = internal constant [72 x i8] c"sym53c8xx.parm=cmd_per_lun:The maximum number of tags to use by default\00", section ".modinfo", align 1
@__UNIQUE_ID_burst301 = internal constant [78 x i8] c"sym53c8xx.parm=burst:Maximum burst.  0 to disable, 255 to read from registers\00", section ".modinfo", align 1
@__UNIQUE_ID_led302 = internal constant [50 x i8] c"sym53c8xx.parm=led:Set to 1 to enable LED support\00", section ".modinfo", align 1
@__UNIQUE_ID_diff303 = internal constant [90 x i8] c"sym53c8xx.parm=diff:0 for no differential mode, 1 for BIOS, 2 for always, 3 for not GPIO3\00", section ".modinfo", align 1
@__UNIQUE_ID_irqm304 = internal constant [73 x i8] c"sym53c8xx.parm=irqm:0 for open drain, 1 to leave alone, 2 for totem pole\00", section ".modinfo", align 1
@__UNIQUE_ID_buschk305 = internal constant [81 x i8] c"sym53c8xx.parm=buschk:0 to not check, 1 for detach on error, 2 for warn on error\00", section ".modinfo", align 1
@__UNIQUE_ID_hostid306 = internal constant [63 x i8] c"sym53c8xx.parm=hostid:The SCSI ID to use for the host adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_verb307 = internal constant [75 x i8] c"sym53c8xx.parm=verb:0 for minimal verbosity, 1 for normal, 2 for excessive\00", section ".modinfo", align 1
@__UNIQUE_ID_debug308 = internal constant [50 x i8] c"sym53c8xx.parm=debug:Set bits to enable debugging\00", section ".modinfo", align 1
@__UNIQUE_ID_settle309 = internal constant [58 x i8] c"sym53c8xx.parm=settle:Settle delay in seconds.  Default 3\00", section ".modinfo", align 1
@__UNIQUE_ID_nvram310 = internal constant [47 x i8] c"sym53c8xx.parm=nvram:Option currently not used\00", section ".modinfo", align 1
@__UNIQUE_ID_excl311 = internal constant [90 x i8] c"sym53c8xx.parm=excl:List ioport addresses here to prevent controllers from being attached\00", section ".modinfo", align 1
@__UNIQUE_ID_safe312 = internal constant [56 x i8] c"sym53c8xx.parm=safe:Set other settings to a \22safe mode\22\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [50 x i8] c"sym53c8xx.file=drivers/scsi/sym53c8xx_2/sym53c8xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [22 x i8] c"sym53c8xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version315 = internal constant [24 x i8] c"sym53c8xx.version=2.2.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sym53c8xx\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.2.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author316 = internal constant [49 x i8] c"sym53c8xx.author=Matthew Wilcox <matthew@wil.cx>\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [74 x i8] c"sym53c8xx.description=NCR, Symbios and LSI 8xx and 1010 PCI SCSI adapters\00", section ".modinfo", align 1
@sym_xpt_async_bus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s: SCSI BUS has been reset.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sym_xpt_async_bus_reset\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/sym53c8xx_2/sym_glue.c\00", [60 x i8] zeroinitializer }, align 32
@sym_xpt_async_bus_reset._entry_ptr = internal global ptr @sym_xpt_async_bus_reset._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sym_xpt_async_bus_reset._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: command processing suspended for %d seconds\0A\00", [45 x i8] zeroinitializer }, align 32
@sym_xpt_async_bus_reset._entry_ptr.8 = internal global ptr @sym_xpt_async_bus_reset._entry.6, section ".printk_index", align 4
@sym_set_cam_result_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 228, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"COMMAND FAILED (%x %x %x).\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sym_set_cam_result_error\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sym_set_cam_result_error._entry_ptr = internal global ptr @sym_set_cam_result_error._entry, section ".printk_index", align 4
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"got DMA_BIDIRECTIONAL command\00", [34 x i8] zeroinitializer }, align 32
@sym_log_bus_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 481, ptr @.str.16, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PCI bus error: status = 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sym_log_bus_error\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sym_log_bus_error._entry_ptr = internal global ptr @sym_log_bus_error._entry, section ".printk_index", align 4
@sym2_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sym2_id_table, ptr @sym2_probe, ptr @sym2_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sym2_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@sym2_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_sym53c8xx__321_2056_sym2_init6 = internal global ptr @sym2_init, section ".initcall6.init", align 4
@__exitcall_sym2_exit = internal global ptr @sym2_exit, section ".exitcall.exit", align 4
@sym2_id_table = internal global { [18 x %struct.pci_device_id], [128 x i8] } { [18 x %struct.pci_device_id] [%struct.pci_device_id { i32 4096, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 10, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 11, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 12, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 13, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 15, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 16, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 19, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 33, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 143, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@sym2_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @sym2_io_error_detected, ptr @sym2_io_slot_dump, ptr @sym2_io_slot_reset, ptr null, ptr null, ptr @sym2_io_resume }, [40 x i8] zeroinitializer }, align 32
@sym2_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sym53c8xx_queue_command, ptr null, ptr null, ptr @.str.1, ptr @sym53c8xx_info, ptr null, ptr null, ptr null, ptr @sym53c8xx_eh_abort_handler, ptr @sym53c8xx_eh_device_reset_handler, ptr null, ptr @sym53c8xx_eh_bus_reset_handler, ptr @sym53c8xx_eh_host_reset_handler, ptr @sym53c8xx_slave_alloc, ptr @sym53c8xx_slave_configure, ptr @sym53c8xx_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sym_show_info, ptr @sym_user_command, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 0, i32 7, i16 0, i16 0, i32 65535, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@attach_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sym_check_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 1420, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sym_check_supported\00", [44 x i8] zeroinitializer }, align 32
@sym_check_supported._entry_ptr = internal global ptr @sym_check_supported._entry, section ".printk_index", align 4
@sym_iomap_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 1533, ptr @.str.21, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not map registers; giving up.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sym_iomap_device\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sym_iomap_device._entry_ptr = internal global ptr @sym_iomap_device._entry, section ".printk_index", align 4
@sym_iomap_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.5, i32 1541, ptr @.str.16, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not map SRAM; continuing anyway.\0A\00", [56 x i8] zeroinitializer }, align 32
@sym_iomap_device._entry_ptr.24 = internal global ptr @sym_iomap_device._entry.22, section ".printk_index", align 4
@sym_check_raid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 1449, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"not initializing, driven by RAID controller.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym_check_raid\00", [17 x i8] zeroinitializer }, align 32
@sym_check_raid._entry_ptr = internal global ptr @sym_check_raid._entry, section ".printk_index", align 4
@sym_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016sym%d: <%s> rev 0x%x at pci %s irq %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sym_attach\00", [21 x i8] zeroinitializer }, align 32
@sym_attach._entry_ptr = internal global ptr @sym_attach._entry, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HCB\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sym%d\00", [26 x i8] zeroinitializer }, align 32
@sym_attach._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.5, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: No suitable DMA available\0A\00", [63 x i8] zeroinitializer }, align 32
@sym_attach._entry_ptr.33 = internal global ptr @sym_attach._entry.31, section ".printk_index", align 4
@sym_attach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.5, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: request irq %u failure\0A\00", [34 x i8] zeroinitializer }, align 32
@sym_attach._entry_ptr.36 = internal global ptr @sym_attach._entry.34, section ".printk_index", align 4
@sym_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&np->s.timer)\00", [17 x i8] zeroinitializer }, align 32
@sym_attach._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.5, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s: FATAL ERROR: CHECK SCSI BUS - CABLES, TERMINATION, DEVICE POWER etc.!\0A\00", [51 x i8] zeroinitializer }, align 32
@sym_attach._entry_ptr.40 = internal global ptr @sym_attach._entry.38, section ".printk_index", align 4
@sym_attach._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.5, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016sym%d: giving up ...\0A\00", [40 x i8] zeroinitializer }, align 32
@sym_attach._entry_ptr.43 = internal global ptr @sym_attach._entry.41, section ".printk_index", align 4
@sym53c8xx_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\017[\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym53c8xx_intr\00", [17 x i8] zeroinitializer }, align 32
@sym53c8xx_intr._entry_ptr = internal global ptr @sym53c8xx_intr._entry, section ".printk_index", align 4
@sym53c8xx_intr._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\017]\0A\00", [27 x i8] zeroinitializer }, align 32
@sym53c8xx_intr._entry_ptr.48 = internal global ptr @sym53c8xx_intr._entry.46, section ".printk_index", align 4
@sym_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: command processing resumed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sym_timer\00", [22 x i8] zeroinitializer }, align 32
@sym_timer._entry_ptr = internal global ptr @sym_timer._entry, section ".printk_index", align 4
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sym-2.2.3\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ABORT\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s operation started\0A\00", [42 x i8] zeroinitializer }, align 32
@sym_eh_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 663, ptr @.str.16, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s operation %s.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym_eh_handler\00", [17 x i8] zeroinitializer }, align 32
@sym_eh_handler._entry_ptr = internal global ptr @sym_eh_handler._entry, section ".printk_index", align 4
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timed-out\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DEVICE RESET\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUS RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HOST RESET\00", [21 x i8] zeroinitializer }, align 32
@sym53c8xx_slave_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 741, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Scan at boot disabled in NVRAM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sym53c8xx_slave_alloc\00", [42 x i8] zeroinitializer }, align 32
@sym53c8xx_slave_alloc._entry_ptr = internal global ptr @sym53c8xx_slave_alloc._entry, section ".printk_index", align 4
@sym53c8xx_slave_alloc._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 752, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Multiple LUNs disabled in NVRAM\0A\00", [63 x i8] zeroinitializer }, align 32
@sym53c8xx_slave_alloc._entry_ptr.67 = internal global ptr @sym53c8xx_slave_alloc._entry.65, section ".printk_index", align 4
@sym_tune_dev_queuing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 712, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"tagged command queuing %s, command queue depth %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sym_tune_dev_queuing\00", [43 x i8] zeroinitializer }, align 32
@sym_tune_dev_queuing._entry_ptr = internal global ptr @sym_tune_dev_queuing._entry, section ".printk_index", align 4
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@sym53c8xx_slave_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 831, ptr @.str.16, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Removing busy LCB (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sym53c8xx_slave_destroy\00", [40 x i8] zeroinitializer }, align 32
@sym53c8xx_slave_destroy._entry_ptr = internal global ptr @sym53c8xx_slave_destroy._entry, section ".printk_index", align 4
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Chip sym53c%s, device id 0x%x, revision id 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"At PCI address %s, IRQ %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Min. period factor %d, %s SCSI BUS%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Wide\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Narrow\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", DT capable\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Max. started commands %d, max. commands per LUN %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setsync\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"settags\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setverbose\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setwide\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setdebug\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setflag\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resetdev\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cleardev\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alloc\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"phase\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scatter\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"script\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tiny\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timing\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nego\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tags\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pointer\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no_disc\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@sym_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.5, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: detaching ...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sym_detach\00", [21 x i8] zeroinitializer }, align 32
@sym_detach._entry_ptr = internal global ptr @sym_detach._entry, section ".printk_index", align 4
@sym_detach._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.5, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: resetting chip\0A\00", [44 x i8] zeroinitializer }, align 32
@sym_detach._entry_ptr.107 = internal global ptr @sym_detach._entry.105, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sym2_io_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: recovering from a PCI slot reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sym2_io_slot_reset\00", [45 x i8] zeroinitializer }, align 32
@sym2_io_slot_reset._entry_ptr = internal global ptr @sym2_io_slot_reset._entry, section ".printk_index", align 4
@sym2_io_slot_reset._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.5, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Unable to enable after PCI reset\0A\00", [56 x i8] zeroinitializer }, align 32
@sym2_io_slot_reset._entry_ptr.112 = internal global ptr @sym2_io_slot_reset._entry.110, section ".printk_index", align 4
@sym2_io_slot_reset._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.5, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unable to reset scsi host\0A\00", [63 x i8] zeroinitializer }, align 32
@sym2_io_slot_reset._entry_ptr.115 = internal global ptr @sym2_io_slot_reset._entry.113, section ".printk_index", align 4
@sym2_setup_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014sym53c8xxIgnoring parameter %s passed to safe option\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sym2_setup_params\00", [46 x i8] zeroinitializer }, align 32
@sym2_setup_params._entry_ptr = internal global ptr @sym2_setup_params._entry, section ".printk_index", align 4
@sym2_transport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 } { ptr null, ptr @sym2_set_period, ptr null, ptr @sym2_set_offset, ptr null, ptr @sym2_set_width, ptr null, ptr null, ptr null, ptr @sym2_set_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sym2_get_signalling, ptr null, ptr null, i8 -24, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 132, i64 133, i64 134]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 110, i64 121]
@__sancov_gen_cov_switch_values.121 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 11, i64 12, i64 14, i64 15, i64 17]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 12, i64 17]
@__sancov_gen_cov_switch_values.123 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 11, i64 14, i64 15, i64 18, i64 19]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"sym_driver_setup\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 43, i32 25 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"sym_debug_flags\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 44, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"excl_string\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 46, i32 14 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"safe_string\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 47, i32 14 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 77, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 144, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 148, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 226, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 363, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 480, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"sym2_driver\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2027, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant [24 x i8] c"sym2_transport_template\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 112, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"sym2_id_table\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1980, i32 29 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"sym2_err_handler\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2020, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"sym2_template\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1629, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"attach_count\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1652, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1420, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1533, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1540, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1448, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1239, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1261, i32 49 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1291, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1297, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1311, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1333, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1362, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1366, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 533, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 539, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 441, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 854, i32 9 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 673, i32 38 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 582, i32 33 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 662, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 87, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 678, i32 45 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 683, i32 42 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 688, i32 43 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 740, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 751, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 710, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 830, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1161, i32 16 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1164, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1166, i32 16 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1168, i32 18 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1168, i32 27 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1169, i32 21 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1169, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1171, i32 16 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1026, i32 38 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1028, i32 43 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1030, i32 43 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1032, i32 43 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1035, i32 43 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1038, i32 43 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1040, i32 43 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1042, i32 43 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1063, i32 39 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1091, i32 40 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1093, i32 45 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1095, i32 45 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1097, i32 45 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1099, i32 45 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1101, i32 45 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1103, i32 45 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1105, i32 45 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1107, i32 45 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1109, i32 45 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1111, i32 45 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1125, i32 40 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1605, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1614, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1805, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1809, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1829, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 106, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant [25 x i8] c"sym2_transport_functions\00", align 1
@___asan_gen_.532 = private constant [39 x i8] c"../drivers/scsi/sym53c8xx_2/sym_glue.c\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1962, i32 37 }
@llvm.compiler.used = appending global [211 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_burst301, ptr @__UNIQUE_ID_bursttype288, ptr @__UNIQUE_ID_buschk305, ptr @__UNIQUE_ID_buschktype292, ptr @__UNIQUE_ID_cmd_per_lun300, ptr @__UNIQUE_ID_cmd_per_luntype287, ptr @__UNIQUE_ID_debug308, ptr @__UNIQUE_ID_debugtype295, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_diff303, ptr @__UNIQUE_ID_difftype290, ptr @__UNIQUE_ID_excl311, ptr @__UNIQUE_ID_excltype298, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_hostid306, ptr @__UNIQUE_ID_hostidtype293, ptr @__UNIQUE_ID_irqm304, ptr @__UNIQUE_ID_irqmtype291, ptr @__UNIQUE_ID_led302, ptr @__UNIQUE_ID_ledtype289, ptr @__UNIQUE_ID_license314, ptr @__UNIQUE_ID_nvram310, ptr @__UNIQUE_ID_nvramtype297, ptr @__UNIQUE_ID_safe312, ptr @__UNIQUE_ID_safetype299, ptr @__UNIQUE_ID_settle309, ptr @__UNIQUE_ID_settletype296, ptr @__UNIQUE_ID_verb307, ptr @__UNIQUE_ID_verbtype294, ptr @__UNIQUE_ID_version315, ptr @__exitcall_sym2_exit, ptr @__initcall__kmod_sym53c8xx__321_2056_sym2_init6, ptr @__modver_attr, ptr @__param_burst, ptr @__param_buschk, ptr @__param_cmd_per_lun, ptr @__param_debug, ptr @__param_diff, ptr @__param_excl, ptr @__param_hostid, ptr @__param_irqm, ptr @__param_led, ptr @__param_nvram, ptr @__param_safe, ptr @__param_settle, ptr @__param_verb, ptr @sym2_exit, ptr @sym2_io_slot_reset._entry, ptr @sym2_io_slot_reset._entry.110, ptr @sym2_io_slot_reset._entry.113, ptr @sym2_io_slot_reset._entry_ptr, ptr @sym2_io_slot_reset._entry_ptr.112, ptr @sym2_io_slot_reset._entry_ptr.115, ptr @sym2_setup_params._entry, ptr @sym2_setup_params._entry_ptr, ptr @sym53c8xx_intr._entry, ptr @sym53c8xx_intr._entry.46, ptr @sym53c8xx_intr._entry_ptr, ptr @sym53c8xx_intr._entry_ptr.48, ptr @sym53c8xx_slave_alloc._entry, ptr @sym53c8xx_slave_alloc._entry.65, ptr @sym53c8xx_slave_alloc._entry_ptr, ptr @sym53c8xx_slave_alloc._entry_ptr.67, ptr @sym53c8xx_slave_destroy._entry, ptr @sym53c8xx_slave_destroy._entry_ptr, ptr @sym_attach._entry, ptr @sym_attach._entry.31, ptr @sym_attach._entry.34, ptr @sym_attach._entry.38, ptr @sym_attach._entry.41, ptr @sym_attach._entry_ptr, ptr @sym_attach._entry_ptr.33, ptr @sym_attach._entry_ptr.36, ptr @sym_attach._entry_ptr.40, ptr @sym_attach._entry_ptr.43, ptr @sym_check_raid._entry, ptr @sym_check_raid._entry_ptr, ptr @sym_check_supported._entry, ptr @sym_check_supported._entry_ptr, ptr @sym_detach._entry, ptr @sym_detach._entry.105, ptr @sym_detach._entry_ptr, ptr @sym_detach._entry_ptr.107, ptr @sym_eh_handler._entry, ptr @sym_eh_handler._entry_ptr, ptr @sym_iomap_device._entry, ptr @sym_iomap_device._entry.22, ptr @sym_iomap_device._entry_ptr, ptr @sym_iomap_device._entry_ptr.24, ptr @sym_log_bus_error._entry, ptr @sym_log_bus_error._entry_ptr, ptr @sym_set_cam_result_error._entry, ptr @sym_set_cam_result_error._entry_ptr, ptr @sym_timer._entry, ptr @sym_timer._entry_ptr, ptr @sym_tune_dev_queuing._entry, ptr @sym_tune_dev_queuing._entry_ptr, ptr @sym_xpt_async_bus_reset._entry, ptr @sym_xpt_async_bus_reset._entry.6, ptr @sym_xpt_async_bus_reset._entry_ptr, ptr @sym_xpt_async_bus_reset._entry_ptr.8, ptr @sym_driver_setup, ptr @sym_debug_flags, ptr @excl_string, ptr @safe_string, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sym2_driver, ptr @sym2_transport_template, ptr @sym2_id_table, ptr @sym2_err_handler, ptr @sym2_template, ptr @attach_count, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @sym_attach.__key, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @init_completion.__key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @sym2_transport_functions], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_driver_setup to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_debug_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @excl_string to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_string to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_xpt_async_bus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_xpt_async_bus_reset._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_set_cam_result_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_log_bus_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_id_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_check_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_iomap_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_iomap_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_check_raid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_attach._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_attach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_attach._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_attach._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c8xx_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c8xx_intr._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_eh_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c8xx_slave_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c8xx_slave_alloc._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_tune_dev_queuing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c8xx_slave_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_detach._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_io_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_io_slot_reset._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_io_slot_reset._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_setup_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym2_transport_functions to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_xpt_done(ptr nocapture readnone %np, ptr noundef %cmd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %0 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SCp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  tail call void @scsi_done(ptr noundef %cmd) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_xpt_async_bus_reset(ptr noundef %np) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %inst_name) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 8), align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 100
  %add = add i32 %mul, %0
  %settle_time = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 8
  %2 = ptrtoint ptr %settle_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %settle_time, align 4
  %settle_time_valid = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 9
  %3 = ptrtoint ptr %settle_time_valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %settle_time_valid, align 4
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %4 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  br i1 %cmp, label %do.end6, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %inst_name, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_set_cam_result_error(ptr noundef %np, ptr nocapture noundef readonly %cp, i32 noundef %resid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else39, label %if.then

if.then:                                          ; preds = %entry
  %sv_scsi_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 14
  %7 = ptrtoint ptr %sv_scsi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sv_scsi_status, align 2
  %conv7 = zext i8 %8 to i32
  %sv_resid = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 16
  %9 = ptrtoint ptr %sv_resid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sv_resid, align 4
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %11 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %sv_xerr_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 15
  %13 = ptrtoint ptr %sv_xerr_status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sv_xerr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end_crit_edge, label %if.then12

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %conv10 = zext i8 %14 to i32
  tail call void @sym_print_xerr(ptr noundef %1, i32 noundef %conv10) #13
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %arrayidx18 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %16)
  %cmp = icmp eq i8 %16, -124
  br i1 %cmp, label %land.lhs.true21, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true21:                                  ; preds = %if.end
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp27 = icmp eq i8 %18, 0
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true21.if.else_crit_edge

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true29:                                  ; preds = %land.lhs.true21
  %xerr_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 9
  %19 = ptrtoint ptr %xerr_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xerr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp31 = icmp eq i8 %20, 0
  br i1 %cmp31, label %if.then33, label %land.lhs.true29.if.else_crit_edge

land.lhs.true29.if.else_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  %sv_xerr_status34 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 15
  %21 = ptrtoint ptr %sv_xerr_status34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sv_xerr_status34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  %..i = select i1 %tobool1.not.i, i32 458752, i32 393216
  %cam_status.addr.0.i = select i1 %tobool.not.i, i32 0, i32 %..i
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %24 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sense_buffer, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 96)
  %27 = load ptr, ptr %sense_buffer, align 4
  %sns_bbuf = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 3
  %28 = call ptr @memcpy(ptr %27, ptr %sns_bbuf, i32 32)
  br label %if.end90

if.else:                                          ; preds = %land.lhs.true29.if.else_crit_edge, %land.lhs.true21.if.else_crit_edge, %if.end.if.else_crit_edge
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %call37 = tail call i32 @sym_reset_scsi_target(ptr noundef %np, i32 noundef %32) #13
  br label %if.end90

if.else39:                                        ; preds = %entry
  %arrayidx43 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %34 to i32
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %34, label %if.else66 [
    i8 -124, label %if.else39.if.end90_crit_edge
    i8 -123, label %if.then56
    i8 -122, label %if.then65
  ]

if.else39.if.end90_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then56:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then65:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.else66:                                        ; preds = %if.else39
  %verbose67 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %36 = ptrtoint ptr %verbose67 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %verbose67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool68.not = icmp eq i8 %37, 0
  br i1 %tobool68.not, label %if.else66.if.end83_crit_edge, label %do.end

if.else66.if.end83_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

do.end:                                           ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #15
  %device70 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %device70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device70, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %39, i32 0, i32 55
  %xerr_status81 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 9
  %40 = ptrtoint ptr %xerr_status81 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %xerr_status81, align 1
  %conv82 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.9, i32 noundef %conv44, i32 noundef %conv, i32 noundef %conv82) #16
  br label %if.end83

if.end83:                                         ; preds = %do.end, %if.else66.if.end83_crit_edge
  %xerr_status84 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 9
  %42 = ptrtoint ptr %xerr_status84 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %xerr_status84, align 1
  %44 = and i8 %43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i119 = icmp eq i8 %44, 0
  %cam_status.addr.0.i121 = select i1 %tobool1.not.i119, i32 458752, i32 393216
  br label %if.end90

if.end90:                                         ; preds = %if.end83, %if.then65, %if.then56, %if.else39.if.end90_crit_edge, %if.else, %if.then33
  %resid.addr.0 = phi i32 [ %10, %if.then33 ], [ %10, %if.else ], [ %resid, %if.then56 ], [ %resid, %if.then65 ], [ %resid, %if.end83 ], [ %resid, %if.else39.if.end90_crit_edge ]
  %cam_status.0 = phi i32 [ %cam_status.addr.0.i, %if.then33 ], [ 458752, %if.else ], [ 65536, %if.then56 ], [ 458752, %if.then65 ], [ %cam_status.addr.0.i121, %if.end83 ], [ 0, %if.else39.if.end90_crit_edge ]
  %scsi_status.0 = phi i32 [ %conv7, %if.then33 ], [ %conv7, %if.else ], [ %conv, %if.then56 ], [ %conv, %if.then65 ], [ %conv, %if.end83 ], [ %conv, %if.else39.if.end90_crit_edge ]
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %resid.addr.0, ptr %resid_len.i, align 4
  %or = or i32 %scsi_status.0, %cam_status.0
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %46 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %result, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_print_xerr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_reset_scsi_target(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_setup_data_and_start(ptr noundef %np, ptr noundef %cmd, ptr noundef %cp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cdb_buf.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 2
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %2 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_len.i, align 4
  %conv.i = zext i16 %3 to i32
  %4 = call ptr @memcpy(ptr %cdb_buf.i, ptr %1, i32 %conv.i)
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 17
  %5 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccb_ba.i, align 4
  %add.i = add i32 %6, 860
  %7 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  %cmd1.i = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 6
  %addr.i = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr.i, align 4
  %9 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cmd_len.i, align 4
  %conv3.i = zext i16 %10 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #13
  %12 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cmd1.i, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %13 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.not = icmp eq i32 %14, 3
  %data_len = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 4
  %15 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data_len, align 4
  br i1 %cmp.not, label %if.end12.thread, label %if.then1

if.then1:                                         ; preds = %entry
  %call.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then1.sym_scatter.exit.thread_crit_edge

if.then1.sym_scatter.exit.thread_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_scatter.exit.thread

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %call.i)
  %cmp2.i = icmp ugt i32 %call.i, 96
  br i1 %cmp2.i, label %cleanup.thread.i, label %for.body.lr.ph.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  br label %sym_scatter.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %target1.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %16 = ptrtoint ptr %target1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %target1.i, align 2
  %idxprom.i = zext i8 %17 to i32
  %sub.i = sub nuw nsw i32 96, %call.i
  %arrayidx5.i = getelementptr %struct.sym_dsb, ptr %cp, i32 0, i32 9, i32 %sub.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %18 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdb.i.i, align 4
  %wval.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom.i, i32 0, i32 5
  %odd_byte_adjustment.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %do.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sg.048.i = phi ptr [ %19, %for.body.lr.ph.i ], [ %call19.i, %do.body.i.for.body.i_crit_edge ]
  %segment.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc18.i, %do.body.i.for.body.i_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.048.i, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.048.i, i32 0, i32 4
  %22 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.do.body.i_crit_edge, label %land.lhs.true.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %24 = ptrtoint ptr %wval.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wval.i, align 1
  %26 = and i8 %25, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not.i = icmp eq i8 %26, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then10.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %23, 1
  %27 = ptrtoint ptr %odd_byte_adjustment.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %odd_byte_adjustment.i, align 1
  %inc11.i = add i8 %28, 1
  store i8 %inc11.i, ptr %odd_byte_adjustment.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.then10.i, %land.lhs.true.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge
  %len.0.i = phi i32 [ %inc.i, %if.then10.i ], [ %23, %land.lhs.true.i.do.body.i_crit_edge ], [ %23, %for.body.i.do.body.i_crit_edge ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  %arrayidx13.i = getelementptr %struct.sym_tblmove, ptr %arrayidx5.i, i32 %segment.047.i
  %addr.i69 = getelementptr %struct.sym_tblmove, ptr %arrayidx5.i, i32 %segment.047.i, i32 1
  %30 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %addr.i69, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %len.0.i) #13
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx13.i, align 4
  %33 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len, align 4
  %add17.i = add i32 %34, %len.0.i
  store i32 %add17.i, ptr %data_len, align 4
  %inc18.i = add nuw nsw i32 %segment.047.i, 1
  %call19.i = tail call ptr @sg_next(ptr noundef %sg.048.i) #13
  %exitcond.not.i = icmp eq i32 %inc18.i, %call.i
  br i1 %exitcond.not.i, label %sym_scatter.exit, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sym_scatter.exit.thread:                          ; preds = %cleanup.thread.i, %if.then1.sym_scatter.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -2, %if.then1.sym_scatter.exit.thread_crit_edge ], [ -1, %cleanup.thread.i ]
  %segments77 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 5
  %35 = ptrtoint ptr %segments77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.1.i.ph, ptr %segments77, align 4
  br label %out_abort

sym_scatter.exit:                                 ; preds = %do.body.i
  %segments = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 5
  %36 = ptrtoint ptr %segments to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i, ptr %segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %sym_scatter.exit.out_abort_crit_edge, label %if.end12

sym_scatter.exit.out_abort_crit_edge:             ; preds = %sym_scatter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_abort

if.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %segments11 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 5
  %37 = ptrtoint ptr %segments11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %segments11, align 4
  br label %sw.default

if.end12:                                         ; preds = %sym_scatter.exit
  %38 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %14, label %if.end12.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb16
  ]

if.end12.sw.default_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.11, ptr noundef %cmd, ptr noundef nonnull @.str.13) #13
  br label %out_abort

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %data_out2 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 21
  %39 = ptrtoint ptr %data_out2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_out2, align 4
  %add = add i32 %40, 8
  %41 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %segments, align 4
  %mul.neg = mul i32 %42, -8
  %sub15 = add i32 %mul.neg, %40
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %45 = or i8 %44, 64
  store i8 %45, ptr %arrayidx, align 1
  %data_in2 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 19
  %46 = ptrtoint ptr %data_in2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_in2, align 4
  %add19 = add i32 %47, 8
  %48 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %segments, align 4
  %mul22.neg = mul i32 %49, -8
  %sub23 = add i32 %mul22.neg, %47
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12.sw.default_crit_edge, %if.end12.thread
  %fwb_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55
  %50 = ptrtoint ptr %fwb_bas to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fwb_bas, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb13
  %lastp.0 = phi i32 [ %51, %sw.default ], [ %sub23, %sw.bb16 ], [ %sub15, %sw.bb13 ]
  %goalp.0 = phi i32 [ %51, %sw.default ], [ %add19, %sw.bb16 ], [ %add, %sw.bb13 ]
  %52 = tail call i32 @llvm.bswap.i32(i32 %lastp.0)
  %lastp27 = getelementptr inbounds %struct.sym_ccbh, ptr %cp, i32 0, i32 2
  %53 = ptrtoint ptr %lastp27 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lastp27, align 4
  %savep = getelementptr inbounds %struct.sym_ccbh, ptr %cp, i32 0, i32 1
  %54 = ptrtoint ptr %savep to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %savep, align 4
  %startp = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 23
  %55 = ptrtoint ptr %startp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %startp, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %goalp.0)
  %goalp33 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 24
  %57 = ptrtoint ptr %goalp33 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %goalp33, align 4
  tail call void @sym_put_start_queue(ptr noundef %np, ptr noundef %cp) #13
  br label %cleanup

out_abort:                                        ; preds = %sw.bb, %sym_scatter.exit.out_abort_crit_edge, %sym_scatter.exit.thread
  %result.i71 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %58 = ptrtoint ptr %result.i71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %result.i71, align 4
  %and.i72 = and i32 %59, -16711681
  %or.i73 = or i32 %and.i72, 458752
  store i32 %or.i73, ptr %result.i71, align 4
  tail call void @sym_free_ccb(ptr noundef %np, ptr noundef %cp) #13
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %60 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %SCp.i, align 4
  %tobool.not.i74 = icmp eq ptr %61, null
  br i1 %tobool.not.i74, label %out_abort.sym_xpt_done.exit_crit_edge, label %if.then.i75

out_abort.sym_xpt_done.exit_crit_edge:            ; preds = %out_abort
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_xpt_done.exit

if.then.i75:                                      ; preds = %out_abort
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef nonnull %61) #13
  br label %sym_xpt_done.exit

sym_xpt_done.exit:                                ; preds = %if.then.i75, %out_abort.sym_xpt_done.exit_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  tail call void @scsi_done(ptr noundef %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %sym_xpt_done.exit, %sw.epilog
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_put_start_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_free_ccb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_log_bus_error(ptr noundef %shost) local_unnamed_addr #1 align 64 {
entry:
  %pci_sts = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_sts) #13
  %2 = ptrtoint ptr %pci_sts to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %pci_sts, align 2, !annotation !342
  %call2 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %pci_sts) #13
  %3 = ptrtoint ptr %pci_sts to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pci_sts, align 2
  %5 = and i16 %4, -1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %4) #13
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %6 = ptrtoint ptr %pci_sts to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pci_sts, align 2
  %8 = and i16 %7, -1792
  %and5 = zext i16 %8 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.14, i32 noundef %and5) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_sts) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sym2_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @sym2_driver) #13
  %0 = load ptr, ptr @sym2_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_release_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sym2_init() #5 section ".init.text" align 64 {
entry:
  %next_p.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @excl_string, align 4
  %tobool.not14.not.i = icmp eq ptr %0, null
  br i1 %tobool.not14.not.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.016.i = phi ptr [ %4, %while.body.i.while.body.i_crit_edge ], [ %0, %entry.while.body.i_crit_edge ]
  %xi.015.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_p.i) #13
  %1 = ptrtoint ptr %next_p.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %next_p.i, align 4, !annotation !342
  %call.i = call i32 @simple_strtoul(ptr noundef nonnull %p.016.i, ptr noundef nonnull %next_p.i, i32 noundef 0) #13
  %inc.i = add nuw nsw i32 %xi.015.i, 1
  %arrayidx.i = getelementptr %struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 %xi.015.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %next_p.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next_p.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_p.i) #13
  %tobool.not.i = icmp ne ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %xi.015.i)
  %cmp.i = icmp ult i32 %xi.015.i, 7
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %5 = load ptr, ptr @safe_string, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %while.end.i.sym2_setup_params.exit_crit_edge, label %if.then.i

while.end.i.sym2_setup_params.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym2_setup_params.exit

if.then.i:                                        ; preds = %while.end.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %7, label %do.end.i [
    i8 121, label %if.then4.i
    i8 110, label %if.then.i.sym2_setup_params.exit_crit_edge
  ]

if.then.i.sym2_setup_params.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym2_setup_params.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @sym_driver_setup, align 4
  store i8 1, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 3), align 4
  store i8 0, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 4), align 1
  store i8 2, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 5), align 2
  store i8 7, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 6), align 1
  store i8 2, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 7), align 4
  store i8 10, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 8), align 1
  store i8 1, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 9), align 2
  br label %sym2_setup_params.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull %5) #16
  br label %sym2_setup_params.exit

sym2_setup_params.exit:                           ; preds = %do.end.i, %if.then4.i, %if.then.i.sym2_setup_params.exit_crit_edge, %while.end.i.sym2_setup_params.exit_crit_edge
  %call = call ptr @spi_attach_transport(ptr noundef nonnull @sym2_transport_functions) #13
  store ptr %call, ptr @sym2_transport_template, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sym2_setup_params.exit.cleanup_crit_edge, label %if.end

sym2_setup_params.exit.cleanup_crit_edge:         ; preds = %sym2_setup_params.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sym2_setup_params.exit
  %call1 = call i32 @__pci_register_driver(ptr noundef nonnull @sym2_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = load ptr, ptr @sym2_transport_template, align 4
  call void @spi_release_transport(ptr noundef %9) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %sym2_setup_params.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %sym2_setup_params.exit.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym2_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #1 align 64 {
entry:
  %bus_addr.i = alloca %struct.pci_bus_region, align 4
  %sym_dev = alloca %struct.sym_device, align 4
  %nvram = alloca %struct.sym_nvram, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sym_dev) #13
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %nvram) #13
  %0 = getelementptr inbounds i8, ptr %sym_dev, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = call ptr @memset(ptr %nvram, i32 0, i32 372)
  %3 = ptrtoint ptr %sym_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %sym_dev, align 4
  %4 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 6), align 1
  %host_id = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 6
  %5 = ptrtoint ptr %host_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %host_id, align 4
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.then36_crit_edge

if.end.if.then36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %sym_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sym_dev, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end5.if.end5.i_crit_edge, label %for.body.preheader.i

if.end5.if.end5.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

for.body.preheader.i:                             ; preds = %if.end5
  %10 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 0), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %9)
  %cmp3.i = icmp eq i32 %10, %9
  br i1 %cmp3.i, label %for.body.preheader.i.disable.thread76_crit_edge, label %for.cond.i

for.body.preheader.i.disable.thread76_crit_edge:  ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.i:                                       ; preds = %for.body.preheader.i
  %11 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp3.1.i = icmp eq i32 %11, %9
  br i1 %cmp3.1.i, label %for.cond.i.disable.thread76_crit_edge, label %for.cond.1.i

for.cond.i.disable.thread76_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.1.i:                                     ; preds = %for.cond.i
  %12 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp3.2.i = icmp eq i32 %12, %9
  br i1 %cmp3.2.i, label %for.cond.1.i.disable.thread76_crit_edge, label %for.cond.2.i

for.cond.1.i.disable.thread76_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %13 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp3.3.i = icmp eq i32 %13, %9
  br i1 %cmp3.3.i, label %for.cond.2.i.disable.thread76_crit_edge, label %for.cond.3.i

for.cond.2.i.disable.thread76_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %14 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp3.4.i = icmp eq i32 %14, %9
  br i1 %cmp3.4.i, label %for.cond.3.i.disable.thread76_crit_edge, label %for.cond.4.i

for.cond.3.i.disable.thread76_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %15 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp3.5.i = icmp eq i32 %15, %9
  br i1 %cmp3.5.i, label %for.cond.4.i.disable.thread76_crit_edge, label %for.cond.5.i

for.cond.4.i.disable.thread76_crit_edge:          ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %16 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp3.6.i = icmp eq i32 %16, %9
  br i1 %cmp3.6.i, label %for.cond.5.i.disable.thread76_crit_edge, label %for.cond.6.i

for.cond.5.i.disable.thread76_crit_edge:          ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %17 = load i32, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 10, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp3.7.i = icmp eq i32 %17, %9
  br i1 %cmp3.7.i, label %for.cond.6.i.disable.thread76_crit_edge, label %for.cond.6.i.if.end5.i_crit_edge

for.cond.6.i.if.end5.i_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

for.cond.6.i.disable.thread76_crit_edge:          ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

if.end5.i:                                        ; preds = %for.cond.6.i.if.end5.i_crit_edge, %if.end5.if.end5.i_crit_edge
  %device6.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %device6.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device6.i, align 2
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 12
  %20 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision.i, align 4
  %call.i = tail call ptr @sym_lookup_chip_table(i16 noundef zeroext %19, i8 noundef zeroext %21) #13
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %do.end.i, label %if.end9

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #16
  br label %disable.thread76

if.end9:                                          ; preds = %if.end5.i
  %chip10.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %chip10.i, ptr %call.i, i32 16)
  %23 = ptrtoint ptr %sym_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sym_dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bus_addr.i) #13
  %25 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %bus_addr.i, align 4, !annotation !342
  %26 = getelementptr inbounds %struct.pci_bus_region, ptr %bus_addr.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4, !annotation !342
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %resource.i53 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 47
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 1
  call void @pcibios_resource_to_bus(ptr noundef %29, ptr noundef nonnull %bus_addr.i, ptr noundef %arrayidx.i) #13
  %30 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_addr.i, align 4
  %mmio_base.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 1
  %32 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mmio_base.i, align 4
  %features.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 4, i32 7
  %33 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %features.i, align 4
  %and.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i54, label %if.end9.if.end10.i_crit_edge, label %if.then.i

if.end9.if.end10.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 2, i32 3
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not.i = icmp eq i32 %36, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 3, i32 2
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %arrayidx8.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 %spec.select.i
  call void @pcibios_resource_to_bus(ptr noundef %38, ptr noundef nonnull %bus_addr.i, ptr noundef %arrayidx8.i) #13
  %39 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus_addr.i, align 4
  %ram_base.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 2
  %41 = ptrtoint ptr %ram_base.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ram_base.i, align 4
  %42 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %mmio_base.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %if.end9.if.end10.i_crit_edge
  %43 = phi i32 [ %.pr.i, %if.then.i ], [ %31, %if.end9.if.end10.i_crit_edge ]
  %i.1.i = phi i32 [ %spec.select.i, %if.then.i ], [ 2, %if.end9.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool12.not.i = icmp eq i32 %43, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end22.i_crit_edge, label %if.then13.i

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end10.i
  %end.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 1, i32 1
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  br i1 %cmp.i, label %if.then13.i.cond.end.i_crit_edge, label %cond.false.i

if.then13.i.cond.end.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %45, 1
  %add.i = sub i32 %sub.i, %47
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then13.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.then13.i.cond.end.i_crit_edge ]
  %call.i55 = call ptr @pci_iomap(ptr noundef %24, i32 noundef 1, i32 noundef %cond.i) #13
  %s.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 3
  %48 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i55, ptr %s.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %cond.end.i, %if.end10.i.if.end22.i_crit_edge
  %s23.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 3
  %49 = ptrtoint ptr %s23.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s23.i, align 4
  %tobool25.not.i = icmp eq ptr %50, null
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end22.i.if.end51.i_crit_edge

if.end22.i.if.end51.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then26.i:                                      ; preds = %if.end22.i
  %end29.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 47, i32 0, i32 1
  %51 = ptrtoint ptr %end29.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp30.i = icmp eq i32 %52, 0
  br i1 %cmp30.i, label %if.then26.i.if.end46.i_crit_edge, label %cond.false32.i

if.then26.i.if.end46.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

cond.false32.i:                                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %resource.i53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %resource.i53, align 8
  %sub39.i = add i32 %52, 1
  %add40.i = sub i32 %sub39.i, %54
  br label %if.end46.i

if.end46.i:                                       ; preds = %cond.false32.i, %if.then26.i.if.end46.i_crit_edge
  %cond42.i = phi i32 [ %add40.i, %cond.false32.i ], [ 0, %if.then26.i.if.end46.i_crit_edge ]
  %call43.i = call ptr @pci_iomap(ptr noundef %24, i32 noundef 0, i32 noundef %cond42.i) #13
  %55 = ptrtoint ptr %s23.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call43.i, ptr %s23.i, align 4
  %tobool49.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool49.not.i, label %sym_iomap_device.exit, label %if.end46.i.if.end51.i_crit_edge

if.end46.i.if.end51.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end46.i.if.end51.i_crit_edge, %if.end22.i.if.end51.i_crit_edge
  %ram_base52.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 2
  %56 = ptrtoint ptr %ram_base52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ram_base52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool53.not.i = icmp eq i32 %57, 0
  br i1 %tobool53.not.i, label %if.end51.i.if.end13_crit_edge, label %if.then54.i

if.end51.i.if.end13_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then54.i:                                      ; preds = %if.end51.i
  %end57.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 %i.1.i, i32 1
  %58 = ptrtoint ptr %end57.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %end57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp58.i = icmp eq i32 %59, 0
  br i1 %cmp58.i, label %if.then54.i.cond.end69.i_crit_edge, label %cond.false60.i

if.then54.i.cond.end69.i_crit_edge:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end69.i

cond.false60.i:                                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx56.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 %i.1.i
  %60 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx56.i, align 8
  %sub67.i = add i32 %59, 1
  %add68.i = sub i32 %sub67.i, %61
  br label %cond.end69.i

cond.end69.i:                                     ; preds = %cond.false60.i, %if.then54.i.cond.end69.i_crit_edge
  %cond70.i = phi i32 [ %add68.i, %cond.false60.i ], [ 0, %if.then54.i.cond.end69.i_crit_edge ]
  %call71.i = call ptr @pci_iomap(ptr noundef %24, i32 noundef %i.1.i, i32 noundef %cond70.i) #13
  %ramaddr.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %ramaddr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call71.i, ptr %ramaddr.i, align 4
  %tobool75.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool75.not.i, label %do.end79.i, label %cond.end69.i.if.end13_crit_edge

cond.end69.i.if.end13_crit_edge:                  ; preds = %cond.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end79.i:                                       ; preds = %cond.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev80.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev80.i, ptr noundef nonnull @.str.23) #16
  %63 = ptrtoint ptr %ram_base52.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %ram_base52.i, align 4
  br label %if.end13

sym_iomap_device.exit:                            ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i56 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i56, ptr noundef nonnull @.str.19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bus_addr.i) #13
  br label %disable.thread76

if.end13:                                         ; preds = %do.end79.i, %cond.end69.i.if.end13_crit_edge, %if.end51.i.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bus_addr.i) #13
  %call14 = call fastcc i32 @sym_check_raid(ptr noundef nonnull %sym_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.if.then33_crit_edge

if.end13.if.then33_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

if.end17:                                         ; preds = %if.end13
  %call18 = call fastcc i32 @sym_set_workarounds(ptr noundef nonnull %sym_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.if.then33_crit_edge

if.end17.if.then33_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

if.end21:                                         ; preds = %if.end17
  call fastcc void @sym_config_pqs(ptr noundef %pdev, ptr noundef nonnull %sym_dev)
  %nvram.i = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 5
  %64 = ptrtoint ptr %nvram.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %nvram, ptr %nvram.i, align 4
  %65 = ptrtoint ptr %nvram to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %nvram, align 4
  %call.i59 = call i32 @sym_read_nvram(ptr noundef nonnull %sym_dev, ptr noundef nonnull %nvram) #13
  %66 = load i32, ptr @attach_count, align 4
  %call22 = call fastcc ptr @sym_attach(i32 noundef %66, ptr noundef nonnull %sym_dev)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.disable.thread76_crit_edge, label %if.end25

if.end21.disable.thread76_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable.thread76

if.end25:                                         ; preds = %if.end21
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i60 = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call22, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool27.not = icmp eq i32 %call.i60, 0
  br i1 %tobool27.not, label %if.end29, label %detach

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  call void @scsi_scan_host(ptr noundef nonnull %call22) #13
  %67 = load i32, ptr @attach_count, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr @attach_count, align 4
  br label %cleanup

detach:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i, align 4
  call fastcc void @sym_detach(ptr noundef %69, ptr noundef %pdev)
  br label %disable.thread76

disable.thread76:                                 ; preds = %detach, %if.end21.disable.thread76_crit_edge, %sym_iomap_device.exit, %do.end.i, %for.cond.6.i.disable.thread76_crit_edge, %for.cond.5.i.disable.thread76_crit_edge, %for.cond.4.i.disable.thread76_crit_edge, %for.cond.3.i.disable.thread76_crit_edge, %for.cond.2.i.disable.thread76_crit_edge, %for.cond.1.i.disable.thread76_crit_edge, %for.cond.i.disable.thread76_crit_edge, %for.body.preheader.i.disable.thread76_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #13
  br label %if.then36

if.then33:                                        ; preds = %if.end17.if.then33_crit_edge, %if.end13.if.then33_crit_edge
  %70 = ptrtoint ptr %s23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s23.i, align 4
  %tobool.not.i62 = icmp eq ptr %71, null
  br i1 %tobool.not.i62, label %if.then33.if.end.i_crit_edge, label %if.then.i63

if.then33.if.end.i_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i63:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %sym_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sym_dev, align 4
  call void @pci_iounmap(ptr noundef %73, ptr noundef nonnull %71) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i63, %if.then33.if.end.i_crit_edge
  %ramaddr.i64 = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %ramaddr.i64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ramaddr.i64, align 4
  %tobool4.not.i65 = icmp eq ptr %75, null
  br i1 %tobool4.not.i65, label %if.end.i.disable_crit_edge, label %if.then5.i

if.end.i.disable_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %sym_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sym_dev, align 4
  call void @pci_iounmap(ptr noundef %77, ptr noundef nonnull %75) #13
  br label %disable

disable:                                          ; preds = %if.then5.i, %if.end.i.disable_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #13
  br i1 %tobool15.not, label %disable.if.then36_crit_edge, label %disable.cleanup_crit_edge

disable.cleanup_crit_edge:                        ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

disable.if.then36_crit_edge:                      ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

if.then36:                                        ; preds = %disable.if.then36_crit_edge, %disable.thread76, %if.end.if.then36_crit_edge
  call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %disable.cleanup_crit_edge, %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -19, %disable.cleanup_crit_edge ], [ -19, %if.then36 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %nvram) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sym_dev) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym2_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @scsi_remove_host(ptr noundef %1) #13
  tail call fastcc void @sym_detach(ptr noundef %1, ptr noundef %pdev)
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  %2 = load i32, ptr @attach_count, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @attach_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_check_raid(ptr nocapture noundef readonly %device) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ramaddr = getelementptr inbounds %struct.sym_device, ptr %device, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ramaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ramaddr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.sym_device, ptr %device, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %. = select i1 %tobool1.not, i32 4096, i32 8192
  %add.ptr = getelementptr i8, ptr %1, i32 %.
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 -16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #13, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145651538, i32 %4)
  %cmp.not = icmp eq i32 %4, 1145651538
  br i1 %cmp.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_set_workarounds(ptr nocapture noundef %device) unnamed_addr #1 align 64 {
entry:
  %status_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_reg) #13
  %2 = ptrtoint ptr %status_reg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status_reg, align 2, !annotation !342
  %device3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %device3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %4)
  %cmp = icmp eq i16 %4, 11
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp6 = icmp ult i8 %6, 4
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %features = getelementptr inbounds %struct.sym_device, ptr %device, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features, align 4
  %or = or i32 %8, 384
  store i32 %or, ptr %features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %features8 = getelementptr inbounds %struct.sym_device, ptr %device, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features8, align 4
  %and = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then9:                                         ; preds = %if.end
  %call = tail call i32 @pci_set_mwi(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then9.if.end13_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %status_reg) #13
  %11 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features8, align 4
  %and16 = and i32 %12, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %13 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %status_reg, align 2
  %15 = and i16 %14, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end13
  br i1 %tobool28.not, label %if.then22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %and24 = and i32 %12, -4194305
  %16 = ptrtoint ptr %features8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and24, ptr %features8, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end13
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %if.then29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %status_reg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 32, ptr %status_reg, align 2
  %call30 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 32) #13
  %call31 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %status_reg) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.else.cleanup_crit_edge, %if.then22, %if.then18.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then9.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_reg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_config_pqs(ptr noundef %pdev, ptr nocapture noundef writeonly %sym_dev) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #13
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !342
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %slot.042 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_get_slot(ptr noundef %2, i32 noundef %slot.042) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4122, i16 %4)
  %cmp1.not = icmp eq i16 %4, 4122
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %device = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %6)
  %cmp5 = icmp eq i16 %6, 9
  br i1 %cmp5, label %lor.lhs.false3.for.inc_crit_edge, label %if.end

lor.lhs.false3.for.inc_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false3
  %call7 = call i32 @pci_read_config_byte(ptr noundef nonnull %call, i32 noundef 68, ptr noundef nonnull %tmp) #13
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp, align 1
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9 = icmp eq i8 %9, 0
  br i1 %cmp9, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i8 %8, 2
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %tmp, align 1
  %call14 = call i32 @pci_write_config_byte(ptr noundef nonnull %call, i32 noundef 68, i8 noundef zeroext %or) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %call16 = call i32 @pci_read_config_byte(ptr noundef nonnull %call, i32 noundef 69, ptr noundef nonnull %tmp) #13
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp, align 1
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp19 = icmp eq i8 %13, 0
  br i1 %cmp19, label %if.then21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %or23 = or i8 %12, 4
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or23, ptr %tmp, align 1
  %call25 = call i32 @pci_write_config_byte(ptr noundef nonnull %call, i32 noundef 69, i8 noundef zeroext %or23) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end15.cleanup_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call) #13
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false3.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  tail call void @pci_dev_put(ptr noundef %call) #13
  %inc = add nuw nsw i32 %slot.042, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %call27 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 132, ptr noundef nonnull %tmp) #13
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tmp, align 1
  %host_id = getelementptr inbounds %struct.sym_device, ptr %sym_dev, i32 0, i32 6
  %17 = ptrtoint ptr %host_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %host_id, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sym_attach(i32 noundef %unit, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %chip = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 4
  %name = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  %conv = zext i8 %5 to i32
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %unit, ptr noundef %3, i32 noundef %conv, ptr noundef %retval.0.i.i, i32 noundef %11) #16
  %call4 = tail call ptr @sym_find_firmware(ptr noundef %chip) #13
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %pci_name.exit.if.else144_crit_edge, label %if.end

pci_name.exit.if.else144_crit_edge:               ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else144

if.end:                                           ; preds = %pci_name.exit
  %call5 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @sym2_template, i32 noundef 12) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.else144_crit_edge, label %if.end8

if.end.if.else144_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else144

if.end8:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call11 = tail call ptr @__sym_calloc_dma(ptr noundef %dev10, i32 noundef 1440, ptr noundef nonnull @.str.29) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.if.else144_crit_edge, label %if.end14

if.end8.if.else144_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else144

if.end14:                                         ; preds = %if.end8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 53
  %bus_dmat = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 41
  %12 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev10, ptr %bus_dmat, align 4
  %13 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %hostdata.i, align 4
  %pdev16 = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 1, i32 1
  %14 = ptrtoint ptr %pdev16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %pdev16, align 4
  %s = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42
  %host = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 3
  %15 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5, ptr %host, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %17 = load ptr, ptr %bus_dmat, align 4
  %call18 = tail call i32 @__vtobus(ptr noundef %17, ptr noundef nonnull %call11) #13
  %hcb_ba = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 13
  %18 = ptrtoint ptr %hcb_ba to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call18, ptr %hcb_ba, align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 7), align 4
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 87
  %20 = ptrtoint ptr %verbose to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %verbose, align 2
  %21 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %unit, ptr %s, align 4
  %features = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %features, align 4
  %features22 = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 60
  %24 = ptrtoint ptr %features22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %features22, align 4
  %nr_divisor = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 4, i32 5
  %25 = ptrtoint ptr %nr_divisor to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_divisor, align 2
  %clock_divn = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 71
  %27 = ptrtoint ptr %clock_divn to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %clock_divn, align 2
  %offset_max = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %offset_max to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %offset_max, align 1
  %maxoffs = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 66
  %30 = ptrtoint ptr %maxoffs to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %maxoffs, align 1
  %burst_max = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %burst_max to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %burst_max, align 4
  %maxburst = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 62
  %33 = ptrtoint ptr %maxburst to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %maxburst, align 1
  %host_id = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %host_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %host_id, align 4
  %myaddr = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 61
  %36 = ptrtoint ptr %myaddr to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %myaddr, align 4
  %mmio_base = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 1
  %37 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mmio_base, align 4
  %mmio_ba = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 43
  %39 = ptrtoint ptr %mmio_ba to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mmio_ba, align 4
  %ram_base = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 2
  %40 = ptrtoint ptr %ram_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ram_base, align 4
  %ram_ba = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 44
  %42 = ptrtoint ptr %ram_ba to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ram_ba, align 4
  %s26 = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 3
  %43 = ptrtoint ptr %s26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s26, align 4
  %ioaddr28 = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 4
  %45 = ptrtoint ptr %ioaddr28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %ioaddr28, align 4
  %ramaddr = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %ramaddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ramaddr, align 4
  %ramaddr31 = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 5
  %48 = ptrtoint ptr %ramaddr31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %ramaddr31, align 4
  %chip_name = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 2
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 4
  %call35 = tail call i32 @strlcpy(ptr noundef %chip_name, ptr noundef %50, i32 noundef 8) #13
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 1
  %51 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s, align 4
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %inst_name, ptr noundef nonnull @.str.30, i32 noundef %52)
  %53 = ptrtoint ptr %features22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %features22, align 4
  %and = and i32 %54, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end14.if.else_crit_edge, label %land.lhs.true

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  %call44 = tail call i32 @dma_set_mask(ptr noundef %dev10, i64 noundef 1099511627775) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %use_dac = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 96
  %55 = ptrtoint ptr %use_dac to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %use_dac, align 1
  br label %if.end60

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end14.if.else_crit_edge
  %call48 = tail call i32 @dma_set_mask(ptr noundef %dev10, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else.if.end60_crit_edge, label %do.end53

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

do.end53:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %inst_name) #16
  br label %if.then143.thread

if.end60:                                         ; preds = %if.else.if.end60_crit_edge, %if.then46
  %nvram = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 5
  %56 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nvram, align 4
  %call61 = tail call i32 @sym_hcb_attach(ptr noundef nonnull %call5, ptr noundef nonnull %call4, ptr noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.if.then143.thread_crit_edge

if.end60.if.then143.thread_crit_edge:             ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then143.thread

if.end64:                                         ; preds = %if.end60
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %59, ptr noundef nonnull @sym53c8xx_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool67.not = icmp eq i32 %call.i, 0
  br i1 %tobool67.not, label %if.end78, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %inst_name, i32 noundef %61) #16
  br label %if.then143.thread

if.end78:                                         ; preds = %if.end64
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 4
  %62 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host_lock, align 4
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %63) #13
  %call89 = tail call i32 @sym_reset_scsi_bus(ptr noundef nonnull %call11, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.then.i4

if.end92:                                         ; preds = %if.end78
  tail call void @sym_start_up(ptr noundef nonnull %call5, i32 noundef 1) #13
  %timer = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 6
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @sym53c8xx_timer, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @sym_attach.__key) #13
  %lasttime = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 7
  %64 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %lasttime, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %65, 50
  %expires.i = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 6, i32 1
  %66 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer) #13
  %settle_time_valid.i = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 9
  %67 = ptrtoint ptr %settle_time_valid.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %settle_time_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.then.i

if.then.i:                                        ; preds = %if.end92
  %settle_time.i = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 42, i32 8
  %69 = ptrtoint ptr %settle_time.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %settle_time.i, align 4
  %sub.i = sub i32 %65, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.sym_timer.exit_crit_edge

if.then.i.sym_timer.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_timer.exit

if.then5.i:                                       ; preds = %if.then.i
  %71 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp6.i = icmp ugt i8 %72, 1
  br i1 %cmp6.i, label %do.end.i, label %if.then5.i.if.end.i_crit_edge

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %inst_name) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then5.i.if.end.i_crit_edge
  %73 = ptrtoint ptr %settle_time_valid.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %settle_time_valid.i, align 4
  br label %sym_timer.exit

if.end13.i:                                       ; preds = %if.end92
  %74 = ptrtoint ptr %lasttime to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lasttime, align 4
  %add15.i = add i32 %75, 400
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %65)
  %cmp16.i = icmp ult i32 %add15.i, %65
  br i1 %cmp16.i, label %if.then18.i, label %if.end13.i.sym_timer.exit_crit_edge

if.end13.i.sym_timer.exit_crit_edge:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_timer.exit

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %65, ptr %lasttime, align 4
  br label %sym_timer.exit

sym_timer.exit:                                   ; preds = %if.then18.i, %if.end13.i.sym_timer.exit_crit_edge, %if.end.i, %if.then.i.sym_timer.exit_crit_edge
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 20
  %77 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %max_channel, align 8
  %78 = ptrtoint ptr %myaddr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %myaddr, align 4
  %conv99 = zext i8 %79 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 25
  %80 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv99, ptr %this_id, align 8
  %maxwide = getelementptr inbounds %struct.sym_hcb, ptr %call11, i32 0, i32 63
  %81 = ptrtoint ptr %maxwide to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %maxwide, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool101.not = icmp eq i8 %82, 0
  %cond = select i1 %tobool101.not, i32 8, i32 16
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 21
  %83 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %cond, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 22
  %84 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 64, ptr %max_lun, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %85 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %resource, align 8
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 23
  %87 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %unique_id, align 8
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 27
  %88 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 64, ptr %cmd_per_lun, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 26
  %89 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 446, ptr %can_queue, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 28
  %90 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 96, ptr %sg_tablesize, align 2
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 24
  %91 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 16, ptr %max_cmd_len, align 4
  %92 = load ptr, ptr @sym2_transport_template, align 4
  %cmp103 = icmp eq ptr %92, null
  br i1 %cmp103, label %do.body108, label %do.end116, !prof !345

do.body108:                                       ; preds = %sym_timer.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sym53c8xx_2/sym_glue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1350, 0\0A.popsection", ""() #13, !srcloc !346
  unreachable

do.end116:                                        ; preds = %sym_timer.exit
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 12
  %93 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %transportt, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %94 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %95)
  %cmp118 = icmp eq i16 %95, 11
  br i1 %cmp118, label %land.lhs.true120, label %do.end116.if.end126_crit_edge

do.end116.if.end126_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

land.lhs.true120:                                 ; preds = %do.end116
  %96 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp123 = icmp ult i8 %97, 2
  br i1 %cmp123, label %if.then125, label %land.lhs.true120.if.end126_crit_edge

land.lhs.true120.if.end126_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then125:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  %dma_boundary = getelementptr inbounds %struct.Scsi_Host, ptr %call5, i32 0, i32 32
  %98 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16777215, ptr %dma_boundary, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %land.lhs.true120.if.end126_crit_edge, %do.end116.if.end126_crit_edge
  %99 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %call84) #13
  br label %cleanup

if.then143.thread:                                ; preds = %do.end71, %if.end60.if.then143.thread_crit_edge, %do.end53
  %call1411422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %unit) #16
  br label %if.end.i5

if.then.i4:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %inst_name) #16
  %101 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %102, i32 noundef %call84) #13
  %call14114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %unit) #16
  %103 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq, align 4
  %105 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %host, align 4
  %call.i3 = tail call ptr @free_irq(i32 noundef %104, ptr noundef %106) #13
  br label %if.end.i5

if.end.i5:                                        ; preds = %if.then.i4, %if.then143.thread
  %107 = ptrtoint ptr %ioaddr28 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ioaddr28, align 4
  %tobool2.not.i = icmp eq ptr %108, null
  br i1 %tobool2.not.i, label %if.end.i5.if.end6.i_crit_edge, label %if.then3.i

if.end.i5.if.end6.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_iounmap(ptr noundef %1, ptr noundef nonnull %108) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i5.if.end6.i_crit_edge
  %109 = ptrtoint ptr %ramaddr31 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ramaddr31, align 4
  %tobool8.not.i = icmp eq ptr %110, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end145.thread_crit_edge, label %if.then9.i

if.end6.i.if.end145.thread_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145.thread

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_iounmap(ptr noundef %1, ptr noundef nonnull %110) #13
  br label %if.end145.thread

if.end145.thread:                                 ; preds = %if.then9.i, %if.end6.i.if.end145.thread_crit_edge
  tail call void @sym_hcb_free(ptr noundef nonnull %call11) #13
  %111 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bus_dmat, align 4
  tail call void @__sym_mfree_dma(ptr noundef %112, ptr noundef nonnull %call11, i32 noundef 1440, ptr noundef nonnull @.str.29) #13
  br label %if.then147

if.else144:                                       ; preds = %if.end8.if.else144_crit_edge, %if.end.if.else144_crit_edge, %pci_name.exit.if.else144_crit_edge
  %shost.0 = phi ptr [ %call5, %if.end8.if.else144_crit_edge ], [ null, %if.end.if.else144_crit_edge ], [ null, %pci_name.exit.if.else144_crit_edge ]
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %unit) #16
  %s.i = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 3
  %113 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s.i, align 4
  %tobool.not.i6 = icmp eq ptr %114, null
  br i1 %tobool.not.i6, label %if.else144.if.end.i9_crit_edge, label %if.then.i7

if.else144.if.end.i9_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i9

if.then.i7:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  tail call void @pci_iounmap(ptr noundef %116, ptr noundef nonnull %114) #13
  br label %if.end.i9

if.end.i9:                                        ; preds = %if.then.i7, %if.else144.if.end.i9_crit_edge
  %ramaddr.i8 = getelementptr inbounds %struct.sym_device, ptr %dev, i32 0, i32 3, i32 1
  %117 = ptrtoint ptr %ramaddr.i8 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ramaddr.i8, align 4
  %tobool4.not.i = icmp eq ptr %118, null
  br i1 %tobool4.not.i, label %if.end.i9.if.end145_crit_edge, label %if.then5.i10

if.end.i9.if.end145_crit_edge:                    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.then5.i10:                                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 4
  tail call void @pci_iounmap(ptr noundef %120, ptr noundef nonnull %118) #13
  br label %if.end145

if.end145:                                        ; preds = %if.then5.i10, %if.end.i9.if.end145_crit_edge
  %tobool146.not = icmp eq ptr %shost.0, null
  br i1 %tobool146.not, label %if.end145.cleanup_crit_edge, label %if.end145.if.then147_crit_edge

if.end145.if.then147_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then147

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then147:                                       ; preds = %if.end145.if.then147_crit_edge, %if.end145.thread
  %shost.01726 = phi ptr [ %call5, %if.end145.thread ], [ %shost.0, %if.end145.if.then147_crit_edge ]
  tail call void @scsi_host_put(ptr noundef nonnull %shost.01726) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then147, %if.end145.cleanup_crit_edge, %if.end126
  %retval.0 = phi ptr [ %call5, %if.end126 ], [ null, %if.then147 ], [ null, %if.end145.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_detach(ptr noundef %shost, ptr noundef %pdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %inst_name) #16
  %timer = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 6
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %inst_name) #16
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 64) #13, !srcloc !348
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 23
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #13, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #13
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 0) #13, !srcloc !348
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  %host.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 3
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %11, ptr noundef %13) #13
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %entry.if.end6.i_crit_edge, label %if.then3.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %15) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %entry.if.end6.i_crit_edge
  %ramaddr.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 5
  %16 = ptrtoint ptr %ramaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ramaddr.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %if.end6.i.sym_free_resources.exit_crit_edge, label %if.then9.i

if.end6.i.sym_free_resources.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_free_resources.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %17) #13
  br label %sym_free_resources.exit

sym_free_resources.exit:                          ; preds = %if.then9.i, %if.end6.i.sym_free_resources.exit_crit_edge
  tail call void @sym_hcb_free(ptr noundef %1) #13
  %bus_dmat.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 41
  %18 = ptrtoint ptr %bus_dmat.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_dmat.i, align 4
  tail call void @__sym_mfree_dma(ptr noundef %19, ptr noundef %1, i32 noundef 1440, ptr noundef nonnull @.str.29) #13
  tail call void @scsi_host_put(ptr noundef %shost) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sym_lookup_chip_table(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_read_nvram(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sym_find_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sym_calloc_dma(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vtobus(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_hcb_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_intr(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #13
  %call6 = tail call i32 @sym_interrupt(ptr noundef %dev_id) #13
  %7 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %8) #13
  %9 = load i32, ptr @sym_debug_flags, align 4
  %and8 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %do.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %do.end13 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_reset_scsi_bus(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_start_up(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym53c8xx_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 50
  %expires.i = getelementptr i8, ptr %t, i32 8
  %5 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t) #13
  %settle_time_valid.i = getelementptr i8, ptr %t, i32 56
  %6 = ptrtoint ptr %settle_time_valid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %settle_time_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %settle_time.i = getelementptr i8, ptr %t, i32 52
  %8 = ptrtoint ptr %settle_time.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %settle_time.i, align 4
  %sub.i = sub i32 %4, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.sym_timer.exit_crit_edge

if.then.i.sym_timer.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_timer.exit

if.then5.i:                                       ; preds = %if.then.i
  %verbose.i = getelementptr i8, ptr %t, i32 374
  %10 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %verbose.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp6.i = icmp ugt i8 %11, 1
  br i1 %cmp6.i, label %do.end.i, label %if.then5.i.if.end.i_crit_edge

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %inst_name.i = getelementptr i8, ptr %t, i32 -36
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %inst_name.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then5.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %settle_time_valid.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %settle_time_valid.i, align 4
  br label %sym_timer.exit

if.end13.i:                                       ; preds = %entry
  %lasttime.i = getelementptr i8, ptr %t, i32 48
  %13 = ptrtoint ptr %lasttime.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lasttime.i, align 4
  %add15.i = add i32 %14, 400
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %4)
  %cmp16.i = icmp ult i32 %add15.i, %4
  br i1 %cmp16.i, label %if.then18.i, label %if.end13.i.sym_timer.exit_crit_edge

if.end13.i.sym_timer.exit_crit_edge:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_timer.exit

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %lasttime.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %lasttime.i, align 4
  br label %sym_timer.exit

sym_timer.exit:                                   ; preds = %if.then18.i, %if.end13.i.sym_timer.exit_crit_edge, %if.end.i, %if.then.i.sym_timer.exit_crit_edge
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %host_lock8 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %host_lock8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_interrupt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_hcb_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sym_mfree_dma(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_queue_command(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i.i, align 8
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %8 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %SCp.i, align 4
  %settle_time_valid.i = getelementptr inbounds %struct.sym_hcb, ptr %7, i32 0, i32 42, i32 9
  %9 = ptrtoint ptr %settle_time_valid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %settle_time_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end16.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %timeout.i = getelementptr i8, ptr %cmd, i32 -164
  %11 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.sym53c8xx_queue_command_lck.exit_crit_edge, label %if.then.i

land.lhs.true.i.sym53c8xx_queue_command_lck.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym53c8xx_queue_command_lck.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %12, -100
  %sub.i = add i32 %add.i, %13
  %settle_time.i = getelementptr inbounds %struct.sym_hcb, ptr %7, i32 0, i32 42, i32 8
  %14 = ptrtoint ptr %settle_time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %settle_time.i, align 4
  %sub6.i = sub i32 %sub.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp.i = icmp slt i32 %sub6.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.then.i.sym53c8xx_queue_command_lck.exit_crit_edge

if.then.i.sym53c8xx_queue_command_lck.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym53c8xx_queue_command_lck.exit

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %settle_time.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %settle_time.i, align 4
  br label %sym53c8xx_queue_command_lck.exit

if.end16.i:                                       ; preds = %entry
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 8
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lun.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i.i = icmp eq i64 %20, 0
  br i1 %tobool.not.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %lun0p.i.i = getelementptr %struct.sym_hcb, ptr %7, i32 0, i32 38, i32 %18, i32 3
  br label %cond.end7.i.i

cond.false.i.i:                                   ; preds = %if.end16.i
  %lunmp.i.i = getelementptr %struct.sym_hcb, ptr %7, i32 0, i32 38, i32 %18, i32 4
  %21 = ptrtoint ptr %lunmp.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lunmp.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i.i, label %cond.false.i.i.land.end.i.i_crit_edge, label %cond.true2.i.i

cond.false.i.i.land.end.i.i_crit_edge:            ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i.i

cond.true2.i.i:                                   ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i = trunc i64 %20 to i32
  %idxprom.i.i = and i32 %conv.i.i, 255
  %arrayidx5.i.i = getelementptr ptr, ptr %22, i32 %idxprom.i.i
  br label %cond.end7.i.i

cond.end7.i.i:                                    ; preds = %cond.true2.i.i, %cond.true.i.i
  %cond8.in.i.i = phi ptr [ %lun0p.i.i, %cond.true.i.i ], [ %arrayidx5.i.i, %cond.true2.i.i ]
  %23 = ptrtoint ptr %cond8.in.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond8.i.i = load ptr, ptr %cond8.in.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %cond8.i.i, null
  br i1 %tobool9.not.i.i, label %cond.end7.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

cond.end7.i.i.land.end.i.i_crit_edge:             ; preds = %cond.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %cond.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %s.i.i = getelementptr inbounds %struct.sym_lcb, ptr %cond8.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %s.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool11.not.i.i = icmp eq i16 %25, 0
  %phi.cast.i.i = select i1 %tobool11.not.i.i, i8 0, i8 32
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %cond.end7.i.i.land.end.i.i_crit_edge, %cond.false.i.i.land.end.i.i_crit_edge
  %26 = phi i8 [ 0, %cond.end7.i.i.land.end.i.i_crit_edge ], [ %phi.cast.i.i, %land.rhs.i.i ], [ 0, %cond.false.i.i.land.end.i.i_crit_edge ]
  %call.i.i = tail call ptr @sym_get_ccb(ptr noundef %7, ptr noundef %cmd, i8 noundef zeroext %26) #13
  %tobool14.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i.i, label %land.end.i.i.sym53c8xx_queue_command_lck.exit_crit_edge, label %27

land.end.i.i.sym53c8xx_queue_command_lck.exit_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym53c8xx_queue_command_lck.exit

27:                                               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i.i = tail call i32 @sym_queue_scsiio(ptr noundef %7, ptr noundef %cmd, ptr noundef nonnull %call.i.i) #13
  br label %sym53c8xx_queue_command_lck.exit

sym53c8xx_queue_command_lck.exit:                 ; preds = %27, %land.end.i.i.sym53c8xx_queue_command_lck.exit_crit_edge, %if.then8.i, %if.then.i.sym53c8xx_queue_command_lck.exit_crit_edge, %land.lhs.true.i.sym53c8xx_queue_command_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %27 ], [ 4181, %land.end.i.i.sym53c8xx_queue_command_lck.exit_crit_edge ], [ 4181, %if.then.i.sym53c8xx_queue_command_lck.exit_crit_edge ], [ 4181, %if.then8.i ], [ 4181, %land.lhs.true.i.sym53c8xx_queue_command_lck.exit_crit_edge ]
  %28 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %call2) #13
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @sym53c8xx_info(ptr nocapture noundef readnone %host) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_eh_abort_handler(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sym_eh_handler(i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_eh_device_reset_handler(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sym_eh_handler(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_eh_bus_reset_handler(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sym_eh_handler(i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_eh_host_reset_handler(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sym_eh_handler(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_slave_alloc(ptr nocapture noundef readonly %sdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp ugt i32 %5, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %7)
  %cmp2 = icmp ugt i64 %7, 63
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %do.body3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  %host5 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 3
  %8 = ptrtoint ptr %host5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host5, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #13
  %usrflags = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 9
  %12 = ptrtoint ptr %usrflags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %usrflags, align 1
  %conv10 = zext i8 %13 to i32
  %and = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  %and14 = and i8 %13, -5
  %14 = ptrtoint ptr %usrflags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and14, ptr %usrflags, align 1
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %15 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev_target, align 8
  %dev = getelementptr inbounds %struct.scsi_target, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.63) #16
  br label %out

if.end19:                                         ; preds = %do.body3
  %and22 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.if.end35_crit_edge, label %if.then24

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then24:                                        ; preds = %if.end19
  %17 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp26.not = icmp eq i64 %18, 0
  br i1 %cmp26.not, label %do.end32, label %if.then24.out_crit_edge

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %sdev_target33 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %19 = ptrtoint ptr %sdev_target33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev_target33, align 8
  %dev34 = getelementptr inbounds %struct.scsi_target, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev34, ptr noundef nonnull @.str.66) #16
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %if.end19.if.end35_crit_edge
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  %conv37 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %lun, align 8
  %conv39 = trunc i64 %24 to i8
  %call40 = tail call ptr @sym_alloc_lcb(ptr noundef %3, i8 noundef zeroext %conv37, i8 noundef zeroext %conv39) #13
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end35.out_crit_edge, label %if.end43

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end43:                                         ; preds = %if.end35
  %nlcb = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 2
  %25 = ptrtoint ptr %nlcb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlcb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp44 = icmp eq i32 %26, 1
  br i1 %cmp44, label %if.then46, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %sdev_target47 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %27 = ptrtoint ptr %sdev_target47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev_target47, align 8
  %starget = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 13
  %29 = ptrtoint ptr %starget to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %starget, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43.if.end48_crit_edge
  %usr_period = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 10
  %30 = ptrtoint ptr %usr_period to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %usr_period, align 2
  %conv49 = zext i8 %31 to i32
  %starget50 = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 13
  %32 = ptrtoint ptr %starget50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %starget50, align 4
  %min_period = getelementptr inbounds %struct.scsi_target, ptr %33, i32 1
  %34 = ptrtoint ptr %min_period to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv49, ptr %min_period, align 4
  %usr_width = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 11
  %35 = ptrtoint ptr %usr_width to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %usr_width, align 1
  %37 = load ptr, ptr %starget50, align 4
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %37, i32 1, i32 2
  %38 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %max_width, align 4
  %39 = and i8 %36, 1
  %bf.value = zext i8 %39 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 14
  %bf.clear = and i16 %bf.load, -16385
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %max_width, align 4
  br label %out

out:                                              ; preds = %if.end48, %if.end35.out_crit_edge, %if.then24.out_crit_edge, %if.then11
  %error.0 = phi i32 [ -6, %if.then11 ], [ 0, %if.end48 ], [ -6, %if.then24.out_crit_edge ], [ -12, %if.end35.out_crit_edge ]
  %40 = ptrtoint ptr %host5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host5, align 4
  %host_lock56 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %host_lock56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host_lock56, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %call7) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c8xx_slave_configure(ptr noundef %sdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lun0p = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 3
  br label %cond.end7.sink.split

cond.false:                                       ; preds = %entry
  %lunmp = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 4
  %8 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lunmp, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %cond.false.cond.end7_crit_edge, label %cond.true2

cond.false.cond.end7_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end7

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %7 to i32
  %idxprom = and i32 %conv, 255
  %arrayidx5 = getelementptr ptr, ptr %9, i32 %idxprom
  br label %cond.end7.sink.split

cond.end7.sink.split:                             ; preds = %cond.true2, %cond.true
  %arrayidx5.sink = phi ptr [ %arrayidx5, %cond.true2 ], [ %lun0p, %cond.true ]
  %10 = ptrtoint ptr %arrayidx5.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.sink, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end7.sink.split, %cond.false.cond.end7_crit_edge
  %cond8 = phi ptr [ null, %cond.false.cond.end7_crit_edge ], [ %11, %cond.end7.sink.split ]
  %user_flags = getelementptr inbounds %struct.sym_lcb, ptr %cond8, i32 0, i32 12
  %12 = ptrtoint ptr %user_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %user_flags, align 1
  %curr_flags = getelementptr inbounds %struct.sym_lcb, ptr %cond8, i32 0, i32 13
  %14 = ptrtoint ptr %curr_flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %curr_flags, align 2
  %15 = load i16, ptr @sym_driver_setup, align 4
  %usrtags = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 12
  %16 = ptrtoint ptr %usrtags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %usrtags, align 4
  %18 = tail call i16 @llvm.umin.i16(i16 %15, i16 %17)
  %tagged_supported = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %19 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load = load i64, ptr %tagged_supported, align 4
  %20 = and i64 %bf.load, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool14.not = icmp eq i64 %20, 0
  %21 = tail call i16 @llvm.umin.i16(i16 %18, i16 64)
  %22 = zext i16 %21 to i32
  %23 = select i1 %tobool14.not, i32 0, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not = icmp eq i32 %23, 0
  %cond25 = select i1 %tobool21.not, i32 1, i32 %23
  %call26 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %cond25) #13
  %conv27 = trunc i32 %cond25 to i16
  %scdev_depth = getelementptr inbounds %struct.sym_lcb, ptr %cond8, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %scdev_depth to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv27, ptr %scdev_depth, align 2
  %25 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun, align 8
  %conv29 = trunc i64 %26 to i32
  %conv30 = trunc i32 %23 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv29)
  %tobool.not.i = icmp eq i32 %conv29, 0
  br i1 %tobool.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #15
  %lun0p.i = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 3
  br label %cond.end5.i

cond.false.i:                                     ; preds = %cond.end7
  %lunmp.i = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 4
  %27 = ptrtoint ptr %lunmp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lunmp.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %cond.false.i.sym_tune_dev_queuing.exit_crit_edge, label %cond.true2.i

cond.false.i.sym_tune_dev_queuing.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_tune_dev_queuing.exit

cond.true2.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom.i = and i32 %conv29, 255
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %idxprom.i
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true2.i, %cond.true.i
  %cond6.in.i = phi ptr [ %lun0p.i, %cond.true.i ], [ %arrayidx.i, %cond.true2.i ]
  %29 = ptrtoint ptr %cond6.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond6.i = load ptr, ptr %cond6.in.i, align 4
  %tobool7.not.i = icmp eq ptr %cond6.i, null
  br i1 %tobool7.not.i, label %cond.end5.i.sym_tune_dev_queuing.exit_crit_edge, label %if.end.i

cond.end5.i.sym_tune_dev_queuing.exit_crit_edge:  ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_tune_dev_queuing.exit

if.end.i:                                         ; preds = %cond.end5.i
  %s.i = getelementptr inbounds %struct.sym_lcb, ptr %cond6.i, i32 0, i32 7
  %30 = ptrtoint ptr %s.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %s.i, align 4
  %scdev_depth.i = getelementptr inbounds %struct.sym_lcb, ptr %cond6.i, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %scdev_depth.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %scdev_depth.i, align 2
  %34 = tail call i16 @llvm.umin.i16(i16 %33, i16 %conv30) #13
  %35 = ptrtoint ptr %s.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %s.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %31)
  %cmp21.not.i = icmp eq i16 %34, %31
  br i1 %cmp21.not.i, label %if.end.i.sym_tune_dev_queuing.exit_crit_edge, label %do.end.i

if.end.i.sym_tune_dev_queuing.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_tune_dev_queuing.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv19.i = zext i16 %34 to i32
  %starget.i = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 13
  %36 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %starget.i, align 4
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %37, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool27.not.i = icmp eq i16 %34, 0
  %cond28.i = select i1 %tobool27.not.i, ptr @.str.71, ptr @.str.70
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond28.i, i32 noundef %conv19.i) #16
  br label %sym_tune_dev_queuing.exit

sym_tune_dev_queuing.exit:                        ; preds = %do.end.i, %if.end.i.sym_tune_dev_queuing.exit_crit_edge, %cond.end5.i.sym_tune_dev_queuing.exit_crit_edge, %cond.false.i.sym_tune_dev_queuing.exit_crit_edge
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %38 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev_target, align 8
  %initial_dv = getelementptr inbounds %struct.scsi_target, ptr %39, i32 1, i32 2
  %40 = ptrtoint ptr %initial_dv to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load31 = load i16, ptr %initial_dv, align 4
  %41 = and i16 %bf.load31, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool35.not = icmp eq i16 %41, 0
  br i1 %tobool35.not, label %if.then36, label %sym_tune_dev_queuing.exit.if.end37_crit_edge

sym_tune_dev_queuing.exit.if.end37_crit_edge:     ; preds = %sym_tune_dev_queuing.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then36:                                        ; preds = %sym_tune_dev_queuing.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @spi_dv_device(ptr noundef %sdev) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %sym_tune_dev_queuing.exit.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym53c8xx_slave_destroy(ptr nocapture noundef readonly %sdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %arrayidx = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lun0p = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 3
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %lunmp = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 4
  %8 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lunmp, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %cond.false.cleanup_crit_edge, label %cond.true2

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %7 to i32
  %idxprom = and i32 %conv, 255
  %arrayidx5 = getelementptr ptr, ptr %9, i32 %idxprom
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true2, %cond.true
  %cond8.in = phi ptr [ %lun0p, %cond.true ], [ %arrayidx5, %cond.true2 ]
  %10 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond8 = load ptr, ptr %cond8.in, align 4
  %tobool9.not = icmp eq ptr %cond8, null
  br i1 %tobool9.not, label %cond.end7.cleanup_crit_edge, label %do.body10

cond.end7.cleanup_crit_edge:                      ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body10:                                        ; preds = %cond.end7
  %host12 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 3
  %11 = ptrtoint ptr %host12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host12, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock, align 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #13
  %busy_itlq = getelementptr inbounds %struct.sym_lcb, ptr %cond8, i32 0, i32 2
  %15 = ptrtoint ptr %busy_itlq to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %busy_itlq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool18.not = icmp eq i16 %16, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %do.body10.do.end24_crit_edge

do.body10.do.end24_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

lor.lhs.false:                                    ; preds = %do.body10
  %busy_itl = getelementptr inbounds %struct.sym_lcb, ptr %cond8, i32 0, i32 3
  %17 = ptrtoint ptr %busy_itl to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %busy_itl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool20.not = icmp eq i16 %18, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.do.end24_crit_edge

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end24:                                         ; preds = %lor.lhs.false.do.end24_crit_edge, %do.body10.do.end24_crit_edge
  %starget = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 13
  %19 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %starget, align 4
  %dev = getelementptr inbounds %struct.scsi_target, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %conv26 = trunc i64 %22 to i32
  %conv27 = and i32 %conv26, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv27) #16
  %call28 = tail call i32 @sym_reset_scsi_bus(ptr noundef %3, i32 noundef 1) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %lor.lhs.false.if.end29_crit_edge
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 8
  %conv31 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun, align 8
  %conv33 = trunc i64 %26 to i8
  %call34 = tail call i32 @sym_free_lcb(ptr noundef %3, i8 noundef zeroext %conv31, i8 noundef zeroext %conv33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end29.if.end41_crit_edge

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %sval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %sval to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %sval, align 1
  %rv_scntl3 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 28
  %28 = ptrtoint ptr %rv_scntl3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rv_scntl3, align 1
  %wval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 5
  %30 = ptrtoint ptr %wval to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %wval, align 1
  %uval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 2
  %31 = ptrtoint ptr %uval to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %uval, align 4
  %check_nego = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 5, i32 2
  %32 = ptrtoint ptr %check_nego to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %check_nego, align 2
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %check_nego, align 2
  %starget40 = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %5, i32 13
  %33 = ptrtoint ptr %starget40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %starget40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end29.if.end41_crit_edge
  %34 = ptrtoint ptr %host12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host12, align 4
  %host_lock44 = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %host_lock44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host_lock44, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %call14) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %cond.end7.cleanup_crit_edge, %cond.false.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym_show_info(ptr noundef %m, ptr nocapture noundef readonly %shost) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 4
  %chip_name = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 2
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv = zext i16 %5 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision, align 4
  %conv2 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, ptr noundef %chip_name, i32 noundef %conv, i32 noundef %conv2) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %entry.pci_name.exit_crit_edge ]
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i, i32 noundef %13) #13
  %minsync_dt = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 67
  %14 = ptrtoint ptr %minsync_dt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %minsync_dt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %cond.false, label %pci_name.exit.cond.end_crit_edge

pci_name.exit.cond.end_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %minsync = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 64
  %16 = ptrtoint ptr %minsync to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %minsync, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %pci_name.exit.cond.end_crit_edge
  %cond14 = phi ptr [ @.str.79, %pci_name.exit.cond.end_crit_edge ], [ @.str.80, %cond.false ]
  %cond.in = phi i8 [ %15, %pci_name.exit.cond.end_crit_edge ], [ %17, %cond.false ]
  %cond = zext i8 %cond.in to i32
  %maxwide = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 63
  %18 = ptrtoint ptr %maxwide to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %maxwide, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.78, ptr @.str.77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.76, i32 noundef %cond, ptr noundef nonnull %cond10, ptr noundef nonnull %cond14) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, i32 noundef 448, i32 noundef 64) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym_user_command(ptr nocapture noundef readonly %shost, ptr noundef %buffer, i32 noundef %length) #1 align 64 {
entry:
  %end.i407 = alloca ptr, align 4
  %end.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp sgt i32 %length, 0
  br i1 %cmp, label %if.end, label %entry.if.else25_crit_edge

entry.if.else25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else25

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %length, -1
  %arrayidx = getelementptr i8, ptr %buffer, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1 = icmp eq i8 %3, 10
  %spec.select = select i1 %cmp1, i32 %sub, i32 %length
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spec.select)
  %cmp.not.i = icmp ult i32 %spec.select, 7
  br i1 %cmp.not.i, label %if.end.if.else25_crit_edge, label %land.lhs.true.i

if.end.if.else25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else25

land.lhs.true.i:                                  ; preds = %if.end
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.82, ptr noundef dereferenceable(7) %buffer, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %land.lhs.true.i.sw.bb_crit_edge, label %land.lhs.true.i360

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

land.lhs.true.i360:                               ; preds = %land.lhs.true.i
  %bcmp.i358 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.83, ptr noundef dereferenceable(7) %buffer, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i358)
  %tobool.not.i359.not = icmp eq i32 %bcmp.i358, 0
  br i1 %tobool.not.i359.not, label %land.lhs.true.i360.sw.bb_crit_edge, label %if.else13

land.lhs.true.i360.sw.bb_crit_edge:               ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.else13:                                        ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %spec.select)
  %cmp.not.i365 = icmp ult i32 %spec.select, 10
  br i1 %cmp.not.i365, label %if.else13.land.lhs.true.i376_crit_edge, label %land.lhs.true.i368

if.else13.land.lhs.true.i376_crit_edge:           ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i376

land.lhs.true.i368:                               ; preds = %if.else13
  %bcmp.i366 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.84, ptr noundef dereferenceable(10) %buffer, i32 10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i366)
  %tobool.not.i367.not = icmp eq i32 %bcmp.i366, 0
  br i1 %tobool.not.i367.not, label %land.lhs.true.i368.if.end59_crit_edge, label %land.lhs.true.i368.land.lhs.true.i376_crit_edge

land.lhs.true.i368.land.lhs.true.i376_crit_edge:  ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i376

land.lhs.true.i368.if.end59_crit_edge:            ; preds = %land.lhs.true.i368
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

land.lhs.true.i376:                               ; preds = %land.lhs.true.i368.land.lhs.true.i376_crit_edge, %if.else13.land.lhs.true.i376_crit_edge
  %bcmp.i374 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.85, ptr noundef dereferenceable(7) %buffer, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i374)
  %tobool.not.i375.not = icmp eq i32 %bcmp.i374, 0
  br i1 %tobool.not.i375.not, label %land.lhs.true.i376.sw.bb_crit_edge, label %land.lhs.true.i376.if.else25_crit_edge

land.lhs.true.i376.if.else25_crit_edge:           ; preds = %land.lhs.true.i376
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else25

land.lhs.true.i376.sw.bb_crit_edge:               ; preds = %land.lhs.true.i376
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.else25:                                        ; preds = %land.lhs.true.i376.if.else25_crit_edge, %if.end.if.else25_crit_edge, %entry.if.else25_crit_edge
  %len.0597603613618 = phi i32 [ %spec.select, %land.lhs.true.i376.if.else25_crit_edge ], [ %length, %entry.if.else25_crit_edge ], [ %spec.select, %if.end.if.else25_crit_edge ]
  %call26 = tail call fastcc i32 @is_keyword(ptr noundef %buffer, i32 noundef %len.0597603613618, ptr noundef nonnull @.str.86)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.else31, label %if.else25.if.end59_crit_edge

if.else25.if.end59_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.else31:                                        ; preds = %if.else25
  %call32 = tail call fastcc i32 @is_keyword(ptr noundef %buffer, i32 noundef %len.0597603613618, ptr noundef nonnull @.str.87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.else37, label %if.else31.sw.bb_crit_edge

if.else31.sw.bb_crit_edge:                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.else37:                                        ; preds = %if.else31
  %call38 = tail call fastcc i32 @is_keyword(ptr noundef %buffer, i32 noundef %len.0597603613618, ptr noundef nonnull @.str.88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.else43, label %if.else37.sw.bb_crit_edge

if.else37.sw.bb_crit_edge:                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.else43:                                        ; preds = %if.else37
  %call44 = tail call fastcc i32 @is_keyword(ptr noundef %buffer, i32 noundef %len.0597603613618, ptr noundef nonnull @.str.89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.else43.cleanup_crit_edge, label %if.else43.sw.bb_crit_edge

if.else43.sw.bb_crit_edge:                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %if.else25.if.end59_crit_edge, %land.lhs.true.i368.if.end59_crit_edge
  %len.0597603612 = phi i32 [ %len.0597603613618, %if.else25.if.end59_crit_edge ], [ %spec.select, %land.lhs.true.i368.if.end59_crit_edge ]
  %cmd.sroa.45.0.ph = phi i32 [ 12, %if.else25.if.end59_crit_edge ], [ 17, %land.lhs.true.i368.if.end59_crit_edge ]
  %arg_len.0.ph = phi i32 [ %call26, %if.else25.if.end59_crit_edge ], [ 10, %land.lhs.true.i368.if.end59_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buffer, i32 %arg_len.0.ph
  %sub60 = sub i32 %len.0597603612, %arg_len.0.ph
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else43.sw.bb_crit_edge, %if.else37.sw.bb_crit_edge, %if.else31.sw.bb_crit_edge, %land.lhs.true.i376.sw.bb_crit_edge, %land.lhs.true.i360.sw.bb_crit_edge, %land.lhs.true.i.sw.bb_crit_edge
  %len.0598 = phi i32 [ %len.0597603613618, %if.else31.sw.bb_crit_edge ], [ %len.0597603613618, %if.else37.sw.bb_crit_edge ], [ %len.0597603613618, %if.else43.sw.bb_crit_edge ], [ %spec.select, %land.lhs.true.i.sw.bb_crit_edge ], [ %spec.select, %land.lhs.true.i360.sw.bb_crit_edge ], [ %spec.select, %land.lhs.true.i376.sw.bb_crit_edge ]
  %cmd.sroa.45.0.ph.ph = phi i32 [ 15, %if.else31.sw.bb_crit_edge ], [ 18, %if.else37.sw.bb_crit_edge ], [ 19, %if.else43.sw.bb_crit_edge ], [ 10, %land.lhs.true.i.sw.bb_crit_edge ], [ 11, %land.lhs.true.i360.sw.bb_crit_edge ], [ 14, %land.lhs.true.i376.sw.bb_crit_edge ]
  %arg_len.0.ph.ph = phi i32 [ %call32, %if.else31.sw.bb_crit_edge ], [ %call38, %if.else37.sw.bb_crit_edge ], [ %call44, %if.else43.sw.bb_crit_edge ], [ 7, %land.lhs.true.i.sw.bb_crit_edge ], [ 7, %land.lhs.true.i360.sw.bb_crit_edge ], [ 7, %land.lhs.true.i376.sw.bb_crit_edge ]
  %add.ptr546 = getelementptr i8, ptr %buffer, i32 %arg_len.0.ph.ph
  %sub60547 = sub i32 %len.0598, %arg_len.0.ph.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub60547)
  %cmp10.i = icmp sgt i32 %sub60547, 0
  br i1 %cmp10.i, label %sw.bb.land.lhs.true.i381_crit_edge, label %sw.bb.sym_skip_spaces.exit_crit_edge

sw.bb.sym_skip_spaces.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit

sw.bb.land.lhs.true.i381_crit_edge:               ; preds = %sw.bb
  br label %land.lhs.true.i381

land.lhs.true.i381:                               ; preds = %for.inc.i.land.lhs.true.i381_crit_edge, %sw.bb.land.lhs.true.i381_crit_edge
  %cnt.012.i = phi i32 [ %dec.i, %for.inc.i.land.lhs.true.i381_crit_edge ], [ %sub60547, %sw.bb.land.lhs.true.i381_crit_edge ]
  %ptr.addr.011.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.lhs.true.i381_crit_edge ], [ %add.ptr546, %sw.bb.land.lhs.true.i381_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.addr.011.i, i32 1
  %4 = ptrtoint ptr %ptr.addr.011.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptr.addr.011.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i380 = icmp eq i8 %5, 0
  br i1 %tobool.not.i380, label %land.lhs.true.i381.sym_skip_spaces.exit_crit_edge, label %land.rhs.i

land.lhs.true.i381.sym_skip_spaces.exit_crit_edge: ; preds = %land.lhs.true.i381
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i381
  %conv.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp4.not.i = icmp eq i8 %8, 0
  br i1 %cmp4.not.i, label %land.rhs.i.sym_skip_spaces.exit_crit_edge, label %for.inc.i

land.rhs.i.sym_skip_spaces.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit

for.inc.i:                                        ; preds = %land.rhs.i
  %dec.i = add nsw i32 %cnt.012.i, -1
  %cmp.i = icmp sgt i32 %cnt.012.i, 1
  br i1 %cmp.i, label %for.inc.i.land.lhs.true.i381_crit_edge, label %sym_skip_spaces.exit.thread

for.inc.i.land.lhs.true.i381_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i381

sym_skip_spaces.exit:                             ; preds = %land.rhs.i.sym_skip_spaces.exit_crit_edge, %land.lhs.true.i381.sym_skip_spaces.exit_crit_edge, %sw.bb.sym_skip_spaces.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ %sub60547, %sw.bb.sym_skip_spaces.exit_crit_edge ], [ %cnt.012.i, %land.rhs.i.sym_skip_spaces.exit_crit_edge ], [ %cnt.012.i, %land.lhs.true.i381.sym_skip_spaces.exit_crit_edge ]
  %sub.i = sub i32 %sub60547, %cnt.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp63 = icmp slt i32 %sub.i, 1
  br i1 %cmp63, label %sym_skip_spaces.exit.cleanup_crit_edge, label %if.end66

sym_skip_spaces.exit.cleanup_crit_edge:           ; preds = %sym_skip_spaces.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sym_skip_spaces.exit.thread:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub60547)
  %cmp63621 = icmp slt i32 %sub60547, 1
  br i1 %cmp63621, label %sym_skip_spaces.exit.thread.cleanup_crit_edge, label %if.end66.thread

sym_skip_spaces.exit.thread.cleanup_crit_edge:    ; preds = %sym_skip_spaces.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end66.thread:                                  ; preds = %sym_skip_spaces.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr67626 = getelementptr i8, ptr %buffer, i32 %len.0598
  br label %if.else76

if.end66:                                         ; preds = %sym_skip_spaces.exit
  %add.ptr67 = getelementptr i8, ptr %add.ptr546, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.0.lcssa.i)
  %cmp.not.i383 = icmp slt i32 %cnt.0.lcssa.i, 3
  br i1 %cmp.not.i383, label %if.end66.if.else76_crit_edge, label %land.lhs.true.i386

if.end66.if.else76_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else76

land.lhs.true.i386:                               ; preds = %if.end66
  %bcmp.i384 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.90, ptr noundef dereferenceable(3) %add.ptr67, i32 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i384)
  %tobool.not.i385.not = icmp eq i32 %bcmp.i384, 0
  br i1 %tobool.not.i385.not, label %if.then72, label %land.lhs.true.i386.if.else76_crit_edge

land.lhs.true.i386.if.else76_crit_edge:           ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else76

if.then72:                                        ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr73 = getelementptr i8, ptr %add.ptr67, i32 3
  %sub74 = add nsw i32 %cnt.0.lcssa.i, -3
  br label %sw.epilog

if.else76:                                        ; preds = %land.lhs.true.i386.if.else76_crit_edge, %if.end66.if.else76_crit_edge, %if.end66.thread
  %add.ptr67629 = phi ptr [ %add.ptr67626, %if.end66.thread ], [ %add.ptr67, %land.lhs.true.i386.if.else76_crit_edge ], [ %add.ptr67, %if.end66.if.else76_crit_edge ]
  %cnt.0.lcssa.i622628 = phi i32 [ 0, %if.end66.thread ], [ %cnt.0.lcssa.i, %land.lhs.true.i386.if.else76_crit_edge ], [ %cnt.0.lcssa.i, %if.end66.if.else76_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #13
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %end.i, align 4, !annotation !342
  %call.i390 = call i32 @simple_strtoul(ptr noundef %add.ptr67629, ptr noundef nonnull %end.i, i32 noundef 10) #13
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #13
  %tobool78.not = icmp eq ptr %11, %add.ptr67629
  br i1 %tobool78.not, label %if.else76.cleanup_crit_edge, label %if.end80

if.else76.cleanup_crit_edge:                      ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end80:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr67629 to i32
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr81 = getelementptr i8, ptr %add.ptr67629, i32 %sub.ptr.sub.i
  %sub82 = sub i32 %cnt.0.lcssa.i622628, %sub.ptr.sub.i
  %shl = shl nuw i32 1, %call.i390
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end80, %if.then72, %if.end59
  %cmd.sroa.45.0.ph549 = phi i32 [ %cmd.sroa.45.0.ph, %if.end59 ], [ %cmd.sroa.45.0.ph.ph, %if.end80 ], [ %cmd.sroa.45.0.ph.ph, %if.then72 ]
  %cmd.sroa.0.0 = phi i32 [ 0, %if.end59 ], [ %shl, %if.end80 ], [ -1, %if.then72 ]
  %ptr.0 = phi ptr [ %add.ptr, %if.end59 ], [ %add.ptr81, %if.end80 ], [ %add.ptr73, %if.then72 ]
  %len.1 = phi i32 [ %sub60, %if.end59 ], [ %sub82, %if.end80 ], [ %sub74, %if.then72 ]
  %12 = zext i32 %cmd.sroa.45.0.ph549 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %cmd.sroa.45.0.ph549, label %sw.epilog.sw.epilog209_crit_edge [
    i32 17, label %sw.epilog.sw.bb86_crit_edge
    i32 10, label %sw.epilog.sw.bb86_crit_edge690
    i32 11, label %sw.epilog.sw.bb86_crit_edge691
    i32 14, label %sw.epilog.sw.bb86_crit_edge692
    i32 12, label %while.cond.preheader
    i32 15, label %while.cond189.preheader
  ]

sw.epilog.sw.bb86_crit_edge692:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb86

sw.epilog.sw.bb86_crit_edge691:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb86

sw.epilog.sw.bb86_crit_edge690:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb86

sw.epilog.sw.bb86_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb86

sw.epilog.sw.epilog209_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog209

while.cond189.preheader:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp190580 = icmp sgt i32 %len.1, 0
  br i1 %cmp190580, label %while.cond189.preheader.land.lhs.true.i465.preheader_crit_edge, label %while.cond189.preheader.sw.epilog209_crit_edge

while.cond189.preheader.sw.epilog209_crit_edge:   ; preds = %while.cond189.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog209

while.cond189.preheader.land.lhs.true.i465.preheader_crit_edge: ; preds = %while.cond189.preheader
  br label %land.lhs.true.i465.preheader

while.cond.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp101583 = icmp sgt i32 %len.1, 0
  br i1 %cmp101583, label %while.cond.preheader.land.lhs.true.i417.preheader_crit_edge, label %while.cond.preheader.sw.epilog209_crit_edge

while.cond.preheader.sw.epilog209_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog209

while.cond.preheader.land.lhs.true.i417.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %land.lhs.true.i417.preheader

sw.bb86:                                          ; preds = %sw.epilog.sw.bb86_crit_edge, %sw.epilog.sw.bb86_crit_edge690, %sw.epilog.sw.bb86_crit_edge691, %sw.epilog.sw.bb86_crit_edge692
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp10.i391 = icmp sgt i32 %len.1, 0
  br i1 %cmp10.i391, label %sw.bb86.land.lhs.true.i396_crit_edge, label %sw.bb86.sym_skip_spaces.exit406_crit_edge

sw.bb86.sym_skip_spaces.exit406_crit_edge:        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit406

sw.bb86.land.lhs.true.i396_crit_edge:             ; preds = %sw.bb86
  br label %land.lhs.true.i396

land.lhs.true.i396:                               ; preds = %for.inc.i403.land.lhs.true.i396_crit_edge, %sw.bb86.land.lhs.true.i396_crit_edge
  %cnt.012.i392 = phi i32 [ %dec.i401, %for.inc.i403.land.lhs.true.i396_crit_edge ], [ %len.1, %sw.bb86.land.lhs.true.i396_crit_edge ]
  %ptr.addr.011.i393 = phi ptr [ %incdec.ptr.i394, %for.inc.i403.land.lhs.true.i396_crit_edge ], [ %ptr.0, %sw.bb86.land.lhs.true.i396_crit_edge ]
  %incdec.ptr.i394 = getelementptr i8, ptr %ptr.addr.011.i393, i32 1
  %13 = ptrtoint ptr %ptr.addr.011.i393 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ptr.addr.011.i393, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i395 = icmp eq i8 %14, 0
  br i1 %tobool.not.i395, label %land.lhs.true.i396.sym_skip_spaces.exit406_crit_edge, label %land.rhs.i400

land.lhs.true.i396.sym_skip_spaces.exit406_crit_edge: ; preds = %land.lhs.true.i396
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit406

land.rhs.i400:                                    ; preds = %land.lhs.true.i396
  %conv.i397 = zext i8 %14 to i32
  %arrayidx.i398 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i397
  %15 = ptrtoint ptr %arrayidx.i398 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i398, align 1
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp4.not.i399 = icmp eq i8 %17, 0
  br i1 %cmp4.not.i399, label %land.rhs.i400.sym_skip_spaces.exit406_crit_edge, label %for.inc.i403

land.rhs.i400.sym_skip_spaces.exit406_crit_edge:  ; preds = %land.rhs.i400
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit406

for.inc.i403:                                     ; preds = %land.rhs.i400
  %dec.i401 = add nsw i32 %cnt.012.i392, -1
  %cmp.i402 = icmp sgt i32 %cnt.012.i392, 1
  br i1 %cmp.i402, label %for.inc.i403.land.lhs.true.i396_crit_edge, label %for.inc.i403.sym_skip_spaces.exit406_crit_edge

for.inc.i403.sym_skip_spaces.exit406_crit_edge:   ; preds = %for.inc.i403
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit406

for.inc.i403.land.lhs.true.i396_crit_edge:        ; preds = %for.inc.i403
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i396

sym_skip_spaces.exit406:                          ; preds = %for.inc.i403.sym_skip_spaces.exit406_crit_edge, %land.rhs.i400.sym_skip_spaces.exit406_crit_edge, %land.lhs.true.i396.sym_skip_spaces.exit406_crit_edge, %sw.bb86.sym_skip_spaces.exit406_crit_edge
  %cnt.0.lcssa.i404 = phi i32 [ %len.1, %sw.bb86.sym_skip_spaces.exit406_crit_edge ], [ %cnt.012.i392, %land.rhs.i400.sym_skip_spaces.exit406_crit_edge ], [ %cnt.012.i392, %land.lhs.true.i396.sym_skip_spaces.exit406_crit_edge ], [ 0, %for.inc.i403.sym_skip_spaces.exit406_crit_edge ]
  %sub.i405 = sub i32 %len.1, %cnt.0.lcssa.i404
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i405)
  %cmp88 = icmp slt i32 %sub.i405, 1
  br i1 %cmp88, label %sym_skip_spaces.exit406.cleanup_crit_edge, label %if.end91

sym_skip_spaces.exit406.cleanup_crit_edge:        ; preds = %sym_skip_spaces.exit406
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end91:                                         ; preds = %sym_skip_spaces.exit406
  %add.ptr92 = getelementptr i8, ptr %ptr.0, i32 %sub.i405
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i407) #13
  %18 = ptrtoint ptr %end.i407 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %end.i407, align 4, !annotation !342
  %call.i408 = call i32 @simple_strtoul(ptr noundef %add.ptr92, ptr noundef nonnull %end.i407, i32 noundef 10) #13
  %19 = ptrtoint ptr %end.i407 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i407, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i407) #13
  %tobool95.not = icmp eq ptr %20, %add.ptr92
  br i1 %tobool95.not, label %if.end91.cleanup_crit_edge, label %if.end97

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.rhs.cast.i410 = ptrtoint ptr %add.ptr92 to i32
  %sub.ptr.lhs.cast.i409 = ptrtoint ptr %20 to i32
  %.neg = add i32 %cnt.0.lcssa.i404, %sub.ptr.rhs.cast.i410
  %sub99 = sub i32 %.neg, %sub.ptr.lhs.cast.i409
  br label %sw.epilog209

land.lhs.true.i417.preheader:                     ; preds = %if.end185.land.lhs.true.i417.preheader_crit_edge, %while.cond.preheader.land.lhs.true.i417.preheader_crit_edge
  %len.2590 = phi i32 [ %sub187, %if.end185.land.lhs.true.i417.preheader_crit_edge ], [ %len.1, %while.cond.preheader.land.lhs.true.i417.preheader_crit_edge ]
  %ptr.1589 = phi ptr [ %add.ptr186, %if.end185.land.lhs.true.i417.preheader_crit_edge ], [ %ptr.0, %while.cond.preheader.land.lhs.true.i417.preheader_crit_edge ]
  %cmd.sroa.8.0584 = phi i32 [ %or119, %if.end185.land.lhs.true.i417.preheader_crit_edge ], [ 0, %while.cond.preheader.land.lhs.true.i417.preheader_crit_edge ]
  br label %land.lhs.true.i417

land.lhs.true.i417:                               ; preds = %for.inc.i424.land.lhs.true.i417_crit_edge, %land.lhs.true.i417.preheader
  %cnt.012.i413 = phi i32 [ %dec.i422, %for.inc.i424.land.lhs.true.i417_crit_edge ], [ %len.2590, %land.lhs.true.i417.preheader ]
  %ptr.addr.011.i414 = phi ptr [ %incdec.ptr.i415, %for.inc.i424.land.lhs.true.i417_crit_edge ], [ %ptr.1589, %land.lhs.true.i417.preheader ]
  %incdec.ptr.i415 = getelementptr i8, ptr %ptr.addr.011.i414, i32 1
  %21 = ptrtoint ptr %ptr.addr.011.i414 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ptr.addr.011.i414, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i416 = icmp eq i8 %22, 0
  br i1 %tobool.not.i416, label %land.lhs.true.i417.sym_skip_spaces.exit427_crit_edge, label %land.rhs.i421

land.lhs.true.i417.sym_skip_spaces.exit427_crit_edge: ; preds = %land.lhs.true.i417
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit427

land.rhs.i421:                                    ; preds = %land.lhs.true.i417
  %conv.i418 = zext i8 %22 to i32
  %arrayidx.i419 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i418
  %23 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i419, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp4.not.i420 = icmp eq i8 %25, 0
  br i1 %cmp4.not.i420, label %land.rhs.i421.sym_skip_spaces.exit427_crit_edge, label %for.inc.i424

land.rhs.i421.sym_skip_spaces.exit427_crit_edge:  ; preds = %land.rhs.i421
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit427

for.inc.i424:                                     ; preds = %land.rhs.i421
  %dec.i422 = add nsw i32 %cnt.012.i413, -1
  %cmp.i423 = icmp sgt i32 %cnt.012.i413, 1
  br i1 %cmp.i423, label %for.inc.i424.land.lhs.true.i417_crit_edge, label %sym_skip_spaces.exit427.thread

for.inc.i424.land.lhs.true.i417_crit_edge:        ; preds = %for.inc.i424
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i417

sym_skip_spaces.exit427:                          ; preds = %land.rhs.i421.sym_skip_spaces.exit427_crit_edge, %land.lhs.true.i417.sym_skip_spaces.exit427_crit_edge
  %sub.i426 = sub i32 %len.2590, %cnt.012.i413
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i426)
  %cmp104 = icmp slt i32 %sub.i426, 1
  br i1 %cmp104, label %sym_skip_spaces.exit427.cleanup_crit_edge, label %if.end107

sym_skip_spaces.exit427.cleanup_crit_edge:        ; preds = %sym_skip_spaces.exit427
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sym_skip_spaces.exit427.thread:                   ; preds = %for.inc.i424
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.2590)
  %cmp104632 = icmp slt i32 %len.2590, 1
  br i1 %cmp104632, label %sym_skip_spaces.exit427.thread.cleanup_crit_edge, label %if.end107.thread

sym_skip_spaces.exit427.thread.cleanup_crit_edge: ; preds = %sym_skip_spaces.exit427.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end107.thread:                                 ; preds = %sym_skip_spaces.exit427.thread
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr108638 = getelementptr i8, ptr %ptr.1589, i32 %len.2590
  br label %if.else132

if.end107:                                        ; preds = %sym_skip_spaces.exit427
  %add.ptr108 = getelementptr i8, ptr %ptr.1589, i32 %sub.i426
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cnt.012.i413)
  %cmp.not.i429 = icmp ult i32 %cnt.012.i413, 5
  br i1 %cmp.not.i429, label %if.end107.if.else132_crit_edge, label %land.lhs.true.i432

if.end107.if.else132_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else132

land.lhs.true.i432:                               ; preds = %if.end107
  %bcmp.i430 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.91, ptr noundef dereferenceable(5) %add.ptr108, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i430)
  %tobool.not.i431.not = icmp eq i32 %bcmp.i430, 0
  br i1 %tobool.not.i431.not, label %land.lhs.true.i432.if.end185_crit_edge, label %land.lhs.true.i440

land.lhs.true.i432.if.end185_crit_edge:           ; preds = %land.lhs.true.i432
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

land.lhs.true.i440:                               ; preds = %land.lhs.true.i432
  %bcmp.i438 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.92, ptr noundef dereferenceable(5) %add.ptr108, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i438)
  %tobool.not.i439.not = icmp eq i32 %bcmp.i438, 0
  br i1 %tobool.not.i439.not, label %land.lhs.true.i440.if.end185_crit_edge, label %land.lhs.true.i448

land.lhs.true.i440.if.end185_crit_edge:           ; preds = %land.lhs.true.i440
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

land.lhs.true.i448:                               ; preds = %land.lhs.true.i440
  %bcmp.i446 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.93, ptr noundef dereferenceable(5) %add.ptr108, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i446)
  %tobool.not.i447.not = icmp eq i32 %bcmp.i446, 0
  br i1 %tobool.not.i447.not, label %land.lhs.true.i448.if.end185_crit_edge, label %if.else126

land.lhs.true.i448.if.end185_crit_edge:           ; preds = %land.lhs.true.i448
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else126:                                       ; preds = %land.lhs.true.i448
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cnt.012.i413)
  %cmp.not.i453 = icmp ult i32 %cnt.012.i413, 6
  br i1 %cmp.not.i453, label %if.else126.if.else132_crit_edge, label %land.lhs.true.i456

if.else126.if.else132_crit_edge:                  ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else132

land.lhs.true.i456:                               ; preds = %if.else126
  %bcmp.i454 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.94, ptr noundef dereferenceable(6) %add.ptr108, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i454)
  %tobool.not.i455.not = icmp eq i32 %bcmp.i454, 0
  br i1 %tobool.not.i455.not, label %land.lhs.true.i456.if.end185_crit_edge, label %land.lhs.true.i456.if.else132_crit_edge

land.lhs.true.i456.if.else132_crit_edge:          ; preds = %land.lhs.true.i456
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else132

land.lhs.true.i456.if.end185_crit_edge:           ; preds = %land.lhs.true.i456
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else132:                                       ; preds = %land.lhs.true.i456.if.else132_crit_edge, %if.else126.if.else132_crit_edge, %if.end107.if.else132_crit_edge, %if.end107.thread
  %cnt.0.lcssa.i425633640649653659 = phi i32 [ %cnt.012.i413, %land.lhs.true.i456.if.else132_crit_edge ], [ 5, %if.else126.if.else132_crit_edge ], [ %cnt.012.i413, %if.end107.if.else132_crit_edge ], [ 0, %if.end107.thread ]
  %add.ptr108642648654658 = phi ptr [ %add.ptr108, %land.lhs.true.i456.if.else132_crit_edge ], [ %add.ptr108, %if.else126.if.else132_crit_edge ], [ %add.ptr108, %if.end107.if.else132_crit_edge ], [ %add.ptr108638, %if.end107.thread ]
  %call133 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.else138, label %if.else132.if.end185_crit_edge

if.else132.if.end185_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else138:                                       ; preds = %if.else132
  %call139 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.else144, label %if.else138.if.end185_crit_edge

if.else138.if.end185_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else144:                                       ; preds = %if.else138
  %call145 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.else150, label %if.else144.if.end185_crit_edge

if.else144.if.end185_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else150:                                       ; preds = %if.else144
  %call151 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.98)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else156, label %if.else150.if.end185_crit_edge

if.else150.if.end185_crit_edge:                   ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else156:                                       ; preds = %if.else150
  %call157 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.else162, label %if.else156.if.end185_crit_edge

if.else156.if.end185_crit_edge:                   ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else162:                                       ; preds = %if.else156
  %call163 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.else168, label %if.else162.if.end185_crit_edge

if.else162.if.end185_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else168:                                       ; preds = %if.else162
  %call169 = call fastcc i32 @is_keyword(ptr noundef %add.ptr108642648654658, i32 noundef %cnt.0.lcssa.i425633640649653659, ptr noundef nonnull @.str.101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.else168.cleanup_crit_edge, label %if.else168.if.end185_crit_edge

if.else168.if.end185_crit_edge:                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.else168.cleanup_crit_edge:                     ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end185:                                        ; preds = %if.else168.if.end185_crit_edge, %if.else162.if.end185_crit_edge, %if.else156.if.end185_crit_edge, %if.else150.if.end185_crit_edge, %if.else144.if.end185_crit_edge, %if.else138.if.end185_crit_edge, %if.else132.if.end185_crit_edge, %land.lhs.true.i456.if.end185_crit_edge, %land.lhs.true.i448.if.end185_crit_edge, %land.lhs.true.i440.if.end185_crit_edge, %land.lhs.true.i432.if.end185_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true.i432.if.end185_crit_edge ], [ 2, %land.lhs.true.i440.if.end185_crit_edge ], [ 8, %land.lhs.true.i448.if.end185_crit_edge ], [ 16, %land.lhs.true.i456.if.end185_crit_edge ], [ 32, %if.else132.if.end185_crit_edge ], [ 64, %if.else138.if.end185_crit_edge ], [ 128, %if.else144.if.end185_crit_edge ], [ 256, %if.else150.if.end185_crit_edge ], [ 512, %if.else156.if.end185_crit_edge ], [ 1024, %if.else162.if.end185_crit_edge ], [ 2048, %if.else168.if.end185_crit_edge ]
  %add.ptr108641 = phi ptr [ %add.ptr108, %land.lhs.true.i432.if.end185_crit_edge ], [ %add.ptr108, %land.lhs.true.i440.if.end185_crit_edge ], [ %add.ptr108, %land.lhs.true.i448.if.end185_crit_edge ], [ %add.ptr108, %land.lhs.true.i456.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else132.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else138.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else144.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else150.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else156.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else162.if.end185_crit_edge ], [ %add.ptr108642648654658, %if.else168.if.end185_crit_edge ]
  %cnt.0.lcssa.i425634 = phi i32 [ %cnt.012.i413, %land.lhs.true.i432.if.end185_crit_edge ], [ %cnt.012.i413, %land.lhs.true.i440.if.end185_crit_edge ], [ %cnt.012.i413, %land.lhs.true.i448.if.end185_crit_edge ], [ %cnt.012.i413, %land.lhs.true.i456.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else132.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else138.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else144.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else150.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else156.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else162.if.end185_crit_edge ], [ %cnt.0.lcssa.i425633640649653659, %if.else168.if.end185_crit_edge ]
  %arg_len.1 = phi i32 [ 5, %land.lhs.true.i432.if.end185_crit_edge ], [ 5, %land.lhs.true.i440.if.end185_crit_edge ], [ 5, %land.lhs.true.i448.if.end185_crit_edge ], [ 6, %land.lhs.true.i456.if.end185_crit_edge ], [ %call133, %if.else132.if.end185_crit_edge ], [ %call139, %if.else138.if.end185_crit_edge ], [ %call145, %if.else144.if.end185_crit_edge ], [ %call151, %if.else150.if.end185_crit_edge ], [ %call157, %if.else156.if.end185_crit_edge ], [ %call163, %if.else162.if.end185_crit_edge ], [ %call169, %if.else168.if.end185_crit_edge ]
  %or119 = or i32 %cmd.sroa.8.0584, %.sink
  %add.ptr186 = getelementptr i8, ptr %add.ptr108641, i32 %arg_len.1
  %sub187 = sub i32 %cnt.0.lcssa.i425634, %arg_len.1
  %cmp101 = icmp sgt i32 %sub187, 0
  br i1 %cmp101, label %if.end185.land.lhs.true.i417.preheader_crit_edge, label %if.end185.sw.epilog209_crit_edge

if.end185.sw.epilog209_crit_edge:                 ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog209

if.end185.land.lhs.true.i417.preheader_crit_edge: ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i417.preheader

land.lhs.true.i465.preheader:                     ; preds = %if.then202.land.lhs.true.i465.preheader_crit_edge, %while.cond189.preheader.land.lhs.true.i465.preheader_crit_edge
  %len.3582 = phi i32 [ %sub207, %if.then202.land.lhs.true.i465.preheader_crit_edge ], [ %len.1, %while.cond189.preheader.land.lhs.true.i465.preheader_crit_edge ]
  %ptr.2581 = phi ptr [ %add.ptr206, %if.then202.land.lhs.true.i465.preheader_crit_edge ], [ %ptr.0, %while.cond189.preheader.land.lhs.true.i465.preheader_crit_edge ]
  br label %land.lhs.true.i465

land.lhs.true.i465:                               ; preds = %for.inc.i472.land.lhs.true.i465_crit_edge, %land.lhs.true.i465.preheader
  %cnt.012.i461 = phi i32 [ %dec.i470, %for.inc.i472.land.lhs.true.i465_crit_edge ], [ %len.3582, %land.lhs.true.i465.preheader ]
  %ptr.addr.011.i462 = phi ptr [ %incdec.ptr.i463, %for.inc.i472.land.lhs.true.i465_crit_edge ], [ %ptr.2581, %land.lhs.true.i465.preheader ]
  %incdec.ptr.i463 = getelementptr i8, ptr %ptr.addr.011.i462, i32 1
  %26 = ptrtoint ptr %ptr.addr.011.i462 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ptr.addr.011.i462, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i464 = icmp eq i8 %27, 0
  br i1 %tobool.not.i464, label %land.lhs.true.i465.sym_skip_spaces.exit475_crit_edge, label %land.rhs.i469

land.lhs.true.i465.sym_skip_spaces.exit475_crit_edge: ; preds = %land.lhs.true.i465
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit475

land.rhs.i469:                                    ; preds = %land.lhs.true.i465
  %conv.i466 = zext i8 %27 to i32
  %arrayidx.i467 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i466
  %28 = ptrtoint ptr %arrayidx.i467 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i467, align 1
  %30 = and i8 %29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp4.not.i468 = icmp eq i8 %30, 0
  br i1 %cmp4.not.i468, label %land.rhs.i469.sym_skip_spaces.exit475_crit_edge, label %for.inc.i472

land.rhs.i469.sym_skip_spaces.exit475_crit_edge:  ; preds = %land.rhs.i469
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_skip_spaces.exit475

for.inc.i472:                                     ; preds = %land.rhs.i469
  %dec.i470 = add nsw i32 %cnt.012.i461, -1
  %cmp.i471 = icmp sgt i32 %cnt.012.i461, 1
  br i1 %cmp.i471, label %for.inc.i472.land.lhs.true.i465_crit_edge, label %for.inc.i472.cleanup_crit_edge

for.inc.i472.cleanup_crit_edge:                   ; preds = %for.inc.i472
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i472.land.lhs.true.i465_crit_edge:        ; preds = %for.inc.i472
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i465

sym_skip_spaces.exit475:                          ; preds = %land.rhs.i469.sym_skip_spaces.exit475_crit_edge, %land.lhs.true.i465.sym_skip_spaces.exit475_crit_edge
  %sub.i474 = sub i32 %len.3582, %cnt.012.i461
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i474)
  %cmp194 = icmp slt i32 %sub.i474, 1
  br i1 %cmp194, label %sym_skip_spaces.exit475.cleanup_crit_edge, label %if.end197

sym_skip_spaces.exit475.cleanup_crit_edge:        ; preds = %sym_skip_spaces.exit475
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end197:                                        ; preds = %sym_skip_spaces.exit475
  %add.ptr198 = getelementptr i8, ptr %ptr.2581, i32 %sub.i474
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cnt.012.i461)
  %cmp.not.i477 = icmp ult i32 %cnt.012.i461, 7
  br i1 %cmp.not.i477, label %if.end197.cleanup_crit_edge, label %land.lhs.true.i480

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i480:                               ; preds = %if.end197
  %bcmp.i478 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.102, ptr noundef dereferenceable(7) %add.ptr198, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i478)
  %tobool.not.i479.not = icmp eq i32 %bcmp.i478, 0
  br i1 %tobool.not.i479.not, label %if.then202, label %land.lhs.true.i480.cleanup_crit_edge

land.lhs.true.i480.cleanup_crit_edge:             ; preds = %land.lhs.true.i480
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then202:                                       ; preds = %land.lhs.true.i480
  %add.ptr206 = getelementptr i8, ptr %add.ptr198, i32 7
  %sub207 = add nsw i32 %cnt.012.i461, -7
  %cmp190.not = icmp eq i32 %sub207, 0
  br i1 %cmp190.not, label %if.then202.if.else212_crit_edge, label %if.then202.land.lhs.true.i465.preheader_crit_edge

if.then202.land.lhs.true.i465.preheader_crit_edge: ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i465.preheader

if.then202.if.else212_crit_edge:                  ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else212

sw.epilog209:                                     ; preds = %if.end185.sw.epilog209_crit_edge, %if.end97, %while.cond.preheader.sw.epilog209_crit_edge, %while.cond189.preheader.sw.epilog209_crit_edge, %sw.epilog.sw.epilog209_crit_edge
  %cmd.sroa.8.3 = phi i32 [ 0, %sw.epilog.sw.epilog209_crit_edge ], [ %call.i408, %if.end97 ], [ 0, %while.cond.preheader.sw.epilog209_crit_edge ], [ 0, %while.cond189.preheader.sw.epilog209_crit_edge ], [ %or119, %if.end185.sw.epilog209_crit_edge ]
  %len.4 = phi i32 [ %len.1, %sw.epilog.sw.epilog209_crit_edge ], [ %sub99, %if.end97 ], [ %len.1, %while.cond.preheader.sw.epilog209_crit_edge ], [ %len.1, %while.cond189.preheader.sw.epilog209_crit_edge ], [ %sub187, %if.end185.sw.epilog209_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.4)
  %tobool210.not = icmp eq i32 %len.4, 0
  br i1 %tobool210.not, label %sw.epilog209.if.else212_crit_edge, label %sw.epilog209.cleanup_crit_edge

sw.epilog209.cleanup_crit_edge:                   ; preds = %sw.epilog209
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog209.if.else212_crit_edge:                ; preds = %sw.epilog209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else212

if.else212:                                       ; preds = %sw.epilog209.if.else212_crit_edge, %if.then202.if.else212_crit_edge
  %cmd.sroa.8.3672 = phi i32 [ %cmd.sroa.8.3, %sw.epilog209.if.else212_crit_edge ], [ 0, %if.then202.if.else212_crit_edge ]
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %31 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host_lock, align 4
  %call217 = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #13
  %33 = zext i32 %cmd.sroa.45.0.ph549 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %cmd.sroa.45.0.ph549, label %for.cond.preheader.i [
    i32 0, label %if.else212.sym_exec_user_command.exit_crit_edge
    i32 12, label %sw.bb1.i
    i32 17, label %sw.bb2.i
  ]

if.else212.sym_exec_user_command.exit_crit_edge:  ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_exec_user_command.exit

for.cond.preheader.i:                             ; preds = %if.else212
  %istat_sem145.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 95
  %ioaddr147.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 4
  %minsync_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 67
  %maxoffs_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 69
  %minsync.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 64
  %maxoffs.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 66
  br label %for.body.i

sw.bb1.i:                                         ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %cmd.sroa.8.3672, ptr @sym_debug_flags, align 4
  br label %sym_exec_user_command.exit

sw.bb2.i:                                         ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i484 = trunc i32 %cmd.sroa.8.3672 to i8
  %verbose.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 87
  %34 = ptrtoint ptr %verbose.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i484, ptr %verbose.i, align 2
  br label %sym_exec_user_command.exit

for.body.i:                                       ; preds = %for.inc152.i.for.body.i_crit_edge, %for.cond.preheader.i
  %cmd.sroa.8.4 = phi i32 [ %cmd.sroa.8.3672, %for.cond.preheader.i ], [ %cmd.sroa.8.8, %for.inc152.i.for.body.i_crit_edge ]
  %t.0229.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc153.i, %for.inc152.i.for.body.i_crit_edge ]
  %35 = shl nuw nsw i32 1, %t.0229.i
  %36 = and i32 %35, %cmd.sroa.0.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i485 = icmp eq i32 %36, 0
  br i1 %tobool.not.i485, label %for.body.i.for.inc152.i_crit_edge, label %if.end.i

for.body.i.for.inc152.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152.i

if.end.i:                                         ; preds = %for.body.i
  %nlcb.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 2
  %37 = ptrtoint ptr %nlcb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlcb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not.i = icmp eq i32 %38, 0
  br i1 %tobool6.not.i, label %if.end.i.for.inc152.i_crit_edge, label %if.end8.i

if.end.i.for.inc152.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152.i

if.end8.i:                                        ; preds = %if.end.i
  %39 = zext i32 %cmd.sroa.45.0.ph549 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %cmd.sroa.45.0.ph549, label %if.end8.i.for.inc152.i_crit_edge [
    i32 10, label %sw.bb10.i
    i32 14, label %sw.bb103.i
    i32 11, label %cond.end5.i.peel.i
    i32 18, label %sw.bb123.i
    i32 19, label %cond.end137.peel.i
    i32 15, label %sw.bb149.i
  ]

if.end8.i.for.inc152.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152.i

cond.end137.peel.i:                               ; preds = %if.end8.i
  %lunmp.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 4
  %lun0p.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 3
  %40 = ptrtoint ptr %lun0p.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %cond138.peel.i = load ptr, ptr %lun0p.i, align 4
  %tobool139.not.peel.i = icmp eq ptr %cond138.peel.i, null
  br i1 %tobool139.not.peel.i, label %cond.end137.peel.i.cond.false.i.preheader_crit_edge, label %if.then140.peel.i

cond.end137.peel.i.cond.false.i.preheader_crit_edge: ; preds = %cond.end137.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.preheader

cond.false.i.preheader:                           ; preds = %if.then140.peel.i, %cond.end137.peel.i.cond.false.i.preheader_crit_edge
  br label %cond.false.i

if.then140.peel.i:                                ; preds = %cond.end137.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  %to_clear.peel.i = getelementptr inbounds %struct.sym_lcb, ptr %cond138.peel.i, i32 0, i32 11
  %41 = ptrtoint ptr %to_clear.peel.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %to_clear.peel.i, align 4
  br label %cond.false.i.preheader

cond.end5.i.peel.i:                               ; preds = %if.end8.i
  %lunmp.i.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 4
  %lun0p.i.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 3
  %starget.i.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 13
  %42 = ptrtoint ptr %lun0p.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond6.i.peel.i = load ptr, ptr %lun0p.i.i, align 4
  %tobool7.not.i.peel.i = icmp eq ptr %cond6.i.peel.i, null
  %.pre = trunc i32 %cmd.sroa.8.4 to i16
  br i1 %tobool7.not.i.peel.i, label %cond.end5.i.peel.i.cond.false.i.i.preheader_crit_edge, label %if.end.i.peel.i

cond.end5.i.peel.i.cond.false.i.i.preheader_crit_edge: ; preds = %cond.end5.i.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i.preheader

if.end.i.peel.i:                                  ; preds = %cond.end5.i.peel.i
  %s.i.peel.i = getelementptr inbounds %struct.sym_lcb, ptr %cond6.i.peel.i, i32 0, i32 7
  %43 = ptrtoint ptr %s.i.peel.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %s.i.peel.i, align 4
  %scdev_depth.i.peel.i = getelementptr inbounds %struct.sym_lcb, ptr %cond6.i.peel.i, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %scdev_depth.i.peel.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %scdev_depth.i.peel.i, align 2
  %47 = call i16 @llvm.umin.i16(i16 %46, i16 %.pre) #13
  %48 = ptrtoint ptr %s.i.peel.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %s.i.peel.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %44)
  %cmp21.not.i.peel.i = icmp eq i16 %47, %44
  br i1 %cmp21.not.i.peel.i, label %if.end.i.peel.i.cond.false.i.i.preheader_crit_edge, label %do.end.i.peel.i

if.end.i.peel.i.cond.false.i.i.preheader_crit_edge: ; preds = %if.end.i.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i.preheader

cond.false.i.i.preheader:                         ; preds = %do.end.i.peel.i, %if.end.i.peel.i.cond.false.i.i.preheader_crit_edge, %cond.end5.i.peel.i.cond.false.i.i.preheader_crit_edge
  br label %cond.false.i.i

do.end.i.peel.i:                                  ; preds = %if.end.i.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv19.i.peel.i = zext i16 %47 to i32
  %49 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %starget.i.i, align 4
  %dev.i.peel.i = getelementptr inbounds %struct.scsi_target, ptr %50, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool27.not.i.peel.i = icmp eq i16 %47, 0
  %cond28.i.peel.i = select i1 %tobool27.not.i.peel.i, ptr @.str.71, ptr @.str.70
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.peel.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond28.i.peel.i, i32 noundef %conv19.i.peel.i) #16
  br label %cond.false.i.i.preheader

sw.bb10.i:                                        ; preds = %if.end8.i
  %51 = add i32 %cmd.sroa.8.4, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254, i32 %51)
  %52 = icmp ult i32 %51, -254
  br i1 %52, label %if.then16.i, label %if.else.i486

if.then16.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #15
  %qas.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5, i32 2
  %53 = ptrtoint ptr %qas.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %qas.i, align 2
  %bf.clear23.i = and i8 %bf.load.i, -113
  store i8 %bf.clear23.i, ptr %qas.i, align 2
  br label %if.end98.i

if.else.i486:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cmd.sroa.8.4)
  %cmp27.i = icmp ult i32 %cmd.sroa.8.4, 10
  br i1 %cmp27.i, label %land.lhs.true.i487, label %if.else.i486.if.else66.i_crit_edge

if.else.i486.if.else66.i_crit_edge:               ; preds = %if.else.i486
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else66.i

land.lhs.true.i487:                               ; preds = %if.else.i486
  %54 = ptrtoint ptr %minsync_dt.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %minsync_dt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool30.not.i = icmp eq i8 %55, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i487.if.else66.i_crit_edge, label %if.then31.i

land.lhs.true.i487.if.else66.i_crit_edge:         ; preds = %land.lhs.true.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else66.i

if.then31.i:                                      ; preds = %land.lhs.true.i487
  call void @__sanitizer_cov_trace_pc() #15
  %conv29.i = zext i8 %55 to i32
  %56 = call i32 @llvm.umax.i32(i32 %cmd.sroa.8.4, i32 %conv29.i)
  %tgoal42.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5
  %qas43.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5, i32 2
  %57 = ptrtoint ptr %qas43.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load44.i = load i8, ptr %qas43.i, align 2
  %bf.set60.i = or i8 %bf.load44.i, -16
  store i8 %bf.set60.i, ptr %qas43.i, align 2
  %conv62.i = trunc i32 %56 to i8
  %58 = ptrtoint ptr %tgoal42.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv62.i, ptr %tgoal42.i, align 4
  %59 = ptrtoint ptr %maxoffs_dt.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %maxoffs_dt.i, align 4
  br label %if.end98.i

if.else66.i:                                      ; preds = %land.lhs.true.i487.if.else66.i_crit_edge, %if.else.i486.if.else66.i_crit_edge
  %61 = ptrtoint ptr %minsync.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %minsync.i, align 1
  %conv68.i = zext i8 %62 to i32
  %63 = call i32 @llvm.umax.i32(i32 %cmd.sroa.8.4, i32 %conv68.i)
  %tgoal76.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5
  %qas77.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5, i32 2
  %64 = ptrtoint ptr %qas77.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load78.i = load i8, ptr %qas77.i, align 2
  %bf.clear89.i = and i8 %bf.load78.i, -113
  store i8 %bf.clear89.i, ptr %qas77.i, align 2
  %conv92.i = trunc i32 %63 to i8
  %65 = ptrtoint ptr %tgoal76.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv92.i, ptr %tgoal76.i, align 4
  %66 = ptrtoint ptr %maxoffs.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %maxoffs.i, align 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else66.i, %if.then31.i, %if.then16.i
  %cmd.sroa.8.7 = phi i32 [ %cmd.sroa.8.4, %if.then16.i ], [ %63, %if.else66.i ], [ %56, %if.then31.i ]
  %.sink.i = phi i8 [ 0, %if.then16.i ], [ %67, %if.else66.i ], [ %60, %if.then31.i ]
  %offset65.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5, i32 1
  %68 = ptrtoint ptr %offset65.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink.i, ptr %offset65.i, align 1
  %check_nego.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5, i32 2
  %69 = ptrtoint ptr %check_nego.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load100.i = load i8, ptr %check_nego.i, align 2
  %bf.set102.i = or i8 %bf.load100.i, 8
  store i8 %bf.set102.i, ptr %check_nego.i, align 2
  br label %for.inc152.i

sw.bb103.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd.sroa.8.4)
  %tobool105.not.not.i = icmp eq i32 %cmd.sroa.8.4, 0
  %width107.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 5, i32 2
  %70 = ptrtoint ptr %width107.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load108.i = load i8, ptr %width107.i, align 2
  %bf.clear109.i = and i8 %bf.load108.i, 119
  %bf.set110.i = select i1 %tobool105.not.not.i, i8 8, i8 -120
  %bf.set115.i = or i8 %bf.clear109.i, %bf.set110.i
  store i8 %bf.set115.i, ptr %width107.i, align 2
  br label %for.inc152.i

cond.false.i.i:                                   ; preds = %sym_tune_dev_queuing.exit.i.cond.false.i.i_crit_edge, %cond.false.i.i.preheader
  %l.0226.i = phi i32 [ %inc.i, %sym_tune_dev_queuing.exit.i.cond.false.i.i_crit_edge ], [ 1, %cond.false.i.i.preheader ]
  %71 = ptrtoint ptr %lunmp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lunmp.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %72, null
  br i1 %tobool1.not.i.i, label %cond.false.i.i.sym_tune_dev_queuing.exit.i_crit_edge, label %cond.end5.i.i

cond.false.i.i.sym_tune_dev_queuing.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_tune_dev_queuing.exit.i

cond.end5.i.i:                                    ; preds = %cond.false.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %72, i32 %l.0226.i
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %cond6.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %cond6.i.i, null
  br i1 %tobool7.not.i.i, label %cond.end5.i.i.sym_tune_dev_queuing.exit.i_crit_edge, label %if.end.i.i

cond.end5.i.i.sym_tune_dev_queuing.exit.i_crit_edge: ; preds = %cond.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_tune_dev_queuing.exit.i

if.end.i.i:                                       ; preds = %cond.end5.i.i
  %s.i.i = getelementptr inbounds %struct.sym_lcb, ptr %cond6.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %s.i.i, align 4
  %scdev_depth.i.i = getelementptr inbounds %struct.sym_lcb, ptr %cond6.i.i, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %scdev_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %scdev_depth.i.i, align 2
  %78 = call i16 @llvm.umin.i16(i16 %77, i16 %.pre) #13
  %79 = ptrtoint ptr %s.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %s.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %75)
  %cmp21.not.i.i = icmp eq i16 %78, %75
  br i1 %cmp21.not.i.i, label %if.end.i.i.sym_tune_dev_queuing.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.sym_tune_dev_queuing.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_tune_dev_queuing.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv19.i.i = zext i16 %78 to i32
  %80 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %starget.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.scsi_target, ptr %81, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool27.not.i.i = icmp eq i16 %78, 0
  %cond28.i.i = select i1 %tobool27.not.i.i, ptr @.str.71, ptr @.str.70
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond28.i.i, i32 noundef %conv19.i.i) #16
  br label %sym_tune_dev_queuing.exit.i

sym_tune_dev_queuing.exit.i:                      ; preds = %do.end.i.i, %if.end.i.i.sym_tune_dev_queuing.exit.i_crit_edge, %cond.end5.i.i.sym_tune_dev_queuing.exit.i_crit_edge, %cond.false.i.i.sym_tune_dev_queuing.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %l.0226.i, 1
  %exitcond234.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond234.not.i, label %sym_tune_dev_queuing.exit.i.for.inc152.i_crit_edge, label %sym_tune_dev_queuing.exit.i.cond.false.i.i_crit_edge, !llvm.loop !351

sym_tune_dev_queuing.exit.i.cond.false.i.i_crit_edge: ; preds = %sym_tune_dev_queuing.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

sym_tune_dev_queuing.exit.i.for.inc152.i_crit_edge: ; preds = %sym_tune_dev_queuing.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152.i

sw.bb123.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %to_reset.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 8
  %82 = ptrtoint ptr %to_reset.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %to_reset.i, align 4
  %83 = ptrtoint ptr %istat_sem145.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 16, ptr %istat_sem145.i, align 4
  %84 = ptrtoint ptr %ioaddr147.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioaddr147.i, align 4
  %add.ptr.i = getelementptr i8, ptr %85, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 48) #13, !srcloc !348
  br label %for.inc152.i

cond.false.i:                                     ; preds = %if.end141.i.cond.false.i_crit_edge, %cond.false.i.preheader
  %l.1223.i = phi i32 [ %inc143.i, %if.end141.i.cond.false.i_crit_edge ], [ 1, %cond.false.i.preheader ]
  %86 = ptrtoint ptr %lunmp.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lunmp.i, align 4
  %tobool130.not.i = icmp eq ptr %87, null
  br i1 %tobool130.not.i, label %cond.false.i.if.end141.i_crit_edge, label %cond.end137.i

cond.false.i.if.end141.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141.i

cond.end137.i:                                    ; preds = %cond.false.i
  %arrayidx134.i = getelementptr ptr, ptr %87, i32 %l.1223.i
  %88 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %cond138.i = load ptr, ptr %arrayidx134.i, align 4
  %tobool139.not.i = icmp eq ptr %cond138.i, null
  br i1 %tobool139.not.i, label %cond.end137.i.if.end141.i_crit_edge, label %if.then140.i

cond.end137.i.if.end141.i_crit_edge:              ; preds = %cond.end137.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141.i

if.then140.i:                                     ; preds = %cond.end137.i
  call void @__sanitizer_cov_trace_pc() #15
  %to_clear.i = getelementptr inbounds %struct.sym_lcb, ptr %cond138.i, i32 0, i32 11
  %89 = ptrtoint ptr %to_clear.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %to_clear.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then140.i, %cond.end137.i.if.end141.i_crit_edge, %cond.false.i.if.end141.i_crit_edge
  %inc143.i = add nuw nsw i32 %l.1223.i, 1
  %exitcond.not.i = icmp eq i32 %inc143.i, 64
  br i1 %exitcond.not.i, label %for.end144.i, label %if.end141.i.cond.false.i_crit_edge, !llvm.loop !353

if.end141.i.cond.false.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

for.end144.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %istat_sem145.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 16, ptr %istat_sem145.i, align 4
  %91 = ptrtoint ptr %ioaddr147.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioaddr147.i, align 4
  %add.ptr148.i = getelementptr i8, ptr %92, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr148.i, i8 48) #13, !srcloc !348
  br label %for.inc152.i

sw.bb149.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv151.i = trunc i32 %cmd.sroa.8.4 to i8
  %usrflags.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %t.0229.i, i32 9
  %93 = ptrtoint ptr %usrflags.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv151.i, ptr %usrflags.i, align 1
  br label %for.inc152.i

for.inc152.i:                                     ; preds = %sw.bb149.i, %for.end144.i, %sw.bb123.i, %sym_tune_dev_queuing.exit.i.for.inc152.i_crit_edge, %sw.bb103.i, %if.end98.i, %if.end8.i.for.inc152.i_crit_edge, %if.end.i.for.inc152.i_crit_edge, %for.body.i.for.inc152.i_crit_edge
  %cmd.sroa.8.8 = phi i32 [ %cmd.sroa.8.4, %for.body.i.for.inc152.i_crit_edge ], [ %cmd.sroa.8.4, %if.end.i.for.inc152.i_crit_edge ], [ %cmd.sroa.8.4, %if.end8.i.for.inc152.i_crit_edge ], [ %cmd.sroa.8.4, %sw.bb149.i ], [ %cmd.sroa.8.4, %for.end144.i ], [ %cmd.sroa.8.4, %sw.bb123.i ], [ %cmd.sroa.8.4, %sw.bb103.i ], [ %cmd.sroa.8.7, %if.end98.i ], [ %cmd.sroa.8.4, %sym_tune_dev_queuing.exit.i.for.inc152.i_crit_edge ]
  %inc153.i = add nuw nsw i32 %t.0229.i, 1
  %exitcond236.not.i = icmp eq i32 %inc153.i, 16
  br i1 %exitcond236.not.i, label %for.inc152.i.sym_exec_user_command.exit_crit_edge, label %for.inc152.i.for.body.i_crit_edge

for.inc152.i.for.body.i_crit_edge:                ; preds = %for.inc152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc152.i.sym_exec_user_command.exit_crit_edge: ; preds = %for.inc152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym_exec_user_command.exit

sym_exec_user_command.exit:                       ; preds = %for.inc152.i.sym_exec_user_command.exit_crit_edge, %sw.bb2.i, %sw.bb1.i, %if.else212.sym_exec_user_command.exit_crit_edge
  %94 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %call217) #13
  br label %cleanup

cleanup:                                          ; preds = %sym_exec_user_command.exit, %sw.epilog209.cleanup_crit_edge, %land.lhs.true.i480.cleanup_crit_edge, %if.end197.cleanup_crit_edge, %sym_skip_spaces.exit475.cleanup_crit_edge, %for.inc.i472.cleanup_crit_edge, %if.else168.cleanup_crit_edge, %sym_skip_spaces.exit427.thread.cleanup_crit_edge, %sym_skip_spaces.exit427.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %sym_skip_spaces.exit406.cleanup_crit_edge, %if.else76.cleanup_crit_edge, %sym_skip_spaces.exit.thread.cleanup_crit_edge, %sym_skip_spaces.exit.cleanup_crit_edge, %if.else43.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %sym_exec_user_command.exit ], [ -22, %sym_skip_spaces.exit.cleanup_crit_edge ], [ -22, %if.else76.cleanup_crit_edge ], [ -22, %sym_skip_spaces.exit406.cleanup_crit_edge ], [ -22, %if.end91.cleanup_crit_edge ], [ -22, %sw.epilog209.cleanup_crit_edge ], [ -22, %if.else43.cleanup_crit_edge ], [ -22, %sym_skip_spaces.exit.thread.cleanup_crit_edge ], [ -22, %sym_skip_spaces.exit427.thread.cleanup_crit_edge ], [ -22, %sym_skip_spaces.exit427.cleanup_crit_edge ], [ -22, %if.else168.cleanup_crit_edge ], [ -22, %for.inc.i472.cleanup_crit_edge ], [ -22, %sym_skip_spaces.exit475.cleanup_crit_edge ], [ -22, %if.end197.cleanup_crit_edge ], [ -22, %land.lhs.true.i480.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sym_get_ccb(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_queue_scsiio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_eh_handler(i32 noundef %op, ptr noundef %opname, ptr noundef %cmd) unnamed_addr #1 align 64 {
entry:
  %eh_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1, align 4
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %eh_done) #13
  %8 = call ptr @memset(ptr %eh_done, i32 255, i32 56)
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.16, ptr noundef %cmd, ptr noundef nonnull @.str.53, ptr noundef %opname) #13
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %9 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 1
  br i1 %cmp.i.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %eh_done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %eh_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %eh_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @init_completion.__key) #13
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %13) #13
  %14 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i118.not = icmp eq i32 %15, 1
  br i1 %cmp.i118.not, label %if.end23.critedge, label %do.body

do.body:                                          ; preds = %if.then
  %io_reset = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %io_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_reset, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %do.end15, label %do.body10, !prof !354

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sym53c8xx_2/sym_glue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 597, 0\0A.popsection", ""() #13, !srcloc !355
  unreachable

do.end15:                                         ; preds = %do.body
  %18 = ptrtoint ptr %io_reset to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %eh_done, ptr %io_reset, align 4
  %19 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %20) #13
  %21 = ptrtoint ptr %io_reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_reset, align 4
  %call22 = call i32 @wait_for_completion_timeout(ptr noundef %22, i32 noundef 3500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %phi.cmp = icmp eq i32 %call22, 0
  %23 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %24) #13
  %25 = ptrtoint ptr %io_reset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %io_reset, align 4
  %26 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %27) #13
  br i1 %phi.cmp, label %do.end15.cleanup73_crit_edge, label %do.end15.if.end30_crit_edge

do.end15.if.end30_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

do.end15.cleanup73_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.end23.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %29) #13
  %30 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_lock_irq(ptr noundef %31) #13
  %io_reset25.c = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %io_reset25.c to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %io_reset25.c, align 4
  %33 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %34) #13
  br label %if.end30

if.end30:                                         ; preds = %if.end23.critedge, %do.end15.if.end30_crit_edge, %entry.if.end30_crit_edge
  %host_lock31 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %host_lock31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_lock31, align 4
  call void @_raw_spin_lock_irq(ptr noundef %36) #13
  %busy_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %7, i32 0, i32 90
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end30
  %qp.0.in = phi ptr [ %busy_ccbq, %if.end30 ], [ %qp.0, %for.body.for.cond_crit_edge ]
  %37 = ptrtoint ptr %qp.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %qp.0 = load ptr, ptr %qp.0.in, align 4
  %cmp.not = icmp eq ptr %qp.0, %busy_ccbq
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cmd33 = getelementptr i8, ptr %qp.0, i32 -116
  %38 = ptrtoint ptr %cmd33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd33, align 4
  %cmp34 = icmp eq ptr %39, %cmd
  br i1 %cmp34, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %40 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %op, label %for.end.do.end66_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb42
    i32 2, label %sw.bb45
    i32 3, label %sw.bb47
  ]

for.end.do.end66_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end66

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call41 = call i32 @sym_abort_scsiio(ptr noundef %7, ptr noundef %cmd, i32 noundef 1) #13
  br label %sw.epilog

sw.bb42:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 8
  %call44 = call i32 @sym_reset_scsi_target(ptr noundef %7, i32 noundef %44) #13
  br label %sw.epilog

sw.bb45:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = call i32 @sym_reset_scsi_bus(ptr noundef %7, i32 noundef 1) #13
  br label %sw.epilog.thread

sw.bb47:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call48 = call i32 @sym_reset_scsi_bus(ptr noundef %7, i32 noundef 0) #13
  call void @sym_start_up(ptr noundef %3, i32 noundef 1) #13
  br label %sw.epilog.thread

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb
  %sts.0 = phi i32 [ %call44, %sw.bb42 ], [ %call41, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0)
  %tobool49.not = icmp ne i32 %sts.0, 0
  %brmerge = select i1 %tobool49.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %sw.epilog.do.end66_crit_edge, label %sw.epilog.if.then53_crit_edge

sw.epilog.if.then53_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53

sw.epilog.do.end66_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end66

sw.epilog.thread:                                 ; preds = %sw.bb47, %sw.bb45
  br i1 %cmp.not, label %sw.epilog.thread.do.end66_crit_edge, label %sw.epilog.thread.if.then53_crit_edge

sw.epilog.thread.if.then53_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53

sw.epilog.thread.do.end66_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end66

if.then53:                                        ; preds = %sw.epilog.thread.if.then53_crit_edge, %sw.epilog.if.then53_crit_edge
  %45 = ptrtoint ptr %eh_done to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %eh_done, align 4
  %wait.i120 = getelementptr inbounds %struct.completion, ptr %eh_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i120, ptr noundef nonnull @.str.59, ptr noundef nonnull @init_completion.__key) #13
  %46 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %eh_done, ptr %SCp, align 4
  %47 = ptrtoint ptr %host_lock31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_lock31, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %48) #13
  %call56 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %eh_done, i32 noundef 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %.thread153, label %.thread

.thread:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %sdev_gendev141 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 55
  br label %58

.thread153:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %SCp, align 4
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 4
  %sdev_gendev132 = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 55
  br label %.thread150

do.end66:                                         ; preds = %sw.epilog.thread.do.end66_crit_edge, %sw.epilog.do.end66_crit_edge, %for.end.do.end66_crit_edge
  %sts.0123130 = phi i32 [ 0, %sw.epilog.thread.do.end66_crit_edge ], [ %sts.0, %sw.epilog.do.end66_crit_edge ], [ -1, %for.end.do.end66_crit_edge ]
  %54 = ptrtoint ptr %host_lock31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host_lock31, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %55) #13
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.0123130)
  %cmp68 = icmp eq i32 %sts.0123130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %sts.0123130)
  %cmp69 = icmp eq i32 %sts.0123130, -2
  %.str.57..str.58 = select i1 %cmp69, ptr @.str.57, ptr @.str.58
  br i1 %cmp68, label %do.end66._crit_edge, label %do.end66..thread150_crit_edge

do.end66..thread150_crit_edge:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread150

do.end66._crit_edge:                              ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %58

.thread150:                                       ; preds = %do.end66..thread150_crit_edge, %.thread153
  %sdev_gendev135148.ph = phi ptr [ %sdev_gendev132, %.thread153 ], [ %sdev_gendev, %do.end66..thread150_crit_edge ]
  %.ph = phi ptr [ @.str.57, %.thread153 ], [ %.str.57..str.58, %do.end66..thread150_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sdev_gendev135148.ph, ptr noundef nonnull @.str.54, ptr noundef %opname, ptr noundef nonnull %.ph) #16
  br label %cleanup73

58:                                               ; preds = %do.end66._crit_edge, %.thread
  %sdev_gendev135149 = phi ptr [ %sdev_gendev141, %.thread ], [ %sdev_gendev, %do.end66._crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sdev_gendev135149, ptr noundef nonnull @.str.54, ptr noundef %opname, ptr noundef nonnull @.str.56) #16
  br label %cleanup73

cleanup73:                                        ; preds = %58, %.thread150, %do.end15.cleanup73_crit_edge
  %retval.1 = phi i32 [ 8195, %do.end15.cleanup73_crit_edge ], [ 8194, %58 ], [ 8195, %.thread150 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %eh_done) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_abort_scsiio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sym_alloc_lcb(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_dv_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_free_lcb(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @is_keyword(ptr nocapture noundef readonly %ptr, i32 noundef %len, ptr nocapture noundef readonly %verb) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %verb) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp.not = icmp sgt i32 %call, %len
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr %verb, ptr %ptr, i32 %call) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ %call, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym2_io_error_detected(ptr noundef %pdev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @scsi_remove_host(ptr noundef %1) #13
  tail call fastcc void @sym_detach(ptr noundef %1, ptr noundef %pdev) #13
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  %2 = load i32, ptr @attach_count, align 4
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr @attach_count, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %4) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym2_io_slot_dump(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @sym_dump_registers(ptr noundef %1) #13
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym2_io_slot_reset(ptr noundef %pdev) #1 align 64 {
entry:
  %status_reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 1
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %inst_name) #16
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %inst_name) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #13
  %features = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 60
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then13:                                        ; preds = %if.end
  %call14 = tail call i32 @pci_set_mwi(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_reg.i) #13
  %8 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %status_reg.i, align 2, !annotation !342
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i, align 2
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %11 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision.i, align 4
  %call.i = tail call ptr @sym_lookup_chip_table(i16 noundef zeroext %10, i8 noundef zeroext %12) #13
  %call1.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 6, ptr noundef nonnull %status_reg.i) #13
  %features.i = getelementptr inbounds %struct.sym_chip, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features.i, align 4
  %and.i = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end18.sym2_reset_workarounds.exit_crit_edge

if.end18.sym2_reset_workarounds.exit_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym2_reset_workarounds.exit

land.lhs.true.i:                                  ; preds = %if.end18
  %15 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %status_reg.i, align 2
  %17 = and i16 %16, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool3.not.i = icmp eq i16 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sym2_reset_workarounds.exit_crit_edge, label %if.then.i

land.lhs.true.i.sym2_reset_workarounds.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sym2_reset_workarounds.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 32, ptr %status_reg.i, align 2
  %call4.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 6, i16 noundef zeroext 32) #13
  %call5.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 6, ptr noundef nonnull %status_reg.i) #13
  br label %sym2_reset_workarounds.exit

sym2_reset_workarounds.exit:                      ; preds = %if.then.i, %land.lhs.true.i.sym2_reset_workarounds.exit_crit_edge, %if.end18.sym2_reset_workarounds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_reg.i) #13
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %19 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devfn, align 4
  %and19 = and i32 %20, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp = icmp eq i32 %and19, 0
  br i1 %cmp, label %if.then20, label %sym2_reset_workarounds.exit.cleanup_crit_edge

sym2_reset_workarounds.exit.cleanup_crit_edge:    ; preds = %sym2_reset_workarounds.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %sym2_reset_workarounds.exit
  %call21 = call i32 @sym_reset_scsi_bus(ptr noundef %3, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end32, label %do.end26

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %inst_name) #16
  br label %cleanup

if.end32:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  call void @sym_start_up(ptr noundef %1, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end26, %sym2_reset_workarounds.exit.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ 4, %do.end6 ], [ 4, %do.end26 ], [ 4, %if.then13.cleanup_crit_edge ], [ 5, %if.end32 ], [ 5, %sym2_reset_workarounds.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym2_io_resume(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #13
  %io_reset = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %io_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_reset, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef nonnull %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_dump_registers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_attach_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym2_set_period(ptr nocapture noundef readonly %starget, i32 noundef %period) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %minsync = getelementptr inbounds %struct.sym_hcb, ptr %5, i32 0, i32 64
  %8 = ptrtoint ptr %minsync to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minsync, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %period)
  %cmp.not = icmp slt i32 %conv, %period
  br i1 %cmp.not, label %dev_to_shost.exit.if.end_crit_edge, label %land.lhs.true

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %dev_to_shost.exit
  %width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dt = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %11 = ptrtoint ptr %dt to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3 = load i8, ptr %dt, align 2
  %bf.set = or i8 %bf.load3, 32
  store i8 %bf.set, ptr %dt, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %dev_to_shost.exit.if.end_crit_edge
  %conv4 = trunc i32 %period to i8
  %tgoal5 = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5
  %12 = ptrtoint ptr %tgoal5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %tgoal5, align 4
  %check_nego = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %13 = ptrtoint ptr %check_nego to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load8 = load i8, ptr %check_nego, align 2
  %bf.set10 = or i8 %bf.load8, 8
  store i8 %bf.set10, ptr %check_nego, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym2_set_offset(ptr nocapture noundef readonly %starget, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %conv = trunc i32 %offset to i8
  %offset2 = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 1
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %offset2, align 1
  %check_nego = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %9 = ptrtoint ptr %check_nego to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %check_nego, align 2
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %check_nego, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym2_set_width(ptr nocapture noundef readonly %starget, i32 noundef %width) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %cmp = icmp eq i32 %width, 0
  br i1 %cmp, label %if.then, label %dev_to_shost.exit.if.end_crit_edge

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  %qas = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %8 = ptrtoint ptr %qas to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %qas, align 2
  %bf.clear8 = and i8 %bf.load, -113
  store i8 %bf.clear8, ptr %qas, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  %width11 = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %9 = trunc i32 %width to i8
  %10 = ptrtoint ptr %width11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load12 = load i8, ptr %width11, align 2
  %bf.shl = shl i8 %9, 7
  %bf.clear13 = and i8 %bf.load12, 119
  %bf.set14 = or i8 %bf.clear13, %bf.shl
  %bf.set18 = or i8 %bf.set14, 8
  store i8 %bf.set18, ptr %width11, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym2_set_dt(ptr nocapture noundef readonly %starget, i32 noundef %dt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dt)
  %tobool.not = icmp eq i32 %dt, 0
  %qas = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %8 = ptrtoint ptr %qas to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load4 = load i8, ptr %qas, align 2
  %bf.clear14 = and i8 %bf.load4, -121
  %bf.set = or i8 %bf.load4, 32
  %bf.clear14.sink = select i1 %tobool.not, i8 %bf.clear14, i8 %bf.set
  %check_nego = getelementptr %struct.sym_hcb, ptr %5, i32 0, i32 38, i32 %7, i32 5, i32 2
  %bf.set19 = or i8 %bf.clear14.sink, 8
  %9 = ptrtoint ptr %check_nego to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set19, ptr %check_nego, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sym2_get_signalling(ptr nocapture noundef readonly %shost) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %scsi_mode = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %scsi_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scsi_mode, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %3, label %sw.default [
    i8 -128, label %entry.sw.epilog_crit_edge
    i8 -64, label %sw.bb1
    i8 64, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %type.0 = phi i32 [ 1, %sw.default ], [ 4, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %5 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost_data, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type.0, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !98, !99, !101, !103, !104, !105, !106, !107, !109, !111, !113, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !198, !200, !202, !204, !205, !206, !207, !208, !209, !210, !212, !213, !215, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !234, !235, !237, !238, !239, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !303, !304, !305, !307, !308, !309, !311, !313, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !328, !329, !330, !331}
!llvm.module.flags = !{!333, !334, !335, !336, !337, !338, !339, !340}
!llvm.ident = !{!341}

!0 = !{ptr @sym_driver_setup, !1, !"sym_driver_setup", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 43, i32 25}
!2 = !{ptr @sym_debug_flags, !3, !"sym_debug_flags", i1 false, i1 false}
!3 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 44, i32 14}
!4 = !{ptr @__param_cmd_per_lun, !5, !"__param_cmd_per_lun", i1 false, i1 false}
!5 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 48, i32 1}
!6 = !{ptr @__UNIQUE_ID_cmd_per_luntype287, !5, !"__UNIQUE_ID_cmd_per_luntype287", i1 false, i1 false}
!7 = !{ptr @__param_burst, !8, !"__param_burst", i1 false, i1 false}
!8 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 49, i32 1}
!9 = !{ptr @__UNIQUE_ID_bursttype288, !8, !"__UNIQUE_ID_bursttype288", i1 false, i1 false}
!10 = !{ptr @__param_led, !11, !"__param_led", i1 false, i1 false}
!11 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_ledtype289, !11, !"__UNIQUE_ID_ledtype289", i1 false, i1 false}
!13 = !{ptr @__param_diff, !14, !"__param_diff", i1 false, i1 false}
!14 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 51, i32 1}
!15 = !{ptr @__UNIQUE_ID_difftype290, !14, !"__UNIQUE_ID_difftype290", i1 false, i1 false}
!16 = !{ptr @__param_irqm, !17, !"__param_irqm", i1 false, i1 false}
!17 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 52, i32 1}
!18 = !{ptr @__UNIQUE_ID_irqmtype291, !17, !"__UNIQUE_ID_irqmtype291", i1 false, i1 false}
!19 = !{ptr @__param_buschk, !20, !"__param_buschk", i1 false, i1 false}
!20 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 53, i32 1}
!21 = !{ptr @__UNIQUE_ID_buschktype292, !20, !"__UNIQUE_ID_buschktype292", i1 false, i1 false}
!22 = !{ptr @__param_hostid, !23, !"__param_hostid", i1 false, i1 false}
!23 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 54, i32 1}
!24 = !{ptr @__UNIQUE_ID_hostidtype293, !23, !"__UNIQUE_ID_hostidtype293", i1 false, i1 false}
!25 = !{ptr @__param_verb, !26, !"__param_verb", i1 false, i1 false}
!26 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 55, i32 1}
!27 = !{ptr @__UNIQUE_ID_verbtype294, !26, !"__UNIQUE_ID_verbtype294", i1 false, i1 false}
!28 = !{ptr @__param_debug, !29, !"__param_debug", i1 false, i1 false}
!29 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 56, i32 1}
!30 = !{ptr @__UNIQUE_ID_debugtype295, !29, !"__UNIQUE_ID_debugtype295", i1 false, i1 false}
!31 = !{ptr @__param_settle, !32, !"__param_settle", i1 false, i1 false}
!32 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 57, i32 1}
!33 = !{ptr @__UNIQUE_ID_settletype296, !32, !"__UNIQUE_ID_settletype296", i1 false, i1 false}
!34 = !{ptr @__param_nvram, !35, !"__param_nvram", i1 false, i1 false}
!35 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 58, i32 1}
!36 = !{ptr @__UNIQUE_ID_nvramtype297, !35, !"__UNIQUE_ID_nvramtype297", i1 false, i1 false}
!37 = !{ptr @__param_excl, !38, !"__param_excl", i1 false, i1 false}
!38 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 59, i32 1}
!39 = !{ptr @__UNIQUE_ID_excltype298, !38, !"__UNIQUE_ID_excltype298", i1 false, i1 false}
!40 = !{ptr @__param_safe, !41, !"__param_safe", i1 false, i1 false}
!41 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 60, i32 1}
!42 = !{ptr @__UNIQUE_ID_safetype299, !41, !"__UNIQUE_ID_safetype299", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_cmd_per_lun300, !44, !"__UNIQUE_ID_cmd_per_lun300", i1 false, i1 false}
!44 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 62, i32 1}
!45 = !{ptr @__UNIQUE_ID_burst301, !46, !"__UNIQUE_ID_burst301", i1 false, i1 false}
!46 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 63, i32 1}
!47 = !{ptr @__UNIQUE_ID_led302, !48, !"__UNIQUE_ID_led302", i1 false, i1 false}
!48 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 64, i32 1}
!49 = !{ptr @__UNIQUE_ID_diff303, !50, !"__UNIQUE_ID_diff303", i1 false, i1 false}
!50 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 65, i32 1}
!51 = !{ptr @__UNIQUE_ID_irqm304, !52, !"__UNIQUE_ID_irqm304", i1 false, i1 false}
!52 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 66, i32 1}
!53 = !{ptr @__UNIQUE_ID_buschk305, !54, !"__UNIQUE_ID_buschk305", i1 false, i1 false}
!54 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 67, i32 1}
!55 = !{ptr @__UNIQUE_ID_hostid306, !56, !"__UNIQUE_ID_hostid306", i1 false, i1 false}
!56 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 68, i32 1}
!57 = !{ptr @__UNIQUE_ID_verb307, !58, !"__UNIQUE_ID_verb307", i1 false, i1 false}
!58 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 69, i32 1}
!59 = !{ptr @__UNIQUE_ID_debug308, !60, !"__UNIQUE_ID_debug308", i1 false, i1 false}
!60 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 70, i32 1}
!61 = !{ptr @__UNIQUE_ID_settle309, !62, !"__UNIQUE_ID_settle309", i1 false, i1 false}
!62 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 71, i32 1}
!63 = !{ptr @__UNIQUE_ID_nvram310, !64, !"__UNIQUE_ID_nvram310", i1 false, i1 false}
!64 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 72, i32 1}
!65 = !{ptr @__UNIQUE_ID_excl311, !66, !"__UNIQUE_ID_excl311", i1 false, i1 false}
!66 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 73, i32 1}
!67 = !{ptr @__UNIQUE_ID_safe312, !68, !"__UNIQUE_ID_safe312", i1 false, i1 false}
!68 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 74, i32 1}
!69 = !{ptr @__UNIQUE_ID_file313, !70, !"__UNIQUE_ID_file313", i1 false, i1 false}
!70 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 76, i32 1}
!71 = !{ptr @__UNIQUE_ID_license314, !70, !"__UNIQUE_ID_license314", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_version315, !73, !"__UNIQUE_ID_version315", i1 false, i1 false}
!73 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 77, i32 1}
!74 = !{ptr @.str, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.1, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.2, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__modver_attr, !73, !"__modver_attr", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_author316, !79, !"__UNIQUE_ID_author316", i1 false, i1 false}
!79 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 78, i32 1}
!80 = !{ptr @__UNIQUE_ID_description317, !81, !"__UNIQUE_ID_description317", i1 false, i1 false}
!81 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 79, i32 1}
!82 = !{ptr @.str.3, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 144, i32 2}
!84 = !{ptr @.str.4, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.5, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sym_xpt_async_bus_reset._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @sym_xpt_async_bus_reset._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.7, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 148, i32 3}
!90 = !{ptr @sym_xpt_async_bus_reset._entry.6, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sym_xpt_async_bus_reset._entry_ptr.8, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.9, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 226, i32 4}
!94 = !{ptr @.str.10, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.11, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.12, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sym_set_cam_result_error._entry, !93, !"_entry", i1 false, i1 false}
!98 = !{ptr @sym_set_cam_result_error._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.13, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 363, i32 31}
!101 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 480, i32 3}
!103 = !{ptr @.str.15, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.16, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sym_log_bus_error._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @sym_log_bus_error._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @__initcall__kmod_sym53c8xx__321_2056_sym2_init6, !108, !"__initcall__kmod_sym53c8xx__321_2056_sym2_init6", i1 false, i1 false}
!108 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 2056, i32 1}
!109 = !{ptr @__exitcall_sym2_exit, !110, !"__exitcall_sym2_exit", i1 false, i1 false}
!110 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 2057, i32 1}
!111 = !{ptr @excl_string, !112, !"excl_string", i1 false, i1 false}
!112 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 46, i32 14}
!113 = !{ptr @safe_string, !114, !"safe_string", i1 false, i1 false}
!114 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 47, i32 14}
!115 = !{ptr @__param_str_cmd_per_lun, !5, !"__param_str_cmd_per_lun", i1 false, i1 false}
!116 = !{ptr @__param_str_burst, !8, !"__param_str_burst", i1 false, i1 false}
!117 = !{ptr @__param_str_led, !11, !"__param_str_led", i1 false, i1 false}
!118 = !{ptr @__param_str_diff, !14, !"__param_str_diff", i1 false, i1 false}
!119 = !{ptr @__param_str_irqm, !17, !"__param_str_irqm", i1 false, i1 false}
!120 = !{ptr @__param_str_buschk, !20, !"__param_str_buschk", i1 false, i1 false}
!121 = !{ptr @__param_str_hostid, !23, !"__param_str_hostid", i1 false, i1 false}
!122 = !{ptr @__param_str_verb, !26, !"__param_str_verb", i1 false, i1 false}
!123 = !{ptr @__param_str_debug, !29, !"__param_str_debug", i1 false, i1 false}
!124 = !{ptr @__param_str_settle, !32, !"__param_str_settle", i1 false, i1 false}
!125 = !{ptr @__param_str_nvram, !35, !"__param_str_nvram", i1 false, i1 false}
!126 = !{ptr @__param_str_excl, !38, !"__param_str_excl", i1 false, i1 false}
!127 = !{ptr @__param_str_safe, !41, !"__param_str_safe", i1 false, i1 false}
!128 = !{ptr @sym2_driver, !129, !"sym2_driver", i1 false, i1 false}
!129 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 2027, i32 26}
!130 = !{ptr @sym2_id_table, !131, !"sym2_id_table", i1 false, i1 false}
!131 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1980, i32 29}
!132 = !{ptr @.str.17, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1420, i32 3}
!134 = !{ptr @.str.18, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @sym_check_supported._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @sym_check_supported._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.19, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1533, i32 3}
!139 = !{ptr @.str.20, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.21, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @sym_iomap_device._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @sym_iomap_device._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.23, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1540, i32 4}
!145 = !{ptr @sym_iomap_device._entry.22, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @sym_iomap_device._entry_ptr.24, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.25, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1448, i32 2}
!149 = !{ptr @.str.26, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @sym_check_raid._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @sym_check_raid._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.27, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1239, i32 2}
!154 = !{ptr @.str.28, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @sym_attach._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @sym_attach._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.29, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1261, i32 49}
!159 = !{ptr @.str.30, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1291, i32 27}
!161 = !{ptr @.str.32, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1297, i32 3}
!163 = !{ptr @sym_attach._entry.31, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sym_attach._entry_ptr.33, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.35, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1311, i32 3}
!167 = !{ptr @sym_attach._entry.34, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @sym_attach._entry_ptr.36, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @sym_attach.__key, !170, !"__key", i1 false, i1 false}
!170 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1333, i32 2}
!171 = !{ptr @.str.37, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.39, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1362, i32 2}
!174 = !{ptr @sym_attach._entry.38, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @sym_attach._entry_ptr.40, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.42, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1366, i32 2}
!178 = !{ptr @sym_attach._entry.41, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @sym_attach._entry_ptr.43, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.44, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 533, i32 32}
!182 = !{ptr @.str.45, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @sym53c8xx_intr._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @sym53c8xx_intr._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.47, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 539, i32 32}
!187 = !{ptr @sym53c8xx_intr._entry.46, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @sym53c8xx_intr._entry_ptr.48, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.49, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 441, i32 5}
!191 = !{ptr @.str.50, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @sym_timer._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @sym_timer._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @sym2_template, !195, !"sym2_template", i1 false, i1 false}
!195 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1629, i32 34}
!196 = !{ptr @.str.51, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 854, i32 9}
!198 = !{ptr @.str.52, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 673, i32 38}
!200 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 582, i32 33}
!202 = !{ptr @.str.54, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 662, i32 2}
!204 = !{ptr @.str.55, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @sym_eh_handler._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @sym_eh_handler._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.56, !203, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.57, !203, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.58, !203, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @init_completion.__key, !211, !"__key", i1 false, i1 false}
!211 = !{!"../include/linux/completion.h", i32 87, i32 2}
!212 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.60, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 678, i32 45}
!215 = !{ptr @.str.61, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 683, i32 42}
!217 = !{ptr @.str.62, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 688, i32 43}
!219 = !{ptr @.str.63, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 740, i32 3}
!221 = !{ptr @.str.64, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @sym53c8xx_slave_alloc._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @sym53c8xx_slave_alloc._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.66, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 751, i32 3}
!226 = !{ptr @sym53c8xx_slave_alloc._entry.65, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @sym53c8xx_slave_alloc._entry_ptr.67, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.68, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 710, i32 3}
!230 = !{ptr @.str.69, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @sym_tune_dev_queuing._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @sym_tune_dev_queuing._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.70, !229, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.71, !229, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.72, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 830, i32 3}
!237 = !{ptr @.str.73, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @sym53c8xx_slave_destroy._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @sym53c8xx_slave_destroy._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.74, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1161, i32 16}
!242 = !{ptr @.str.75, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1164, i32 16}
!244 = !{ptr @.str.76, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1166, i32 16}
!246 = !{ptr @.str.77, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1168, i32 18}
!248 = !{ptr @.str.78, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1168, i32 27}
!250 = !{ptr @.str.79, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1169, i32 21}
!252 = !{ptr @.str.80, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1169, i32 38}
!254 = !{ptr @.str.81, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1171, i32 16}
!256 = !{ptr @.str.82, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1026, i32 38}
!258 = !{ptr @.str.83, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1028, i32 43}
!260 = !{ptr @.str.84, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1030, i32 43}
!262 = !{ptr @.str.85, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1032, i32 43}
!264 = !{ptr @.str.86, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1035, i32 43}
!266 = !{ptr @.str.87, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1038, i32 43}
!268 = !{ptr @.str.88, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1040, i32 43}
!270 = !{ptr @.str.89, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1042, i32 43}
!272 = !{ptr @.str.90, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1063, i32 39}
!274 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1091, i32 40}
!276 = !{ptr @.str.92, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1093, i32 45}
!278 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1095, i32 45}
!280 = !{ptr @.str.94, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1097, i32 45}
!282 = !{ptr @.str.95, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1099, i32 45}
!284 = !{ptr @.str.96, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1101, i32 45}
!286 = !{ptr @.str.97, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1103, i32 45}
!288 = !{ptr @.str.98, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1105, i32 45}
!290 = !{ptr @.str.99, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1107, i32 45}
!292 = !{ptr @.str.100, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1109, i32 45}
!294 = !{ptr @.str.101, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1111, i32 45}
!296 = !{ptr @.str.102, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1125, i32 40}
!298 = !{ptr @attach_count, !299, !"attach_count", i1 false, i1 false}
!299 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1652, i32 12}
!300 = !{ptr @.str.103, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1605, i32 2}
!302 = !{ptr @.str.104, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @sym_detach._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @sym_detach._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.106, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1614, i32 2}
!307 = !{ptr @sym_detach._entry.105, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @sym_detach._entry_ptr.107, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @sym2_err_handler, !310, !"sym2_err_handler", i1 false, i1 false}
!310 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 2020, i32 40}
!311 = !{ptr @.str.108, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1805, i32 2}
!313 = !{ptr @.str.109, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @sym2_io_slot_reset._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @sym2_io_slot_reset._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.111, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1809, i32 3}
!318 = !{ptr @sym2_io_slot_reset._entry.110, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @sym2_io_slot_reset._entry_ptr.112, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.114, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1829, i32 4}
!322 = !{ptr @sym2_io_slot_reset._entry.113, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @sym2_io_slot_reset._entry_ptr.115, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @sym2_transport_template, !325, !"sym2_transport_template", i1 false, i1 false}
!325 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 112, i32 40}
!326 = !{ptr @.str.116, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 106, i32 4}
!328 = !{ptr @.str.117, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @sym2_setup_params._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @sym2_setup_params._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @sym2_transport_functions, !332, !"sym2_transport_functions", i1 false, i1 false}
!332 = !{!"../drivers/scsi/sym53c8xx_2/sym_glue.c", i32 1962, i32 37}
!333 = !{i32 1, !"wchar_size", i32 2}
!334 = !{i32 1, !"min_enum_size", i32 4}
!335 = !{i32 8, !"branch-target-enforcement", i32 0}
!336 = !{i32 8, !"sign-return-address", i32 0}
!337 = !{i32 8, !"sign-return-address-all", i32 0}
!338 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!339 = !{i32 7, !"uwtable", i32 1}
!340 = !{i32 7, !"frame-pointer", i32 2}
!341 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!342 = !{!"auto-init"}
!343 = !{i64 6050133}
!344 = !{i64 2155271645}
!345 = !{!"branch_weights", i32 1, i32 2000}
!346 = !{i64 2155264732, i64 2155265233, i64 2155264769, i64 2155264825, i64 2155264859, i64 2155264883, i64 2155264924, i64 2155264945, i64 2155264973, i64 2155265007}
!347 = !{i64 2153590863}
!348 = !{i64 6049518}
!349 = !{i64 6049913}
!350 = !{i64 2153589258}
!351 = distinct !{!351, !352}
!352 = !{!"llvm.loop.peeled.count", i32 1}
!353 = distinct !{!353, !352}
!354 = !{!"branch_weights", i32 2000, i32 1}
!355 = !{i64 2155243197, i64 2155243697, i64 2155243234, i64 2155243290, i64 2155243324, i64 2155243348, i64 2155243389, i64 2155243410, i64 2155243438, i64 2155243472}
