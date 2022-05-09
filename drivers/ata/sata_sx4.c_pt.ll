; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_sx4.c_pt.bc'
source_filename = "../drivers/ata/sata_sx4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.83 = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pdc_port_priv = type { [2560 x i8], ptr, i32 }
%struct.pdc_host_priv = type { i32, i32, i32, [32 x %struct.anon.85] }
%struct.anon.85 = type { ptr, i32, i32 }

@__param_str_dimm_test = internal constant [19 x i8] c"sata_sx4.dimm_test\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dimm_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dimm_test = internal constant %struct.kernel_param { ptr @__param_str_dimm_test, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dimm_test } }, section "__param", align 4
@__UNIQUE_ID_dimm_testtype290 = internal constant [32 x i8] c"sata_sx4.parmtype=dimm_test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dimm_test291 = internal constant [70 x i8] c"sata_sx4.parm=dimm_test:Enable DIMM test during startup (1 = enabled)\00", section ".modinfo", align 1
@__initcall__kmod_sata_sx4__314_1446_pdc_sata_pci_driver_init6 = internal global ptr @pdc_sata_pci_driver_init, section ".initcall6.init", align 4
@pdc_sata_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pdc_sata_pci_tbl, ptr @pdc_sata_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pdc_sata_pci_driver_exit = internal global ptr @pdc_sata_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author315 = internal constant [28 x i8] c"sata_sx4.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [51 x i8] c"sata_sx4.description=Promise SATA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [35 x i8] c"sata_sx4.file=drivers/ata/sata_sx4\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [21 x i8] c"sata_sx4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version319 = internal constant [22 x i8] c"sata_sx4.version=0.12\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_sx4\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.12\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@pdc_sata_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4186, i32 26146, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pdc_port_info = internal constant { [1 x %struct.ata_port_info], [36 x i8] } { [1 x %struct.ata_port_info] [%struct.ata_port_info { i32 578, i32 0, i32 31, i32 7, i32 127, ptr @pdc_20621_ops, ptr null }], [36 x i8] zeroinitializer }, align 32
@pdc_sata_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dimm\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@pdc_sata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pdc_20621_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @pdc_check_atapi_dma, ptr @pdc20621_qc_prep, ptr @pdc20621_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_freeze, ptr @pdc_thaw, ptr null, ptr @pdc_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_error_handler, ptr inttoptr (i32 -2 to ptr), ptr @pdc_post_internal_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_tf_load_mmio, ptr null, ptr @pdc_exec_command_mmio, ptr null, ptr null, ptr null, ptr @pdc20621_irq_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/sata_sx4.c\00", [41 x i8] zeroinitializer }, align 32
@pdc20621_dma_prep.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.6, ptr @.str.8, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pdc20621_dma_prep\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ata%u: ata pkt buf ofs %u, prd size %u, mmio copied\0A\00", [43 x i8] zeroinitializer }, align 32
@pdc20621_nodata_prep.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.6, ptr @.str.10, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pdc20621_nodata_prep\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: ata pkt buf ofs %u, mmio copied\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc20621_packet_start.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.6, ptr @.str.12, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pdc20621_packet_start\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ata%u: queued ofs 0x%x (%u), seq %u\0A\00", [59 x i8] zeroinitializer }, align 32
@pdc20621_packet_start.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.6, ptr @.str.13, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: submitted ofs 0x%x (%u), seq %u\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc20621_dump_hdma.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.6, ptr @.str.15, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pdc20621_dump_hdma\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ata%u: HDMA 0x%08X 0x%08X 0x%08X 0x%08X\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pdc20621_dimm_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pdc20621_dimm_init\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Time Period Register (0x40): 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.18, i8 1, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Time Counter Register (0x44): 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.19, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Num counters 0x%x (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.20, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"10 * Internal clk = 0x%x (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.21, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"10 * Internal clk * 33 = 0x%x (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.22, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PLL F Param: 0x%x (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.23, i8 1, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_status: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.6, i32 1283, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Detect Local DIMM Fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry_ptr = internal global ptr @pdc20621_dimm_init._entry, section ".printk_index", align 4
@pdc20621_dimm_init.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.27, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Local DIMM Speed = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.28, i8 1, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local DIMM Size = %dMB\0A\00", [40 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.6, i32 1295, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Programming DIMM Module Global Control Register Fail\0A\00", [42 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry_ptr.31 = internal global ptr @pdc20621_dimm_init._entry.29, section ".printk_index", align 4
@__const.pdc20621_dimm_init.test_parttern1 = private unnamed_addr constant [40 x i8] c"U\AAPromise Not Yet Defined 1.1098031612\00\00", align 1
@pdc20621_dimm_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.6, i32 1314, ptr @.str.34, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DIMM test pattern 1: %x, %x, %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry_ptr.35 = internal global ptr @pdc20621_dimm_init._entry.32, section ".printk_index", align 4
@pdc20621_dimm_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.6, i32 1319, ptr @.str.34, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DIMM test pattern 2: %x, %x, %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry_ptr.38 = internal global ptr @pdc20621_dimm_init._entry.36, section ".printk_index", align 4
@pdc20621_dimm_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.6, i32 1325, ptr @.str.34, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DIMM test pattern 3: %x, %x, %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry_ptr.41 = internal global ptr @pdc20621_dimm_init._entry.39, section ".printk_index", align 4
@pdc20621_dimm_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.16, ptr @.str.6, i32 1334, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed in i2c read: device=%#x, subaddr=%#x\0A\00", [51 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init._entry_ptr.44 = internal global ptr @pdc20621_dimm_init._entry.42, section ".printk_index", align 4
@pdc20621_dimm_init.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.45, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Start ECC initialization\0A\00", [38 x i8] zeroinitializer }, align 32
@pdc20621_dimm_init.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.6, ptr @.str.46, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Finish ECC initialization\0A\00", [37 x i8] zeroinitializer }, align 32
@pdc20621_prog_dimm_global._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.47, ptr @.str.6, i32 1184, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pdc20621_prog_dimm_global\00", [38 x i8] zeroinitializer }, align 32
@pdc20621_prog_dimm_global._entry_ptr = internal global ptr @pdc20621_prog_dimm_global._entry, section ".printk_index", align 4
@pdc20621_prog_dimm_global._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.6, i32 1191, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local DIMM ECC Enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@pdc20621_prog_dimm_global._entry_ptr.50 = internal global ptr @pdc20621_prog_dimm_global._entry.48, section ".printk_index", align 4
@pdc20621_interrupt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pdc20621_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ata%u: seq %u, tmp %x\0A\00", [41 x i8] zeroinitializer }, align 32
@pdc20621_host_intr.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.6, ptr @.str.54, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pdc20621_host_intr\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: read hdma, 0x%x 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@pdc20621_host_intr.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.6, ptr @.str.55, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ata%u: read ata, 0x%x 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@pdc20621_host_intr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.6, ptr @.str.56, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ata%u: write hdma, 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@pdc20621_host_intr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.6, ptr @.str.57, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: write ata, 0x%x 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@pdc20621_host_intr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.6, ptr @.str.58, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ata%u: BUS_NODATA (drv_stat 0x%X)\0A\00", [61 x i8] zeroinitializer }, align 32
@ata_wait_idle.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.60, ptr @.str.61, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.62 = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 10, i64 40, i64 42, i64 168, i64 170, i64 173, i64 190]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.70 = private unnamed_addr constant [10 x i8] c"dimm_test\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 81, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"pdc_sata_pci_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 276, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1452, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"pdc_sata_pci_tbl\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 270, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"pdc_port_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 257, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"pdc_sata_init_one.__print_once\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1427, i32 44 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1428, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1429, i32 48 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"pdc_sata_sht\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 229, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"pdc_20621_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 236, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 426, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 471, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 505, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 616, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 627, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 588, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1231, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1246, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1254, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1257, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1261, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1266, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1274, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1283, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1286, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1290, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1294, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1313, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1317, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1323, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1332, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1339, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1351, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1182, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1191, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 778, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 672, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 683, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 698, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 711, i32 4 }
@___asan_gen_.252 = private constant [26 x i8] c"../drivers/ata/sata_sx4.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 724, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 2045, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_dimm_test291, ptr @__UNIQUE_ID_dimm_testtype290, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__UNIQUE_ID_version319, ptr @__exitcall_pdc_sata_pci_driver_exit, ptr @__initcall__kmod_sata_sx4__314_1446_pdc_sata_pci_driver_init6, ptr @__modver_attr, ptr @__param_dimm_test, ptr @pdc20621_dimm_init._entry, ptr @pdc20621_dimm_init._entry.29, ptr @pdc20621_dimm_init._entry.32, ptr @pdc20621_dimm_init._entry.36, ptr @pdc20621_dimm_init._entry.39, ptr @pdc20621_dimm_init._entry.42, ptr @pdc20621_dimm_init._entry_ptr, ptr @pdc20621_dimm_init._entry_ptr.31, ptr @pdc20621_dimm_init._entry_ptr.35, ptr @pdc20621_dimm_init._entry_ptr.38, ptr @pdc20621_dimm_init._entry_ptr.41, ptr @pdc20621_dimm_init._entry_ptr.44, ptr @pdc20621_prog_dimm_global._entry, ptr @pdc20621_prog_dimm_global._entry.48, ptr @pdc20621_prog_dimm_global._entry_ptr, ptr @pdc20621_prog_dimm_global._entry_ptr.50, ptr @pdc_sata_pci_driver_exit, ptr @dimm_test, ptr @pdc_sata_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pdc_sata_pci_tbl, ptr @pdc_port_info, ptr @pdc_sata_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pdc_sata_sht, ptr @pdc_20621_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dimm_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_sata_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_sata_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_sata_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_sata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_20621_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_dimm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_dimm_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_dimm_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_dimm_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_dimm_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_dimm_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_prog_dimm_global._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc20621_prog_dimm_global._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_sata_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pdc_sata_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pdc_sata_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pdc_sata_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_sata_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #9
  %0 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [1 x %struct.ata_port_info], ptr @pdc_port_info, i32 0, i32 %2
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %.b68 = load i1, ptr @pdc_sata_init_one.__print_once, align 1
  br i1 %.b68, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @pdc_sata_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 4) #9
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 396, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call, null
  %tobool5.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  %call8 = call i32 @pcim_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 24, ptr noundef nonnull @.str.1) #9
  %6 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %if.end11.cleanup_crit_edge [
    i32 -16, label %if.then13
    i32 0, label %if.end17
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @pcim_pin_device(ptr noundef %pdev) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = call ptr @pcim_iomap_table(ptr noundef %pdev) #9
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %iomap, align 4
  %arrayidx20 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 0
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr ptr, ptr %call18, i32 3
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx22, align 4
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8
  %add.ptr23 = getelementptr i8, ptr %11, i32 786944
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr23, ptr %ioaddr, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr23, ptr %data_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 786948
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %feature_addr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %11, i32 786952
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr1.i, ptr %nsect_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 786956
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr2.i, ptr %lbal_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 786960
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr3.i, ptr %lbam_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 786964
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr4.i, ptr %lbah_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 786968
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 8
  %20 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr5.i, ptr %device_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 786972
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 9
  %21 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr6.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr6.i, ptr %command_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 787000
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 12
  %23 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr7.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 11
  %24 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr7.i, ptr %altstatus_addr.i, align 4
  call void @ata_port_pbar_desc(ptr noundef %9, i32 noundef 3, i32 noundef -1, ptr noundef nonnull @.str.3) #9
  call void @ata_port_pbar_desc(ptr noundef %9, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.4) #9
  call void @ata_port_pbar_desc(ptr noundef %9, i32 noundef 3, i32 noundef 512, ptr noundef nonnull @.str.5) #9
  %arrayidx20.1 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx20.1, align 4
  %27 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomap, align 4
  %arrayidx22.1 = getelementptr ptr, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx22.1, align 4
  %ioaddr.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8
  %add.ptr23.1 = getelementptr i8, ptr %30, i32 787072
  %31 = ptrtoint ptr %ioaddr.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr23.1, ptr %ioaddr.1, align 4
  %data_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %data_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr23.1, ptr %data_addr.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %30, i32 787076
  %error_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %error_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i.1, ptr %error_addr.i.1, align 4
  %feature_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 3
  %34 = ptrtoint ptr %feature_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i.1, ptr %feature_addr.i.1, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %30, i32 787080
  %nsect_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 4
  %35 = ptrtoint ptr %nsect_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr1.i.1, ptr %nsect_addr.i.1, align 4
  %add.ptr2.i.1 = getelementptr i8, ptr %30, i32 787084
  %lbal_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 5
  %36 = ptrtoint ptr %lbal_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr2.i.1, ptr %lbal_addr.i.1, align 4
  %add.ptr3.i.1 = getelementptr i8, ptr %30, i32 787088
  %lbam_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 6
  %37 = ptrtoint ptr %lbam_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr3.i.1, ptr %lbam_addr.i.1, align 4
  %add.ptr4.i.1 = getelementptr i8, ptr %30, i32 787092
  %lbah_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 7
  %38 = ptrtoint ptr %lbah_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr4.i.1, ptr %lbah_addr.i.1, align 4
  %add.ptr5.i.1 = getelementptr i8, ptr %30, i32 787096
  %device_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 8
  %39 = ptrtoint ptr %device_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr5.i.1, ptr %device_addr.i.1, align 4
  %add.ptr6.i.1 = getelementptr i8, ptr %30, i32 787100
  %status_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 9
  %40 = ptrtoint ptr %status_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr6.i.1, ptr %status_addr.i.1, align 4
  %command_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 10
  %41 = ptrtoint ptr %command_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr6.i.1, ptr %command_addr.i.1, align 4
  %add.ptr7.i.1 = getelementptr i8, ptr %30, i32 787128
  %ctl_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 12
  %42 = ptrtoint ptr %ctl_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr7.i.1, ptr %ctl_addr.i.1, align 4
  %altstatus_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 11
  %43 = ptrtoint ptr %altstatus_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr7.i.1, ptr %altstatus_addr.i.1, align 4
  call void @ata_port_pbar_desc(ptr noundef %26, i32 noundef 3, i32 noundef -1, ptr noundef nonnull @.str.3) #9
  call void @ata_port_pbar_desc(ptr noundef %26, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.4) #9
  call void @ata_port_pbar_desc(ptr noundef %26, i32 noundef 3, i32 noundef 640, ptr noundef nonnull @.str.5) #9
  %arrayidx20.2 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 2
  %44 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx20.2, align 4
  %46 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iomap, align 4
  %arrayidx22.2 = getelementptr ptr, ptr %47, i32 3
  %48 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx22.2, align 4
  %ioaddr.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8
  %add.ptr23.2 = getelementptr i8, ptr %49, i32 787200
  %50 = ptrtoint ptr %ioaddr.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr23.2, ptr %ioaddr.2, align 4
  %data_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %data_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr23.2, ptr %data_addr.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %49, i32 787204
  %error_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 2
  %52 = ptrtoint ptr %error_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i.2, ptr %error_addr.i.2, align 4
  %feature_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 3
  %53 = ptrtoint ptr %feature_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i.2, ptr %feature_addr.i.2, align 4
  %add.ptr1.i.2 = getelementptr i8, ptr %49, i32 787208
  %nsect_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 4
  %54 = ptrtoint ptr %nsect_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr1.i.2, ptr %nsect_addr.i.2, align 4
  %add.ptr2.i.2 = getelementptr i8, ptr %49, i32 787212
  %lbal_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 5
  %55 = ptrtoint ptr %lbal_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr2.i.2, ptr %lbal_addr.i.2, align 4
  %add.ptr3.i.2 = getelementptr i8, ptr %49, i32 787216
  %lbam_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 6
  %56 = ptrtoint ptr %lbam_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr3.i.2, ptr %lbam_addr.i.2, align 4
  %add.ptr4.i.2 = getelementptr i8, ptr %49, i32 787220
  %lbah_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 7
  %57 = ptrtoint ptr %lbah_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr4.i.2, ptr %lbah_addr.i.2, align 4
  %add.ptr5.i.2 = getelementptr i8, ptr %49, i32 787224
  %device_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 8
  %58 = ptrtoint ptr %device_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr5.i.2, ptr %device_addr.i.2, align 4
  %add.ptr6.i.2 = getelementptr i8, ptr %49, i32 787228
  %status_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 9
  %59 = ptrtoint ptr %status_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr6.i.2, ptr %status_addr.i.2, align 4
  %command_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 10
  %60 = ptrtoint ptr %command_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr6.i.2, ptr %command_addr.i.2, align 4
  %add.ptr7.i.2 = getelementptr i8, ptr %49, i32 787256
  %ctl_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 12
  %61 = ptrtoint ptr %ctl_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr7.i.2, ptr %ctl_addr.i.2, align 4
  %altstatus_addr.i.2 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 8, i32 11
  %62 = ptrtoint ptr %altstatus_addr.i.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr7.i.2, ptr %altstatus_addr.i.2, align 4
  call void @ata_port_pbar_desc(ptr noundef %45, i32 noundef 3, i32 noundef -1, ptr noundef nonnull @.str.3) #9
  call void @ata_port_pbar_desc(ptr noundef %45, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.4) #9
  call void @ata_port_pbar_desc(ptr noundef %45, i32 noundef 3, i32 noundef 768, ptr noundef nonnull @.str.5) #9
  %arrayidx20.3 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 3
  %63 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx20.3, align 4
  %65 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iomap, align 4
  %arrayidx22.3 = getelementptr ptr, ptr %66, i32 3
  %67 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx22.3, align 4
  %ioaddr.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8
  %add.ptr23.3 = getelementptr i8, ptr %68, i32 787328
  %69 = ptrtoint ptr %ioaddr.3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr23.3, ptr %ioaddr.3, align 4
  %data_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %data_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr23.3, ptr %data_addr.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %68, i32 787332
  %error_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 2
  %71 = ptrtoint ptr %error_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i.3, ptr %error_addr.i.3, align 4
  %feature_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 3
  %72 = ptrtoint ptr %feature_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i.3, ptr %feature_addr.i.3, align 4
  %add.ptr1.i.3 = getelementptr i8, ptr %68, i32 787336
  %nsect_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 4
  %73 = ptrtoint ptr %nsect_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr1.i.3, ptr %nsect_addr.i.3, align 4
  %add.ptr2.i.3 = getelementptr i8, ptr %68, i32 787340
  %lbal_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 5
  %74 = ptrtoint ptr %lbal_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr2.i.3, ptr %lbal_addr.i.3, align 4
  %add.ptr3.i.3 = getelementptr i8, ptr %68, i32 787344
  %lbam_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 6
  %75 = ptrtoint ptr %lbam_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr3.i.3, ptr %lbam_addr.i.3, align 4
  %add.ptr4.i.3 = getelementptr i8, ptr %68, i32 787348
  %lbah_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 7
  %76 = ptrtoint ptr %lbah_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr4.i.3, ptr %lbah_addr.i.3, align 4
  %add.ptr5.i.3 = getelementptr i8, ptr %68, i32 787352
  %device_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 8
  %77 = ptrtoint ptr %device_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr5.i.3, ptr %device_addr.i.3, align 4
  %add.ptr6.i.3 = getelementptr i8, ptr %68, i32 787356
  %status_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 9
  %78 = ptrtoint ptr %status_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr6.i.3, ptr %status_addr.i.3, align 4
  %command_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 10
  %79 = ptrtoint ptr %command_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr6.i.3, ptr %command_addr.i.3, align 4
  %add.ptr7.i.3 = getelementptr i8, ptr %68, i32 787384
  %ctl_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 12
  %80 = ptrtoint ptr %ctl_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr7.i.3, ptr %ctl_addr.i.3, align 4
  %altstatus_addr.i.3 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 8, i32 11
  %81 = ptrtoint ptr %altstatus_addr.i.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr7.i.3, ptr %altstatus_addr.i.3, align 4
  call void @ata_port_pbar_desc(ptr noundef %64, i32 noundef 3, i32 noundef -1, ptr noundef nonnull @.str.3) #9
  call void @ata_port_pbar_desc(ptr noundef %64, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.4) #9
  call void @ata_port_pbar_desc(ptr noundef %64, i32 noundef 3, i32 noundef 896, ptr noundef nonnull @.str.5) #9
  %call.i69 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i = icmp eq i32 %call.i69, 0
  br i1 %cmp.i, label %if.end28, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  %call29 = call fastcc i32 @pdc20621_dimm_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @pdc_20621_init(ptr noundef nonnull %call)
  call void @pci_set_master(ptr noundef %pdev) #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  %call33 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %83, ptr noundef nonnull @pdc20621_interrupt, i32 noundef 128, ptr noundef nonnull @pdc_sata_sht) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then13, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end32 ], [ -12, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -16, %if.then13 ], [ -12, %if.end28.cleanup_crit_edge ], [ %call.i69, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc20621_dimm_init(ptr noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %test_parttern1 = alloca [40 x i8], align 1
  %test_parttern2 = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %add.ptr1 = getelementptr i8, ptr %3, i32 786496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1) #9, !srcloc !169
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then)) #9
          to label %do.body11 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %5) #9
  br label %do.body11

do.body11:                                        ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %add.ptr14 = getelementptr i8, ptr %3, i32 786492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1610547200) #9, !srcloc !169
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @msleep(i32 noundef 3000) #9
  %add.ptr23 = getelementptr i8, ptr %3, i32 786500
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !170
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then39)) #9
          to label %do.end43 [label %if.then39], !srcloc !172

if.then39:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %11 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug304, ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %10) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300000002, i32 %10)
  %cmp = icmp ugt i32 %10, -300000002
  br i1 %cmp, label %if.then44, label %do.end43.do.body116_crit_edge

do.end43.do.body116_crit_edge:                    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116

if.then44:                                        ; preds = %do.end43
  %sub = sub i32 %5, %10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then57)) #9
          to label %do.end61 [label %if.then57], !srcloc !172

if.then57:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %dev58 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %13 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug305, ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %sub, i32 noundef %sub) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %if.then44
  %div = udiv i32 %sub, 300000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then74)) #9
          to label %do.end78 [label %if.then74], !srcloc !172

if.then74:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %dev75 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %15 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug306, ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %div, i32 noundef %div) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.end61
  %mul = mul nuw nsw i32 %div, 33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then91)) #9
          to label %do.end95 [label %if.then91], !srcloc !172

if.then91:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  %dev92 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev92, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug307, ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef %mul, i32 noundef %mul) #9
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.end78
  %div96 = udiv i32 1400000, %mul
  %sub97 = add nsw i32 %div96, -2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then110)) #9
          to label %do.end114 [label %if.then110], !srcloc !172

if.then110:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  %dev111 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %19 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev111, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug308, ptr noundef %20, ptr noundef nonnull @.str.22, i32 noundef %sub97, i32 noundef %sub97) #9
  br label %do.end114

do.end114:                                        ; preds = %if.then110, %do.end95
  %shl = shl i32 %sub97, 16
  %or = or i32 %shl, -1979705308
  br label %do.body116

do.body116:                                       ; preds = %do.end114, %do.end43.do.body116_crit_edge
  %pci_status.0 = phi i32 [ %or, %do.end114 ], [ -1974265820, %do.end43.do.body116_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then128)) #9
          to label %do.body133 [label %if.then128], !srcloc !172

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  %dev129 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %21 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev129, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug309, ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef %pci_status.0) #9
  br label %do.body133

do.body133:                                       ; preds = %if.then128, %do.body116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %pci_status.0)
  %add.ptr136 = getelementptr i8, ptr %3, i32 786440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %23) #9, !srcloc !169
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  %25 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomap, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %26, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 32336) #9, !srcloc !169
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i.i = getelementptr i8, ptr %28, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 -536870912) #9, !srcloc !169
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not1.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not1.i.i, label %do.body133.if.else.i.i_crit_edge, label %do.body133.if.then.i_crit_edge

do.body133.if.then.i_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.body133.if.else.i.i_crit_edge:                 ; preds = %do.body133
  br label %if.else.i.i

for.body.i.i:                                     ; preds = %if.else.i.i
  %inc.i.i = add nuw nsw i32 %count.02.i.i, 1
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %33 = and i32 %32, 256
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.else.i.i_crit_edge, label %for.body.i.i.if.then.i_crit_edge

for.body.i.i.if.then.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.body.i.i.if.else.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body.i.i.if.else.i.i_crit_edge, %do.body133.if.else.i.i_crit_edge
  %count.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.if.else.i.i_crit_edge ], [ 0, %do.body133.if.else.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i.i)
  %cmp22.i.i = icmp eq i32 %count.02.i.i, 1000
  br i1 %cmp22.i.i, label %if.else.i.i.do.end148_crit_edge, label %for.body.i.i

if.else.i.i.do.end148_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end148

if.then.i:                                        ; preds = %for.body.i.i.if.then.i_crit_edge, %do.body133.if.then.i_crit_edge
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %35 = and i32 %34, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %35)
  %cmp.i = icmp eq i32 %35, 6553600
  br i1 %cmp.i, label %if.then.i.do.body151_crit_edge, label %if.end2.i

if.then.i.do.body151_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body151

if.end2.i:                                        ; preds = %if.then.i
  %36 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomap, align 4
  %arrayidx.i13.i = getelementptr ptr, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i13.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i14.i = getelementptr i8, ptr %39, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i14.i, i32 2384) #9, !srcloc !169
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i14.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i15.i = getelementptr i8, ptr %39, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i15.i, i32 -536870912) #9, !srcloc !169
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i15.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not1.i16.i = icmp eq i32 %42, 0
  br i1 %tobool.not1.i16.i, label %if.end2.i.if.else.i22.i_crit_edge, label %if.end2.i.if.then5.i_crit_edge

if.end2.i.if.then5.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.end2.i.if.else.i22.i_crit_edge:                ; preds = %if.end2.i
  br label %if.else.i22.i

for.body.i19.i:                                   ; preds = %if.else.i22.i
  %inc.i17.i = add nuw nsw i32 %count.02.i20.i, 1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i15.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %44 = and i32 %43, 256
  %tobool.not.i18.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i18.i, label %for.body.i19.i.if.else.i22.i_crit_edge, label %for.body.i19.i.if.then5.i_crit_edge

for.body.i19.i.if.then5.i_crit_edge:              ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

for.body.i19.i.if.else.i22.i_crit_edge:           ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i22.i

if.else.i22.i:                                    ; preds = %for.body.i19.i.if.else.i22.i_crit_edge, %if.end2.i.if.else.i22.i_crit_edge
  %count.02.i20.i = phi i32 [ %inc.i17.i, %for.body.i19.i.if.else.i22.i_crit_edge ], [ 0, %if.end2.i.if.else.i22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i20.i)
  %cmp22.i21.i = icmp eq i32 %count.02.i20.i, 1000
  br i1 %cmp22.i21.i, label %if.else.i22.i.do.end148_crit_edge, label %for.body.i19.i

if.else.i22.i.do.end148_crit_edge:                ; preds = %if.else.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end148

if.then5.i:                                       ; preds = %for.body.i19.i.if.then5.i_crit_edge, %if.end2.i.if.then5.i_crit_edge
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i14.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %46 = and i32 %45, 16646144
  call void @__sanitizer_cov_trace_const_cmp4(i32 7733248, i32 %46)
  %cmp6.i = icmp ult i32 %46, 7733248
  br i1 %cmp6.i, label %if.then5.i.do.body151_crit_edge, label %if.then5.i.do.end148_crit_edge

if.then5.i.do.end148_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end148

if.then5.i.do.body151_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body151

do.end148:                                        ; preds = %if.then5.i.do.end148_crit_edge, %if.else.i22.i.do.end148_crit_edge, %if.else.i.i.do.end148_crit_edge
  %dev149 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %47 = ptrtoint ptr %dev149 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev149, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.24) #12
  br label %cleanup283

do.body151:                                       ; preds = %if.then5.i.do.body151_crit_edge, %if.then.i.do.body151_crit_edge
  %retval.0.i379 = phi i32 [ 100, %if.then.i.do.body151_crit_edge ], [ 133, %if.then5.i.do.body151_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then163)) #9
          to label %do.end167 [label %if.then163], !srcloc !172

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %dev164 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %49 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev164, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug310, ptr noundef %50, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i379) #9
  br label %do.end167

do.end167:                                        ; preds = %if.then163, %do.body151
  %51 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iomap, align 4
  %arrayidx.i = getelementptr ptr, ptr %52, i32 3
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i566 = getelementptr i8, ptr %54, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i566, i32 2896) #9, !srcloc !169
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i566) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i567 = getelementptr i8, ptr %54, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i567, i32 -536870912) #9, !srcloc !169
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i567) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %57 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not1.i568 = icmp eq i32 %57, 0
  br i1 %tobool.not1.i568, label %do.end167.if.else.i574_crit_edge, label %do.end167.for.end.i576_crit_edge

do.end167.for.end.i576_crit_edge:                 ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i576

do.end167.if.else.i574_crit_edge:                 ; preds = %do.end167
  br label %if.else.i574

for.body.i571:                                    ; preds = %if.else.i574
  %inc.i569 = add nuw nsw i32 %count.02.i572, 1
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i567) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %59 = and i32 %58, 256
  %tobool.not.i570 = icmp eq i32 %59, 0
  br i1 %tobool.not.i570, label %for.body.i571.if.else.i574_crit_edge, label %for.body.i571.for.end.i576_crit_edge

for.body.i571.for.end.i576_crit_edge:             ; preds = %for.body.i571
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i576

for.body.i571.if.else.i574_crit_edge:             ; preds = %for.body.i571
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i574

if.else.i574:                                     ; preds = %for.body.i571.if.else.i574_crit_edge, %do.end167.if.else.i574_crit_edge
  %count.02.i572 = phi i32 [ %inc.i569, %for.body.i571.if.else.i574_crit_edge ], [ 0, %do.end167.if.else.i574_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i572)
  %cmp22.i573 = icmp eq i32 %count.02.i572, 1000
  br i1 %cmp22.i573, label %if.else.i574.pdc20621_i2c_read.exit578_crit_edge, label %for.body.i571

if.else.i574.pdc20621_i2c_read.exit578_crit_edge: ; preds = %if.else.i574
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit578

for.end.i576:                                     ; preds = %for.body.i571.for.end.i576_crit_edge, %do.end167.for.end.i576_crit_edge
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i566) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  br label %pdc20621_i2c_read.exit578

pdc20621_i2c_read.exit578:                        ; preds = %for.end.i576, %if.else.i574.pdc20621_i2c_read.exit578_crit_edge
  %61 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iomap, align 4
  %arrayidx.i550 = getelementptr ptr, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx.i550 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i550, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i551 = getelementptr i8, ptr %64, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i551, i32 3152) #9, !srcloc !169
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i551) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i552 = getelementptr i8, ptr %64, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i552, i32 -536870912) #9, !srcloc !169
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i552) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not1.i553 = icmp eq i32 %67, 0
  br i1 %tobool.not1.i553, label %pdc20621_i2c_read.exit578.if.else.i559_crit_edge, label %pdc20621_i2c_read.exit578.for.end.i561_crit_edge

pdc20621_i2c_read.exit578.for.end.i561_crit_edge: ; preds = %pdc20621_i2c_read.exit578
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i561

pdc20621_i2c_read.exit578.if.else.i559_crit_edge: ; preds = %pdc20621_i2c_read.exit578
  br label %if.else.i559

for.body.i556:                                    ; preds = %if.else.i559
  %inc.i554 = add nuw nsw i32 %count.02.i557, 1
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i552) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %69 = and i32 %68, 256
  %tobool.not.i555 = icmp eq i32 %69, 0
  br i1 %tobool.not.i555, label %for.body.i556.if.else.i559_crit_edge, label %for.body.i556.for.end.i561_crit_edge

for.body.i556.for.end.i561_crit_edge:             ; preds = %for.body.i556
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i561

for.body.i556.if.else.i559_crit_edge:             ; preds = %for.body.i556
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i559

if.else.i559:                                     ; preds = %for.body.i556.if.else.i559_crit_edge, %pdc20621_i2c_read.exit578.if.else.i559_crit_edge
  %count.02.i557 = phi i32 [ %inc.i554, %for.body.i556.if.else.i559_crit_edge ], [ 0, %pdc20621_i2c_read.exit578.if.else.i559_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i557)
  %cmp22.i558 = icmp eq i32 %count.02.i557, 1000
  br i1 %cmp22.i558, label %if.else.i559.pdc20621_i2c_read.exit563_crit_edge, label %for.body.i556

if.else.i559.pdc20621_i2c_read.exit563_crit_edge: ; preds = %if.else.i559
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit563

for.end.i561:                                     ; preds = %for.body.i556.for.end.i561_crit_edge, %pdc20621_i2c_read.exit578.for.end.i561_crit_edge
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i551) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  br label %pdc20621_i2c_read.exit563

pdc20621_i2c_read.exit563:                        ; preds = %for.end.i561, %if.else.i559.pdc20621_i2c_read.exit563_crit_edge
  %71 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iomap, align 4
  %arrayidx.i535 = getelementptr ptr, ptr %72, i32 3
  %73 = ptrtoint ptr %arrayidx.i535 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i535, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i536 = getelementptr i8, ptr %74, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i536, i32 1104) #9, !srcloc !169
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i536) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i537 = getelementptr i8, ptr %74, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i537, i32 -536870912) #9, !srcloc !169
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i537) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %77 = and i32 %76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not1.i538 = icmp eq i32 %77, 0
  br i1 %tobool.not1.i538, label %pdc20621_i2c_read.exit563.if.else.i544_crit_edge, label %pdc20621_i2c_read.exit563.for.end.i546_crit_edge

pdc20621_i2c_read.exit563.for.end.i546_crit_edge: ; preds = %pdc20621_i2c_read.exit563
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i546

pdc20621_i2c_read.exit563.if.else.i544_crit_edge: ; preds = %pdc20621_i2c_read.exit563
  br label %if.else.i544

for.body.i541:                                    ; preds = %if.else.i544
  %inc.i539 = add nuw nsw i32 %count.02.i542, 1
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i537) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %79 = and i32 %78, 256
  %tobool.not.i540 = icmp eq i32 %79, 0
  br i1 %tobool.not.i540, label %for.body.i541.if.else.i544_crit_edge, label %for.body.i541.for.end.i546_crit_edge

for.body.i541.for.end.i546_crit_edge:             ; preds = %for.body.i541
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i546

for.body.i541.if.else.i544_crit_edge:             ; preds = %for.body.i541
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i544

if.else.i544:                                     ; preds = %for.body.i541.if.else.i544_crit_edge, %pdc20621_i2c_read.exit563.if.else.i544_crit_edge
  %count.02.i542 = phi i32 [ %inc.i539, %for.body.i541.if.else.i544_crit_edge ], [ 0, %pdc20621_i2c_read.exit563.if.else.i544_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i542)
  %cmp22.i543 = icmp eq i32 %count.02.i542, 1000
  br i1 %cmp22.i543, label %if.else.i544.pdc20621_i2c_read.exit548_crit_edge, label %for.body.i541

if.else.i544.pdc20621_i2c_read.exit548_crit_edge: ; preds = %if.else.i544
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit548

for.end.i546:                                     ; preds = %for.body.i541.for.end.i546_crit_edge, %pdc20621_i2c_read.exit563.for.end.i546_crit_edge
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i536) #9, !srcloc !170
  %81 = lshr i32 %80, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i545 = and i32 %81, 255
  br label %pdc20621_i2c_read.exit548

pdc20621_i2c_read.exit548:                        ; preds = %for.end.i546, %if.else.i544.pdc20621_i2c_read.exit548_crit_edge
  %spd0.i.sroa.5.0 = phi i32 [ %and25.i545, %for.end.i546 ], [ -1, %if.else.i544.pdc20621_i2c_read.exit548_crit_edge ]
  %82 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iomap, align 4
  %arrayidx.i520 = getelementptr ptr, ptr %83, i32 3
  %84 = ptrtoint ptr %arrayidx.i520 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i520, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i521 = getelementptr i8, ptr %85, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i521, i32 5456) #9, !srcloc !169
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i521) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i522 = getelementptr i8, ptr %85, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i522, i32 -536870912) #9, !srcloc !169
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i522) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %88 = and i32 %87, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not1.i523 = icmp eq i32 %88, 0
  br i1 %tobool.not1.i523, label %pdc20621_i2c_read.exit548.if.else.i529_crit_edge, label %pdc20621_i2c_read.exit548.for.end.i531_crit_edge

pdc20621_i2c_read.exit548.for.end.i531_crit_edge: ; preds = %pdc20621_i2c_read.exit548
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i531

pdc20621_i2c_read.exit548.if.else.i529_crit_edge: ; preds = %pdc20621_i2c_read.exit548
  br label %if.else.i529

for.body.i526:                                    ; preds = %if.else.i529
  %inc.i524 = add nuw nsw i32 %count.02.i527, 1
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i522) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %90 = and i32 %89, 256
  %tobool.not.i525 = icmp eq i32 %90, 0
  br i1 %tobool.not.i525, label %for.body.i526.if.else.i529_crit_edge, label %for.body.i526.for.end.i531_crit_edge

for.body.i526.for.end.i531_crit_edge:             ; preds = %for.body.i526
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i531

for.body.i526.if.else.i529_crit_edge:             ; preds = %for.body.i526
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i529

if.else.i529:                                     ; preds = %for.body.i526.if.else.i529_crit_edge, %pdc20621_i2c_read.exit548.if.else.i529_crit_edge
  %count.02.i527 = phi i32 [ %inc.i524, %for.body.i526.if.else.i529_crit_edge ], [ 0, %pdc20621_i2c_read.exit548.if.else.i529_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i527)
  %cmp22.i528 = icmp eq i32 %count.02.i527, 1000
  br i1 %cmp22.i528, label %if.else.i529.pdc20621_i2c_read.exit533_crit_edge, label %for.body.i526

if.else.i529.pdc20621_i2c_read.exit533_crit_edge: ; preds = %if.else.i529
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit533

for.end.i531:                                     ; preds = %for.body.i526.for.end.i531_crit_edge, %pdc20621_i2c_read.exit548.for.end.i531_crit_edge
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i521) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  br label %pdc20621_i2c_read.exit533

pdc20621_i2c_read.exit533:                        ; preds = %for.end.i531, %if.else.i529.pdc20621_i2c_read.exit533_crit_edge
  %92 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iomap, align 4
  %arrayidx.i505 = getelementptr ptr, ptr %93, i32 3
  %94 = ptrtoint ptr %arrayidx.i505 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i505, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i506 = getelementptr i8, ptr %95, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i506, i32 848) #9, !srcloc !169
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i506) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i507 = getelementptr i8, ptr %95, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i507, i32 -536870912) #9, !srcloc !169
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i507) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %98 = and i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not1.i508 = icmp eq i32 %98, 0
  br i1 %tobool.not1.i508, label %pdc20621_i2c_read.exit533.if.else.i514_crit_edge, label %pdc20621_i2c_read.exit533.for.end.i516_crit_edge

pdc20621_i2c_read.exit533.for.end.i516_crit_edge: ; preds = %pdc20621_i2c_read.exit533
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i516

pdc20621_i2c_read.exit533.if.else.i514_crit_edge: ; preds = %pdc20621_i2c_read.exit533
  br label %if.else.i514

for.body.i511:                                    ; preds = %if.else.i514
  %inc.i509 = add nuw nsw i32 %count.02.i512, 1
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i507) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %100 = and i32 %99, 256
  %tobool.not.i510 = icmp eq i32 %100, 0
  br i1 %tobool.not.i510, label %for.body.i511.if.else.i514_crit_edge, label %for.body.i511.for.end.i516_crit_edge

for.body.i511.for.end.i516_crit_edge:             ; preds = %for.body.i511
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i516

for.body.i511.if.else.i514_crit_edge:             ; preds = %for.body.i511
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i514

if.else.i514:                                     ; preds = %for.body.i511.if.else.i514_crit_edge, %pdc20621_i2c_read.exit533.if.else.i514_crit_edge
  %count.02.i512 = phi i32 [ %inc.i509, %for.body.i511.if.else.i514_crit_edge ], [ 0, %pdc20621_i2c_read.exit533.if.else.i514_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i512)
  %cmp22.i513 = icmp eq i32 %count.02.i512, 1000
  br i1 %cmp22.i513, label %if.else.i514.pdc20621_i2c_read.exit518_crit_edge, label %for.body.i511

if.else.i514.pdc20621_i2c_read.exit518_crit_edge: ; preds = %if.else.i514
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit518

for.end.i516:                                     ; preds = %for.body.i511.for.end.i516_crit_edge, %pdc20621_i2c_read.exit533.for.end.i516_crit_edge
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i506) #9, !srcloc !170
  %102 = lshr i32 %101, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i515 = and i32 %102, 255
  br label %pdc20621_i2c_read.exit518

pdc20621_i2c_read.exit518:                        ; preds = %for.end.i516, %if.else.i514.pdc20621_i2c_read.exit518_crit_edge
  %spd0.i.sroa.3.0 = phi i32 [ %and25.i515, %for.end.i516 ], [ -1, %if.else.i514.pdc20621_i2c_read.exit518_crit_edge ]
  %103 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iomap, align 4
  %arrayidx.i490 = getelementptr ptr, ptr %104, i32 3
  %105 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i490, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i491 = getelementptr i8, ptr %106, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i491, i32 4432) #9, !srcloc !169
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i491) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i492 = getelementptr i8, ptr %106, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i492, i32 -536870912) #9, !srcloc !169
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i492) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %109 = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not1.i493 = icmp eq i32 %109, 0
  br i1 %tobool.not1.i493, label %pdc20621_i2c_read.exit518.if.else.i499_crit_edge, label %pdc20621_i2c_read.exit518.for.end.i501_crit_edge

pdc20621_i2c_read.exit518.for.end.i501_crit_edge: ; preds = %pdc20621_i2c_read.exit518
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i501

pdc20621_i2c_read.exit518.if.else.i499_crit_edge: ; preds = %pdc20621_i2c_read.exit518
  br label %if.else.i499

for.body.i496:                                    ; preds = %if.else.i499
  %inc.i494 = add nuw nsw i32 %count.02.i497, 1
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i492) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %111 = and i32 %110, 256
  %tobool.not.i495 = icmp eq i32 %111, 0
  br i1 %tobool.not.i495, label %for.body.i496.if.else.i499_crit_edge, label %for.body.i496.for.end.i501_crit_edge

for.body.i496.for.end.i501_crit_edge:             ; preds = %for.body.i496
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i501

for.body.i496.if.else.i499_crit_edge:             ; preds = %for.body.i496
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i499

if.else.i499:                                     ; preds = %for.body.i496.if.else.i499_crit_edge, %pdc20621_i2c_read.exit518.if.else.i499_crit_edge
  %count.02.i497 = phi i32 [ %inc.i494, %for.body.i496.if.else.i499_crit_edge ], [ 0, %pdc20621_i2c_read.exit518.if.else.i499_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i497)
  %cmp22.i498 = icmp eq i32 %count.02.i497, 1000
  br i1 %cmp22.i498, label %if.else.i499.pdc20621_i2c_read.exit503_crit_edge, label %for.body.i496

if.else.i499.pdc20621_i2c_read.exit503_crit_edge: ; preds = %if.else.i499
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit503

for.end.i501:                                     ; preds = %for.body.i496.for.end.i501_crit_edge, %pdc20621_i2c_read.exit518.for.end.i501_crit_edge
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i491) #9, !srcloc !170
  %113 = lshr i32 %112, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i500 = and i32 %113, 255
  br label %pdc20621_i2c_read.exit503

pdc20621_i2c_read.exit503:                        ; preds = %for.end.i501, %if.else.i499.pdc20621_i2c_read.exit503_crit_edge
  %spd0.i.sroa.11580.0 = phi i32 [ %and25.i500, %for.end.i501 ], [ -1, %if.else.i499.pdc20621_i2c_read.exit503_crit_edge ]
  %114 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %iomap, align 4
  %arrayidx.i475 = getelementptr ptr, ptr %115, i32 3
  %116 = ptrtoint ptr %arrayidx.i475 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i475, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i476 = getelementptr i8, ptr %117, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i476, i32 1360) #9, !srcloc !169
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i476) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i477 = getelementptr i8, ptr %117, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i477, i32 -536870912) #9, !srcloc !169
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i477) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %120 = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not1.i478 = icmp eq i32 %120, 0
  br i1 %tobool.not1.i478, label %pdc20621_i2c_read.exit503.if.else.i484_crit_edge, label %pdc20621_i2c_read.exit503.for.end.i486_crit_edge

pdc20621_i2c_read.exit503.for.end.i486_crit_edge: ; preds = %pdc20621_i2c_read.exit503
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i486

pdc20621_i2c_read.exit503.if.else.i484_crit_edge: ; preds = %pdc20621_i2c_read.exit503
  br label %if.else.i484

for.body.i481:                                    ; preds = %if.else.i484
  %inc.i479 = add nuw nsw i32 %count.02.i482, 1
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i477) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %122 = and i32 %121, 256
  %tobool.not.i480 = icmp eq i32 %122, 0
  br i1 %tobool.not.i480, label %for.body.i481.if.else.i484_crit_edge, label %for.body.i481.for.end.i486_crit_edge

for.body.i481.for.end.i486_crit_edge:             ; preds = %for.body.i481
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i486

for.body.i481.if.else.i484_crit_edge:             ; preds = %for.body.i481
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i484

if.else.i484:                                     ; preds = %for.body.i481.if.else.i484_crit_edge, %pdc20621_i2c_read.exit503.if.else.i484_crit_edge
  %count.02.i482 = phi i32 [ %inc.i479, %for.body.i481.if.else.i484_crit_edge ], [ 0, %pdc20621_i2c_read.exit503.if.else.i484_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i482)
  %cmp22.i483 = icmp eq i32 %count.02.i482, 1000
  br i1 %cmp22.i483, label %if.else.i484.pdc20621_i2c_read.exit488_crit_edge, label %for.body.i481

if.else.i484.pdc20621_i2c_read.exit488_crit_edge: ; preds = %if.else.i484
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit488

for.end.i486:                                     ; preds = %for.body.i481.for.end.i486_crit_edge, %pdc20621_i2c_read.exit503.for.end.i486_crit_edge
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i476) #9, !srcloc !170
  %124 = lshr i32 %123, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i485 = and i32 %124, 255
  br label %pdc20621_i2c_read.exit488

pdc20621_i2c_read.exit488:                        ; preds = %for.end.i486, %if.else.i484.pdc20621_i2c_read.exit488_crit_edge
  %spd0.i.sroa.7.0 = phi i32 [ %and25.i485, %for.end.i486 ], [ -1, %if.else.i484.pdc20621_i2c_read.exit488_crit_edge ]
  %125 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iomap, align 4
  %arrayidx.i460 = getelementptr ptr, ptr %126, i32 3
  %127 = ptrtoint ptr %arrayidx.i460 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i460, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i461 = getelementptr i8, ptr %128, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i461, i32 6992) #9, !srcloc !169
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i461) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i462 = getelementptr i8, ptr %128, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i462, i32 -536870912) #9, !srcloc !169
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i462) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %131 = and i32 %130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not1.i463 = icmp eq i32 %131, 0
  br i1 %tobool.not1.i463, label %pdc20621_i2c_read.exit488.if.else.i469_crit_edge, label %pdc20621_i2c_read.exit488.for.end.i471_crit_edge

pdc20621_i2c_read.exit488.for.end.i471_crit_edge: ; preds = %pdc20621_i2c_read.exit488
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i471

pdc20621_i2c_read.exit488.if.else.i469_crit_edge: ; preds = %pdc20621_i2c_read.exit488
  br label %if.else.i469

for.body.i466:                                    ; preds = %if.else.i469
  %inc.i464 = add nuw nsw i32 %count.02.i467, 1
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i462) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %133 = and i32 %132, 256
  %tobool.not.i465 = icmp eq i32 %133, 0
  br i1 %tobool.not.i465, label %for.body.i466.if.else.i469_crit_edge, label %for.body.i466.for.end.i471_crit_edge

for.body.i466.for.end.i471_crit_edge:             ; preds = %for.body.i466
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i471

for.body.i466.if.else.i469_crit_edge:             ; preds = %for.body.i466
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i469

if.else.i469:                                     ; preds = %for.body.i466.if.else.i469_crit_edge, %pdc20621_i2c_read.exit488.if.else.i469_crit_edge
  %count.02.i467 = phi i32 [ %inc.i464, %for.body.i466.if.else.i469_crit_edge ], [ 0, %pdc20621_i2c_read.exit488.if.else.i469_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i467)
  %cmp22.i468 = icmp eq i32 %count.02.i467, 1000
  br i1 %cmp22.i468, label %if.else.i469.pdc20621_i2c_read.exit473_crit_edge, label %for.body.i466

if.else.i469.pdc20621_i2c_read.exit473_crit_edge: ; preds = %if.else.i469
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit473

for.end.i471:                                     ; preds = %for.body.i466.for.end.i471_crit_edge, %pdc20621_i2c_read.exit488.for.end.i471_crit_edge
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i461) #9, !srcloc !170
  %135 = lshr i32 %134, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i470 = and i32 %135, 255
  br label %pdc20621_i2c_read.exit473

pdc20621_i2c_read.exit473:                        ; preds = %for.end.i471, %if.else.i469.pdc20621_i2c_read.exit473_crit_edge
  %spd0.i.sroa.17582.0 = phi i32 [ %and25.i470, %for.end.i471 ], [ -1, %if.else.i469.pdc20621_i2c_read.exit473_crit_edge ]
  %136 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iomap, align 4
  %arrayidx.i445 = getelementptr ptr, ptr %137, i32 3
  %138 = ptrtoint ptr %arrayidx.i445 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i445, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i446 = getelementptr i8, ptr %139, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i446, i32 7248) #9, !srcloc !169
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i446) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i447 = getelementptr i8, ptr %139, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i447, i32 -536870912) #9, !srcloc !169
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i447) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %142 = and i32 %141, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not1.i448 = icmp eq i32 %142, 0
  br i1 %tobool.not1.i448, label %pdc20621_i2c_read.exit473.if.else.i454_crit_edge, label %pdc20621_i2c_read.exit473.for.end.i456_crit_edge

pdc20621_i2c_read.exit473.for.end.i456_crit_edge: ; preds = %pdc20621_i2c_read.exit473
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i456

pdc20621_i2c_read.exit473.if.else.i454_crit_edge: ; preds = %pdc20621_i2c_read.exit473
  br label %if.else.i454

for.body.i451:                                    ; preds = %if.else.i454
  %inc.i449 = add nuw nsw i32 %count.02.i452, 1
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i447) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %144 = and i32 %143, 256
  %tobool.not.i450 = icmp eq i32 %144, 0
  br i1 %tobool.not.i450, label %for.body.i451.if.else.i454_crit_edge, label %for.body.i451.for.end.i456_crit_edge

for.body.i451.for.end.i456_crit_edge:             ; preds = %for.body.i451
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i456

for.body.i451.if.else.i454_crit_edge:             ; preds = %for.body.i451
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i454

if.else.i454:                                     ; preds = %for.body.i451.if.else.i454_crit_edge, %pdc20621_i2c_read.exit473.if.else.i454_crit_edge
  %count.02.i452 = phi i32 [ %inc.i449, %for.body.i451.if.else.i454_crit_edge ], [ 0, %pdc20621_i2c_read.exit473.if.else.i454_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i452)
  %cmp22.i453 = icmp eq i32 %count.02.i452, 1000
  br i1 %cmp22.i453, label %if.else.i454.pdc20621_i2c_read.exit458_crit_edge, label %for.body.i451

if.else.i454.pdc20621_i2c_read.exit458_crit_edge: ; preds = %if.else.i454
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit458

for.end.i456:                                     ; preds = %for.body.i451.for.end.i456_crit_edge, %pdc20621_i2c_read.exit473.for.end.i456_crit_edge
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i446) #9, !srcloc !170
  %146 = lshr i32 %145, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i455 = and i32 %146, 255
  br label %pdc20621_i2c_read.exit458

pdc20621_i2c_read.exit458:                        ; preds = %for.end.i456, %if.else.i454.pdc20621_i2c_read.exit458_crit_edge
  %spd0.i.sroa.19.0 = phi i32 [ %and25.i455, %for.end.i456 ], [ -1, %if.else.i454.pdc20621_i2c_read.exit458_crit_edge ]
  %147 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iomap, align 4
  %arrayidx.i430 = getelementptr ptr, ptr %148, i32 3
  %149 = ptrtoint ptr %arrayidx.i430 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i430, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i431 = getelementptr i8, ptr %150, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i431, i32 7504) #9, !srcloc !169
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i431) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i432 = getelementptr i8, ptr %150, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i432, i32 -536870912) #9, !srcloc !169
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i432) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %153 = and i32 %152, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not1.i433 = icmp eq i32 %153, 0
  br i1 %tobool.not1.i433, label %pdc20621_i2c_read.exit458.if.else.i439_crit_edge, label %pdc20621_i2c_read.exit458.for.end.i441_crit_edge

pdc20621_i2c_read.exit458.for.end.i441_crit_edge: ; preds = %pdc20621_i2c_read.exit458
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i441

pdc20621_i2c_read.exit458.if.else.i439_crit_edge: ; preds = %pdc20621_i2c_read.exit458
  br label %if.else.i439

for.body.i436:                                    ; preds = %if.else.i439
  %inc.i434 = add nuw nsw i32 %count.02.i437, 1
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i432) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %155 = and i32 %154, 256
  %tobool.not.i435 = icmp eq i32 %155, 0
  br i1 %tobool.not.i435, label %for.body.i436.if.else.i439_crit_edge, label %for.body.i436.for.end.i441_crit_edge

for.body.i436.for.end.i441_crit_edge:             ; preds = %for.body.i436
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i441

for.body.i436.if.else.i439_crit_edge:             ; preds = %for.body.i436
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i439

if.else.i439:                                     ; preds = %for.body.i436.if.else.i439_crit_edge, %pdc20621_i2c_read.exit458.if.else.i439_crit_edge
  %count.02.i437 = phi i32 [ %inc.i434, %for.body.i436.if.else.i439_crit_edge ], [ 0, %pdc20621_i2c_read.exit458.if.else.i439_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i437)
  %cmp22.i438 = icmp eq i32 %count.02.i437, 1000
  br i1 %cmp22.i438, label %if.else.i439.pdc20621_i2c_read.exit443_crit_edge, label %for.body.i436

if.else.i439.pdc20621_i2c_read.exit443_crit_edge: ; preds = %if.else.i439
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit443

for.end.i441:                                     ; preds = %for.body.i436.for.end.i441_crit_edge, %pdc20621_i2c_read.exit458.for.end.i441_crit_edge
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i431) #9, !srcloc !170
  %157 = lshr i32 %156, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i440 = and i32 %157, 255
  br label %pdc20621_i2c_read.exit443

pdc20621_i2c_read.exit443:                        ; preds = %for.end.i441, %if.else.i439.pdc20621_i2c_read.exit443_crit_edge
  %spd0.i.sroa.21.0 = phi i32 [ %and25.i440, %for.end.i441 ], [ -1, %if.else.i439.pdc20621_i2c_read.exit443_crit_edge ]
  %158 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %iomap, align 4
  %arrayidx.i415 = getelementptr ptr, ptr %159, i32 3
  %160 = ptrtoint ptr %arrayidx.i415 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i415, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i416 = getelementptr i8, ptr %161, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i416, i32 7760) #9, !srcloc !169
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i416) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i417 = getelementptr i8, ptr %161, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i417, i32 -536870912) #9, !srcloc !169
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i417) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %164 = and i32 %163, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not1.i418 = icmp eq i32 %164, 0
  br i1 %tobool.not1.i418, label %pdc20621_i2c_read.exit443.if.else.i424_crit_edge, label %pdc20621_i2c_read.exit443.for.end.i426_crit_edge

pdc20621_i2c_read.exit443.for.end.i426_crit_edge: ; preds = %pdc20621_i2c_read.exit443
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i426

pdc20621_i2c_read.exit443.if.else.i424_crit_edge: ; preds = %pdc20621_i2c_read.exit443
  br label %if.else.i424

for.body.i421:                                    ; preds = %if.else.i424
  %inc.i419 = add nuw nsw i32 %count.02.i422, 1
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i417) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %166 = and i32 %165, 256
  %tobool.not.i420 = icmp eq i32 %166, 0
  br i1 %tobool.not.i420, label %for.body.i421.if.else.i424_crit_edge, label %for.body.i421.for.end.i426_crit_edge

for.body.i421.for.end.i426_crit_edge:             ; preds = %for.body.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i426

for.body.i421.if.else.i424_crit_edge:             ; preds = %for.body.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i424

if.else.i424:                                     ; preds = %for.body.i421.if.else.i424_crit_edge, %pdc20621_i2c_read.exit443.if.else.i424_crit_edge
  %count.02.i422 = phi i32 [ %inc.i419, %for.body.i421.if.else.i424_crit_edge ], [ 0, %pdc20621_i2c_read.exit443.if.else.i424_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i422)
  %cmp22.i423 = icmp eq i32 %count.02.i422, 1000
  br i1 %cmp22.i423, label %if.else.i424.pdc20621_i2c_read.exit428_crit_edge, label %for.body.i421

if.else.i424.pdc20621_i2c_read.exit428_crit_edge: ; preds = %if.else.i424
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit428

for.end.i426:                                     ; preds = %for.body.i421.for.end.i426_crit_edge, %pdc20621_i2c_read.exit443.for.end.i426_crit_edge
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i416) #9, !srcloc !170
  %168 = lshr i32 %167, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %and25.i425 = and i32 %168, 255
  br label %pdc20621_i2c_read.exit428

pdc20621_i2c_read.exit428:                        ; preds = %for.end.i426, %if.else.i424.pdc20621_i2c_read.exit428_crit_edge
  %spd0.i.sroa.23.0 = phi i32 [ %and25.i425, %for.end.i426 ], [ -1, %if.else.i424.pdc20621_i2c_read.exit428_crit_edge ]
  %169 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %iomap, align 4
  %arrayidx.i400 = getelementptr ptr, ptr %170, i32 3
  %171 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i400, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i401 = getelementptr i8, ptr %172, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i401, i32 4688) #9, !srcloc !169
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i401) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i402 = getelementptr i8, ptr %172, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i402, i32 -536870912) #9, !srcloc !169
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i402) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %175 = and i32 %174, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not1.i403 = icmp eq i32 %175, 0
  br i1 %tobool.not1.i403, label %pdc20621_i2c_read.exit428.if.else.i409_crit_edge, label %pdc20621_i2c_read.exit428.pdc20621_i2c_read.exit413_crit_edge

pdc20621_i2c_read.exit428.pdc20621_i2c_read.exit413_crit_edge: ; preds = %pdc20621_i2c_read.exit428
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit413

pdc20621_i2c_read.exit428.if.else.i409_crit_edge: ; preds = %pdc20621_i2c_read.exit428
  br label %if.else.i409

for.body.i406:                                    ; preds = %if.else.i409
  %inc.i404 = add nuw nsw i32 %count.02.i407, 1
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i402) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %177 = and i32 %176, 256
  %tobool.not.i405 = icmp eq i32 %177, 0
  br i1 %tobool.not.i405, label %for.body.i406.if.else.i409_crit_edge, label %for.body.i406.pdc20621_i2c_read.exit413_crit_edge

for.body.i406.pdc20621_i2c_read.exit413_crit_edge: ; preds = %for.body.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_i2c_read.exit413

for.body.i406.if.else.i409_crit_edge:             ; preds = %for.body.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i409

if.else.i409:                                     ; preds = %for.body.i406.if.else.i409_crit_edge, %pdc20621_i2c_read.exit428.if.else.i409_crit_edge
  %count.02.i407 = phi i32 [ %inc.i404, %for.body.i406.if.else.i409_crit_edge ], [ 0, %pdc20621_i2c_read.exit428.if.else.i409_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i407)
  %cmp22.i408 = icmp eq i32 %count.02.i407, 1000
  br i1 %cmp22.i408, label %if.else.i409.pdc20621_prog_dimm0.exit_crit_edge, label %for.body.i406

if.else.i409.pdc20621_prog_dimm0.exit_crit_edge:  ; preds = %if.else.i409
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_prog_dimm0.exit

pdc20621_i2c_read.exit413:                        ; preds = %for.body.i406.pdc20621_i2c_read.exit413_crit_edge, %pdc20621_i2c_read.exit428.pdc20621_i2c_read.exit413_crit_edge
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i401) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %179 = and i32 %178, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i = icmp eq i32 %179, 0
  br i1 %tobool.not.i, label %if.else.i, label %pdc20621_i2c_read.exit413.pdc20621_prog_dimm0.exit_crit_edge

pdc20621_i2c_read.exit413.pdc20621_prog_dimm0.exit_crit_edge: ; preds = %pdc20621_i2c_read.exit413
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_prog_dimm0.exit

if.else.i:                                        ; preds = %pdc20621_i2c_read.exit413
  %180 = and i32 %178, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool47.not.i = icmp eq i32 %180, 0
  br i1 %tobool47.not.i, label %if.else50.i, label %if.else.i.pdc20621_prog_dimm0.exit_crit_edge

if.else.i.pdc20621_prog_dimm0.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_prog_dimm0.exit

if.else50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %181 = lshr i32 %178, 2
  %182 = and i32 %181, 16384
  br label %pdc20621_prog_dimm0.exit

pdc20621_prog_dimm0.exit:                         ; preds = %if.else50.i, %if.else.i.pdc20621_prog_dimm0.exit_crit_edge, %pdc20621_i2c_read.exit413.pdc20621_prog_dimm0.exit_crit_edge, %if.else.i409.pdc20621_prog_dimm0.exit_crit_edge
  %.sink.i = phi i32 [ %182, %if.else50.i ], [ 49152, %pdc20621_i2c_read.exit413.pdc20621_prog_dimm0.exit_crit_edge ], [ 32768, %if.else.i.pdc20621_prog_dimm0.exit_crit_edge ], [ 49152, %if.else.i409.pdc20621_prog_dimm0.exit_crit_edge ]
  %sub.i = add nsw i32 %spd0.i.sroa.5.0, -8
  %sub8.i = shl nsw i32 %spd0.i.sroa.3.0, 4
  %shl9.i = add nsw i32 %sub8.i, -176
  %183 = shl nsw i32 %spd0.i.sroa.11580.0, 4
  %shl13.i = and i32 %183, -64
  %184 = shl nsw i32 %spd0.i.sroa.7.0, 6
  %shl16.i = and i32 %184, -128
  %add.i = add nsw i32 %spd0.i.sroa.17582.0, 9
  %div19.i = udiv i32 %add.i, 10
  %sub20.i = shl i32 %div19.i, 8
  %shl21.i = add i32 %sub20.i, -256
  %185 = tail call i32 @llvm.umax.i32(i32 %spd0.i.sroa.21.0, i32 %spd0.i.sroa.19.0) #9
  %add30.i = add i32 %185, 9
  %div31.i = udiv i32 %add30.i, 10
  %sub32.i = shl i32 %div31.i, 10
  %shl33.i = add i32 %sub32.i, -1024
  %sub37.i = sub nsw i32 9, %spd0.i.sroa.21.0
  %add38.i = add nsw i32 %sub37.i, %spd0.i.sroa.23.0
  %div39.i = udiv i32 %add38.i, 10
  %sub40.i = shl i32 %div39.i, 12
  %shl41.i = add i32 %sub40.i, -8192
  %div62104.i = lshr i32 %spd0.i.sroa.7.0, 1
  %div67105.i = lshr i32 %spd0.i.sroa.11580.0, 1
  %add63.i = add nsw i32 %spd0.i.sroa.5.0, 3
  %add65.i = add nsw i32 %add63.i, %spd0.i.sroa.3.0
  %add68.i = add i32 %add65.i, %div67105.i
  %conv70.i = add i32 %add68.i, %div62104.i
  %conv71.i = and i32 %conv70.i, 255
  %shl72.i = shl nuw i32 1, %conv71.i
  %shr.i = ashr i32 %shl72.i, 20
  %div73.lhs.trunc.i = trunc i32 %shr.i to i16
  %div73106.i = sdiv i16 %div73.lhs.trunc.i, 16
  %div73.sext.i = sext i16 %div73106.i to i32
  %sub74.i = shl nsw i32 %div73.sext.i, 16
  %shl75.i = add nsw i32 %sub74.i, -65536
  %or17.i = or i32 %sub.i, %shl9.i
  %or.i = or i32 %or17.i, %shl13.i
  %or10.i = or i32 %or.i, %shl16.i
  %or23.i = or i32 %or10.i, %shl75.i
  %or34.i = or i32 %or23.i, %shl21.i
  %or42.i = or i32 %or34.i, %shl33.i
  %186 = or i32 %or42.i, %shl41.i
  %or76.i = or i32 %186, %.sink.i
  %or78.i = or i32 %or76.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %187 = tail call i32 @llvm.bswap.i32(i32 %or78.i) #9
  %add.ptr79.i = getelementptr i8, ptr %54, i32 786560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %187) #9, !srcloc !169
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then181)) #9
          to label %do.end185 [label %if.then181], !srcloc !172

if.then181:                                       ; preds = %pdc20621_prog_dimm0.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev182 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %189 = ptrtoint ptr %dev182 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev182, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug311, ptr noundef %190, ptr noundef nonnull @.str.28, i32 noundef %shr.i) #9
  br label %do.end185

do.end185:                                        ; preds = %if.then181, %pdc20621_prog_dimm0.exit
  %191 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %iomap, align 4
  %arrayidx.i381 = getelementptr ptr, ptr %192, i32 3
  %193 = ptrtoint ptr %arrayidx.i381 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i381, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void @arm_heavy_mb() #9
  %add.ptr1.i = getelementptr i8, ptr %194, i32 786568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 -245816830) #9, !srcloc !169
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  %196 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %iomap, align 4
  %arrayidx.i.i382 = getelementptr ptr, ptr %197, i32 3
  %198 = ptrtoint ptr %arrayidx.i.i382 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i.i382, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i.i383 = getelementptr i8, ptr %199, i32 786508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i383, i32 2896) #9, !srcloc !169
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i383) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %add.ptr9.i.i384 = getelementptr i8, ptr %199, i32 786504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i384, i32 -536870912) #9, !srcloc !169
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i384) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %202 = and i32 %201, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not1.i.i385 = icmp eq i32 %202, 0
  br i1 %tobool.not1.i.i385, label %do.end185.if.else.i.i391_crit_edge, label %do.end185.if.end.i_crit_edge

do.end185.if.end.i_crit_edge:                     ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end185.if.else.i.i391_crit_edge:               ; preds = %do.end185
  br label %if.else.i.i391

for.body.i.i388:                                  ; preds = %if.else.i.i391
  %inc.i.i386 = add nuw nsw i32 %count.02.i.i389, 1
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i384) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %204 = and i32 %203, 256
  %tobool.not.i.i387 = icmp eq i32 %204, 0
  br i1 %tobool.not.i.i387, label %for.body.i.i388.if.else.i.i391_crit_edge, label %for.body.i.i388.if.end.i_crit_edge

for.body.i.i388.if.end.i_crit_edge:               ; preds = %for.body.i.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.i.i388.if.else.i.i391_crit_edge:         ; preds = %for.body.i.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i391

if.else.i.i391:                                   ; preds = %for.body.i.i388.if.else.i.i391_crit_edge, %do.end185.if.else.i.i391_crit_edge
  %count.02.i.i389 = phi i32 [ %inc.i.i386, %for.body.i.i388.if.else.i.i391_crit_edge ], [ 0, %do.end185.if.else.i.i391_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i.i389)
  %cmp22.i.i390 = icmp eq i32 %count.02.i.i389, 1000
  br i1 %cmp22.i.i390, label %do.end7.i, label %for.body.i.i388

do.end7.i:                                        ; preds = %if.else.i.i391
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %205 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.43, i32 noundef 80, i32 noundef 11) #12
  br label %do.end191

if.end.i:                                         ; preds = %for.body.i.i388.if.end.i_crit_edge, %do.end185.if.end.i_crit_edge
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i383) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %208 = and i32 %207, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %208)
  %cmp.i392 = icmp eq i32 %208, 131072
  br i1 %cmp.i392, label %if.then8.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 -245816574) #9, !srcloc !169
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  %dev22.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %210 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev22.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.49) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then8.i, %if.end.i.if.end23.i_crit_edge
  %data.0.i = phi i32 [ 36395505, %if.then8.i ], [ 36329969, %if.end.i.if.end23.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %212 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %212) #9, !srcloc !169
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %214 = and i32 %213, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool37.not.i = icmp eq i32 %214, 0
  br i1 %tobool37.not.i, label %if.end23.i.if.end193_crit_edge, label %if.end39.i

if.end23.i.if.end193_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.i:                                       ; preds = %if.end23.i
  tail call void @msleep(i32 noundef 100) #9
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %216 = and i32 %215, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool37.not.1.i = icmp eq i32 %216, 0
  br i1 %tobool37.not.1.i, label %if.end39.i.if.end193_crit_edge, label %if.end39.1.i

if.end39.i.if.end193_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.1.i:                                     ; preds = %if.end39.i
  tail call void @msleep(i32 noundef 200) #9
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %218 = and i32 %217, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool37.not.2.i = icmp eq i32 %218, 0
  br i1 %tobool37.not.2.i, label %if.end39.1.i.if.end193_crit_edge, label %if.end39.2.i

if.end39.1.i.if.end193_crit_edge:                 ; preds = %if.end39.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.2.i:                                     ; preds = %if.end39.1.i
  tail call void @msleep(i32 noundef 300) #9
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %220 = and i32 %219, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool37.not.3.i = icmp eq i32 %220, 0
  br i1 %tobool37.not.3.i, label %if.end39.2.i.if.end193_crit_edge, label %if.end39.3.i

if.end39.2.i.if.end193_crit_edge:                 ; preds = %if.end39.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.3.i:                                     ; preds = %if.end39.2.i
  tail call void @msleep(i32 noundef 400) #9
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %222 = and i32 %221, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool37.not.4.i = icmp eq i32 %222, 0
  br i1 %tobool37.not.4.i, label %if.end39.3.i.if.end193_crit_edge, label %if.end39.4.i

if.end39.3.i.if.end193_crit_edge:                 ; preds = %if.end39.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.4.i:                                     ; preds = %if.end39.3.i
  tail call void @msleep(i32 noundef 500) #9
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %224 = and i32 %223, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool37.not.5.i = icmp eq i32 %224, 0
  br i1 %tobool37.not.5.i, label %if.end39.4.i.if.end193_crit_edge, label %if.end39.5.i

if.end39.4.i.if.end193_crit_edge:                 ; preds = %if.end39.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.5.i:                                     ; preds = %if.end39.4.i
  tail call void @msleep(i32 noundef 600) #9
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %226 = and i32 %225, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool37.not.6.i = icmp eq i32 %226, 0
  br i1 %tobool37.not.6.i, label %if.end39.5.i.if.end193_crit_edge, label %if.end39.6.i

if.end39.5.i.if.end193_crit_edge:                 ; preds = %if.end39.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.6.i:                                     ; preds = %if.end39.5.i
  tail call void @msleep(i32 noundef 700) #9
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %228 = and i32 %227, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool37.not.7.i = icmp eq i32 %228, 0
  br i1 %tobool37.not.7.i, label %if.end39.6.i.if.end193_crit_edge, label %if.end39.7.i

if.end39.6.i.if.end193_crit_edge:                 ; preds = %if.end39.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.7.i:                                     ; preds = %if.end39.6.i
  tail call void @msleep(i32 noundef 800) #9
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %230 = and i32 %229, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool37.not.8.i = icmp eq i32 %230, 0
  br i1 %tobool37.not.8.i, label %if.end39.7.i.if.end193_crit_edge, label %if.end39.8.i

if.end39.7.i.if.end193_crit_edge:                 ; preds = %if.end39.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.8.i:                                     ; preds = %if.end39.7.i
  tail call void @msleep(i32 noundef 900) #9
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %232 = and i32 %231, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool37.not.9.i = icmp eq i32 %232, 0
  br i1 %tobool37.not.9.i, label %if.end39.8.i.if.end193_crit_edge, label %if.end39.9.i

if.end39.8.i.if.end193_crit_edge:                 ; preds = %if.end39.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end39.9.i:                                     ; preds = %if.end39.8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 1000) #9
  br label %do.end191

do.end191:                                        ; preds = %if.end39.9.i, %do.end7.i
  %dev192 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %233 = ptrtoint ptr %dev192 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev192, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.30) #12
  br label %cleanup283

if.end193:                                        ; preds = %if.end39.8.i.if.end193_crit_edge, %if.end39.7.i.if.end193_crit_edge, %if.end39.6.i.if.end193_crit_edge, %if.end39.5.i.if.end193_crit_edge, %if.end39.4.i.if.end193_crit_edge, %if.end39.3.i.if.end193_crit_edge, %if.end39.2.i.if.end193_crit_edge, %if.end39.1.i.if.end193_crit_edge, %if.end39.i.if.end193_crit_edge, %if.end23.i.if.end193_crit_edge
  %235 = load i32, ptr @dimm_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool194.not = icmp eq i32 %235, 0
  br i1 %tobool194.not, label %if.end193.if.end228_crit_edge, label %if.then195

if.end193.if.end228_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then195:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %test_parttern1) #9
  %236 = call ptr @memcpy(ptr %test_parttern1, ptr @__const.pdc20621_dimm_init.test_parttern1, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %test_parttern2) #9
  %237 = call ptr @memset(ptr %test_parttern2, i32 0, i32 40)
  call fastcc void @pdc20621_put_to_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern2, i32 noundef 65600, i32 noundef 40)
  call fastcc void @pdc20621_put_to_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern2, i32 noundef 64, i32 noundef 40)
  call fastcc void @pdc20621_put_to_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern1, i32 noundef 65600, i32 noundef 40)
  call fastcc void @pdc20621_get_from_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern2, i32 noundef 64)
  %dev202 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %238 = ptrtoint ptr %dev202 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev202, align 4
  %240 = ptrtoint ptr %test_parttern2 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %test_parttern2, align 1
  %conv = zext i8 %241 to i32
  %arrayidx204 = getelementptr inbounds [40 x i8], ptr %test_parttern2, i32 0, i32 1
  %242 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %243 to i32
  %arrayidx206 = getelementptr inbounds [40 x i8], ptr %test_parttern2, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %239, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv205, ptr noundef %arrayidx206) #12
  call fastcc void @pdc20621_get_from_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern2, i32 noundef 65600)
  %244 = ptrtoint ptr %dev202 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev202, align 4
  %246 = ptrtoint ptr %test_parttern2 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %test_parttern2, align 1
  %conv213 = zext i8 %247 to i32
  %248 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx204, align 1
  %conv215 = zext i8 %249 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %245, ptr noundef nonnull @.str.37, i32 noundef %conv213, i32 noundef %conv215, ptr noundef %arrayidx206) #12
  call fastcc void @pdc20621_put_to_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern1, i32 noundef 64, i32 noundef 40)
  call fastcc void @pdc20621_get_from_dimm(ptr noundef %host, ptr noundef nonnull %test_parttern2, i32 noundef 64)
  %250 = ptrtoint ptr %dev202 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev202, align 4
  %252 = ptrtoint ptr %test_parttern2 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %test_parttern2, align 1
  %conv224 = zext i8 %253 to i32
  %254 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx204, align 1
  %conv226 = zext i8 %255 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %251, ptr noundef nonnull @.str.40, i32 noundef %conv224, i32 noundef %conv226, ptr noundef %arrayidx206) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %test_parttern2) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %test_parttern1) #9
  br label %if.end228

if.end228:                                        ; preds = %if.then195, %if.end193.if.end228_crit_edge
  %256 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %iomap, align 4
  %arrayidx.i395 = getelementptr ptr, ptr %257, i32 3
  %258 = ptrtoint ptr %arrayidx.i395 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx.i395, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  call void @arm_heavy_mb() #9
  %add.ptr3.i = getelementptr i8, ptr %259, i32 786508
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 2896) #9, !srcloc !169
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  call void @arm_heavy_mb() #9
  %add.ptr9.i = getelementptr i8, ptr %259, i32 786504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -536870912) #9, !srcloc !169
  %261 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %262 = and i32 %261, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool.not1.i = icmp eq i32 %262, 0
  br i1 %tobool.not1.i, label %if.end228.if.else.i397_crit_edge, label %if.end228.if.end236_crit_edge

if.end228.if.end236_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.end228.if.else.i397_crit_edge:                 ; preds = %if.end228
  br label %if.else.i397

for.body.i:                                       ; preds = %if.else.i397
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %264 = and i32 %263, 256
  %tobool.not.i396 = icmp eq i32 %264, 0
  br i1 %tobool.not.i396, label %for.body.i.if.else.i397_crit_edge, label %for.body.i.if.end236_crit_edge

for.body.i.if.end236_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

for.body.i.if.else.i397_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i397

if.else.i397:                                     ; preds = %for.body.i.if.else.i397_crit_edge, %if.end228.if.else.i397_crit_edge
  %count.02.i = phi i32 [ %inc.i, %for.body.i.if.else.i397_crit_edge ], [ 0, %if.end228.if.else.i397_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.02.i)
  %cmp22.i = icmp eq i32 %count.02.i, 1000
  br i1 %cmp22.i, label %do.end234, label %for.body.i

do.end234:                                        ; preds = %if.else.i397
  call void @__sanitizer_cov_trace_pc() #11
  %dev235 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %265 = ptrtoint ptr %dev235 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev235, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.43, i32 noundef 80, i32 noundef 11) #12
  br label %cleanup283

if.end236:                                        ; preds = %for.body.i.if.end236_crit_edge, %if.end228.if.end236_crit_edge
  %267 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %268 = and i32 %267, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %268)
  %cmp237 = icmp eq i32 %268, 131072
  br i1 %cmp237, label %if.then239, label %if.end236.cleanup283_crit_edge

if.end236.cleanup283_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup283

if.then239:                                       ; preds = %if.end236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then252)) #9
          to label %do.end256 [label %if.then252], !srcloc !172

if.then252:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #11
  %dev253 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %269 = ptrtoint ptr %dev253 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev253, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug312, ptr noundef %270, ptr noundef nonnull @.str.45) #9
  br label %do.end256

do.end256:                                        ; preds = %if.then252, %if.then239
  %mul258 = and i32 %shl72.i, -1048576
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3520, i32 noundef 5) #13
  %tobool260.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool260.not, label %do.end256.cleanup283_crit_edge, label %while.cond.preheader

do.end256.cleanup283_crit_edge:                   ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup283

while.cond.preheader:                             ; preds = %do.end256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul258)
  %cmp263605.not = icmp eq i32 %mul258, 0
  br i1 %cmp263605.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %addr.0606 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  call fastcc void @pdc20621_put_to_dimm(ptr noundef %host, ptr noundef nonnull %call1.i.i.i, i32 noundef %addr.0606, i32 noundef 131072)
  %add = add nuw i32 %addr.0606, 131072
  %cmp263 = icmp ult i32 %add, %mul258
  br i1 %cmp263, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dimm_init, %if.then277)) #9
          to label %cleanup283 [label %if.then277], !srcloc !172

if.then277:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev278 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %271 = ptrtoint ptr %dev278 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev278, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc20621_dimm_init.__UNIQUE_ID_ddebug313, ptr noundef %272, ptr noundef nonnull @.str.46) #9
  br label %cleanup283

cleanup283:                                       ; preds = %if.then277, %while.end, %do.end256.cleanup283_crit_edge, %if.end236.cleanup283_crit_edge, %do.end234, %do.end191, %do.end148
  %retval.1 = phi i32 [ 1, %do.end191 ], [ 1, %do.end234 ], [ 1, %do.end148 ], [ 1, %do.end256.cleanup283_crit_edge ], [ 0, %if.then277 ], [ 0, %while.end ], [ 0, %if.end236.cleanup283_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_20621_init(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 786444
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %5 = and i32 %4, 65535
  %6 = or i32 %5, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #9, !srcloc !169
  %add.ptr7 = getelementptr i8, ptr %3, i32 786732
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %8 = or i32 %7, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %8) #9, !srcloc !169
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %12 = and i32 %11, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %12) #9, !srcloc !169
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc20621_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_instance, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %3, i32 786432
  %add.ptr4 = getelementptr i8, ptr %3, i32 787584
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  tail call void @_raw_spin_lock(ptr noundef nonnull %dev_instance) #9
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0101 = phi i32 [ 1, %if.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %handled.099 = phi i32 [ 0, %if.end11 ], [ %handled.2, %for.inc.for.body_crit_edge ]
  %sub = add nsw i32 %i.0101, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp13 = icmp ugt i32 %sub, 3
  %sub15 = add nsw i32 %i.0101, -5
  %spec.select = select i1 %cmp13, i32 %sub15, i32 %sub
  %7 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %8)
  %cmp17.not = icmp ult i32 %spec.select, %8
  br i1 %cmp17.not, label %if.end20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %arrayidx19 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %spec.select
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx19, align 4
  %shl = shl nuw nsw i32 1, %i.0101
  %and21 = and i32 %shl, %6
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.end20.for.inc_crit_edge, label %do.body

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_interrupt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_interrupt, %if.then29)) #9
          to label %if.end31 [label %if.then29], !srcloc !172

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %print_id = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_interrupt.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.52, i32 noundef %12, i32 noundef %i.0101, i32 noundef %and21) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool32.not = icmp eq i32 %and21, 0
  br i1 %tobool32.not, label %if.end31.for.inc_crit_edge, label %if.then34

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then34:                                        ; preds = %if.end31
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 25, i32 3
  %13 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %15 = icmp ugt i32 %14, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 %14
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %15, %tobool.not11.i
  br i1 %tobool.not.i, label %if.then34.for.inc_crit_edge, label %lor.lhs.false.i, !prof !200

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.then34
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.land.lhs.true37_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true37_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 %14, i32 6
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.land.lhs.true37_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.land.lhs.true37_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end.i.land.lhs.true37_crit_edge, %lor.lhs.false.i.land.lhs.true37_crit_edge
  %tf = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 %14, i32 4
  %22 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tf, align 4
  %and38 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true37.for.inc_crit_edge

land.lhs.true37.for.inc_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0101)
  %cmp41 = icmp ugt i32 %i.0101, 4
  %conv = zext i1 %cmp41 to i32
  %call42 = tail call fastcc i32 @pdc20621_host_intr(ptr noundef nonnull %10, ptr noundef nonnull %arrayidx.i.i, i32 noundef %conv, ptr noundef %add.ptr)
  %add = add i32 %call42, %handled.099
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %land.lhs.true37.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.then34.for.inc_crit_edge, %if.end31.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.2 = phi i32 [ %handled.099, %if.end31.for.inc_crit_edge ], [ %handled.099, %land.lhs.true37.for.inc_crit_edge ], [ %add, %if.then40 ], [ %handled.099, %if.end20.for.inc_crit_edge ], [ %handled.099, %for.body.for.inc_crit_edge ], [ %handled.099, %if.then34.for.inc_crit_edge ], [ %handled.099, %if.end.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull %dev_instance) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool46.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool46.not to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdc_check_atapi_dma(ptr nocapture noundef readonly %qc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scsicmd1 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %0 = ptrtoint ptr %scsicmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsicmd1, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 -86, label %entry.sw.bb_crit_edge
    i8 42, label %entry.sw.bb_crit_edge26
    i8 10, label %entry.sw.bb_crit_edge27
    i8 -88, label %entry.sw.bb_crit_edge28
    i8 40, label %entry.sw.bb_crit_edge29
    i8 8, label %entry.sw.bb_crit_edge30
    i8 -83, label %entry.sw.bb_crit_edge31
    i8 -66, label %entry.sw.bb_crit_edge32
  ]

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %pio.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %5)
  %cmp = icmp eq i8 %5, 42
  br i1 %cmp, label %if.then, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr i8, ptr %3, i32 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %shl = shl nuw i32 %conv6, 24
  %arrayidx7 = getelementptr i8, ptr %3, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or = or i32 %shl9, %shl
  %arrayidx10 = getelementptr i8, ptr %3, i32 4
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %or13 = or i32 %or, %shl12
  %arrayidx14 = getelementptr i8, ptr %3, i32 5
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %or16 = or i32 %or13, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45151, i32 %or16)
  %cmp17 = icmp ugt i32 %or16, -45151
  %spec.select = select i1 %cmp17, i32 1, i32 %pio.0
  br label %if.end20

if.end20:                                         ; preds = %if.then, %sw.epilog.if.end20_crit_edge
  %pio.2 = phi i32 [ %spec.select, %if.then ], [ %pio.0, %sw.epilog.if.end20_crit_edge ]
  ret i32 %pio.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc20621_qc_prep(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pdc20621_dma_prep(ptr noundef %qc)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pdc20621_nodata_prep(ptr noundef %qc)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc20621_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %entry.sw.bb2_crit_edge
    i8 10, label %do.body
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %3 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tf, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.bb2_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge
  tail call fastcc void @pdc20621_packet_start(ptr noundef %qc)
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_sx4.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 646, 0\0A.popsection", ""() #9, !srcloc !201
  unreachable

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #9
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %3 = and i32 %2, 2147221503
  %4 = or i32 %3, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !169
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_addr, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %6 = and i32 %5, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #9, !srcloc !169
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 32
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 11, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.pdc_reset_port.exit_crit_edge

for.body.i.pdc_reset_port.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_reset_port.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #9
  %or.i = or i32 %5, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !169
  %dec.i = add nsw i32 %i.020.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.pdc_reset_port.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.pdc_reset_port.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_reset_port.exit

pdc_reset_port.exit:                              ; preds = %if.end.i.pdc_reset_port.exit_crit_edge, %for.body.i.pdc_reset_port.exit_crit_edge
  %tmp.1.i = phi i32 [ %5, %for.body.i.pdc_reset_port.exit_crit_edge ], [ %or.i, %if.end.i.pdc_reset_port.exit_crit_edge ]
  %and3.i = and i32 %tmp.1.i, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !169
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  %call = tail call i32 @ata_sff_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags, align 16
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 32
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.020.i = phi i32 [ 11, %if.then ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.pdc_reset_port.exit_crit_edge

for.body.i.pdc_reset_port.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_reset_port.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #9
  %or.i = or i32 %5, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !169
  %dec.i = add nsw i32 %i.020.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.pdc_reset_port.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.pdc_reset_port.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_reset_port.exit

pdc_reset_port.exit:                              ; preds = %if.end.i.pdc_reset_port.exit_crit_edge, %for.body.i.pdc_reset_port.exit_crit_edge
  %tmp.1.i = phi i32 [ %5, %for.body.i.pdc_reset_port.exit_crit_edge ], [ %or.i, %if.end.i.pdc_reset_port.exit_crit_edge ]
  %and3.i = and i32 %tmp.1.i, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !169
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  br label %if.end

if.end:                                           ; preds = %pdc_reset_port.exit, %entry.if.end_crit_edge
  tail call void @ata_sff_error_handler(ptr noundef %ap) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_post_internal_cmd(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 32
  %add.ptr.i = getelementptr i8, ptr %5, i32 96
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.020.i = phi i32 [ 11, %if.then ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %and.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.pdc_reset_port.exit_crit_edge

for.body.i.pdc_reset_port.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_reset_port.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #9
  %or.i = or i32 %7, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !169
  %dec.i = add nsw i32 %i.020.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.pdc_reset_port.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.pdc_reset_port.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_reset_port.exit

pdc_reset_port.exit:                              ; preds = %if.end.i.pdc_reset_port.exit_crit_edge, %for.body.i.pdc_reset_port.exit_crit_edge
  %tmp.1.i = phi i32 [ %7, %for.body.i.pdc_reset_port.exit_crit_edge ], [ %or.i, %if.end.i.pdc_reset_port.exit_crit_edge ]
  %and3.i = and i32 %tmp.1.i, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !169
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  br label %if.end

if.end:                                           ; preds = %pdc_reset_port.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_port_start(ptr nocapture noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 2568, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_dma = getelementptr inbounds %struct.pdc_port_priv, ptr %call.i, i32 0, i32 2
  %call.i14 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 128, ptr noundef %pkt_dma, i32 noundef 3264, i32 noundef 0) #9
  %pkt = getelementptr inbounds %struct.pdc_port_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i14, ptr %pkt, align 4
  %tobool4.not = icmp eq ptr %call.i14, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_tf_load_mmio(ptr noundef %ap, ptr noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 10, label %entry.do.end_crit_edge
    i8 2, label %entry.do.end_crit_edge27
  ]

entry.do.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 906, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @ata_sff_tf_load(ptr noundef %ap, ptr noundef %tf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_exec_command_mmio(ptr noundef %ap, ptr noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 10, label %entry.do.end_crit_edge
    i8 2, label %entry.do.end_crit_edge27
  ]

entry.do.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 914, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @ata_sff_exec_command(ptr noundef %ap, ptr noundef %tf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc20621_irq_clear(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc20621_dma_prep(ptr noundef readonly %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %arrayidx5 = getelementptr [2560 x i8], ptr %3, i32 0, i32 512
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !200

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 426, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %16 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_elem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp175.not = icmp eq i32 %17, 0
  br i1 %cmp175.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %sg26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %18 = ptrtoint ptr %sg26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg26, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sg.0179 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %19, %for.body.preheader ]
  %total_len.0178 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx.0177 = phi i32 [ %inc28, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %si.0176 = phi i32 [ %inc31, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0179, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %inc = or i32 %idx.0177, 1
  %arrayidx27 = getelementptr i32, ptr %arrayidx5, i32 %idx.0177
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx27, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0179, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %inc28 = add i32 %idx.0177, 2
  %arrayidx29 = getelementptr i32, ptr %arrayidx5, i32 %inc
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx29, align 4
  %28 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length, align 4
  %add = add i32 %29, %total_len.0178
  %inc31 = add nuw i32 %si.0176, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.0179) #9
  %30 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_elem, align 4
  %cmp = icmp ult i32 %inc31, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = or i32 %add, -2147483648
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc28, %for.end.loopexit ]
  %total_len.0.lcssa = phi i32 [ -2147483648, %if.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %sub = add i32 %idx.0.lcssa, -1
  %arrayidx32 = getelementptr i32, ptr %arrayidx5, i32 %sub
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx32, align 4
  %or = or i32 %33, 128
  store i32 %or, ptr %arrayidx32, align 4
  %mul = shl i32 %idx.0.lcssa, 2
  %mul.i = shl i32 %13, 18
  %add.i = add i32 %mul.i, 2162688
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  %arrayidx.i = getelementptr i32, ptr %3, i32 32
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %total_len.0.lcssa) #9
  %arrayidx2.i = getelementptr i32, ptr %3, i32 33
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx2.i, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp.i = icmp eq i8 %39, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end.if.else.i_crit_edge

for.end.if.else.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.end
  %40 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tf, align 4
  %and.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.pdc20621_host_pkt.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.pdc20621_host_pkt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_host_pkt.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.end.if.else.i_crit_edge
  br label %pdc20621_host_pkt.exit

pdc20621_host_pkt.exit:                           ; preds = %if.else.i, %land.lhs.true.i.pdc20621_host_pkt.exit_crit_edge
  %tmp.0.i = phi i32 [ 0, %if.else.i ], [ 4, %land.lhs.true.i.pdc20621_host_pkt.exit_crit_edge ]
  %mul.i137 = shl i32 %13, 13
  %add4.i = add i32 %mul.i137, 2097280
  %add1.i = add i32 %mul.i137, 2103296
  %add7.i = shl i32 %13, 16
  %shl.i = add i32 %add7.i, 327680
  %or.i138 = or i32 %tmp.0.i, %shl.i
  %or8.i = or i32 %or.i138, -16777216
  %42 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %3, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %add1.i) #9
  %arrayidx11.i = getelementptr i32, ptr %3, i32 1
  %45 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx11.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #9
  %arrayidx13.i = getelementptr i32, ptr %3, i32 2
  %47 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %3, i32 3
  %48 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx15.i, align 4
  %arrayidx.i141 = getelementptr i32, ptr %3, i32 96
  %49 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %34, ptr %arrayidx.i141, align 4
  %arrayidx2.i143 = getelementptr i32, ptr %3, i32 97
  %50 = ptrtoint ptr %arrayidx2.i143 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %36, ptr %arrayidx2.i143, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %devno, align 4
  %55 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %protocol.i, align 4
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %56, label %pdc20621_host_pkt.exit.if.else10.i_crit_edge [
    i8 2, label %land.lhs.true.i147
    i8 0, label %pdc20621_host_pkt.exit.pdc20621_ata_pkt.exit_crit_edge
  ]

pdc20621_host_pkt.exit.pdc20621_ata_pkt.exit_crit_edge: ; preds = %pdc20621_host_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_ata_pkt.exit

pdc20621_host_pkt.exit.if.else10.i_crit_edge:     ; preds = %pdc20621_host_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else10.i

land.lhs.true.i147:                               ; preds = %pdc20621_host_pkt.exit
  %58 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tf, align 4
  %and.i145 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp eq i32 %and.i145, 0
  br i1 %tobool.not.i146, label %land.lhs.true.i147.pdc20621_ata_pkt.exit_crit_edge, label %land.lhs.true.i147.if.else10.i_crit_edge

land.lhs.true.i147.if.else10.i_crit_edge:         ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else10.i

land.lhs.true.i147.pdc20621_ata_pkt.exit_crit_edge: ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_ata_pkt.exit

if.else10.i:                                      ; preds = %land.lhs.true.i147.if.else10.i_crit_edge, %pdc20621_host_pkt.exit.if.else10.i_crit_edge
  br label %pdc20621_ata_pkt.exit

pdc20621_ata_pkt.exit:                            ; preds = %if.else10.i, %land.lhs.true.i147.pdc20621_ata_pkt.exit_crit_edge, %pdc20621_host_pkt.exit.pdc20621_ata_pkt.exit_crit_edge
  %.sink2.i = phi i8 [ 0, %if.else10.i ], [ 4, %land.lhs.true.i147.pdc20621_ata_pkt.exit_crit_edge ], [ 8, %pdc20621_host_pkt.exit.pdc20621_ata_pkt.exit_crit_edge ]
  %add1.i149 = add i32 %mul.i137, 2097536
  %arrayidx9.i = getelementptr i8, ptr %3, i32 256
  %60 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink2.i, ptr %arrayidx9.i, align 1
  %arrayidx15.i150 = getelementptr i8, ptr %3, i32 257
  %61 = ptrtoint ptr %arrayidx15.i150 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx15.i150, align 1
  %62 = trunc i32 %13 to i8
  %conv17.i = add i8 %62, 1
  %arrayidx19.i = getelementptr i8, ptr %3, i32 258
  %63 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv17.i, ptr %arrayidx19.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %3, i32 259
  %64 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %arrayidx21.i, align 1
  %65 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp24.i = icmp eq i8 %66, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %add1.i149) #9
  %.sink.i = select i1 %cmp24.i, i32 0, i32 %67
  %68 = getelementptr i32, ptr %3, i32 65
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink.i, ptr %68, align 4
  %arrayidx32.i = getelementptr i32, ptr %3, i32 66
  %70 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp34.i = icmp eq i32 %54, 0
  %..i = select i1 %cmp34.i, i8 -96, i8 -80
  %arrayidx40.i = getelementptr i8, ptr %3, i32 268
  %71 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 54, ptr %arrayidx40.i, align 1
  %arrayidx42.i = getelementptr i8, ptr %3, i32 269
  %72 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %..i, ptr %arrayidx42.i, align 1
  %arrayidx44.i = getelementptr i8, ptr %3, i32 270
  %73 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 46, ptr %arrayidx44.i, align 1
  %ctl.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ctl.i, align 1
  %arrayidx46.i = getelementptr i8, ptr %3, i32 271
  %76 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx46.i, align 1
  %77 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tf, align 4
  %and45 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %arrayidx.i153 = getelementptr i8, ptr %3, i32 272
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %pdc20621_ata_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 65, ptr %arrayidx.i153, align 1
  %hob_feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %80 = ptrtoint ptr %hob_feature.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hob_feature.i, align 2
  %arrayidx2.i152 = getelementptr i8, ptr %3, i32 273
  %82 = ptrtoint ptr %arrayidx2.i152 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx2.i152, align 1
  %feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %83 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %feature.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %3, i32 274
  %85 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %3, i32 275
  %86 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 66, ptr %arrayidx6.i, align 1
  %hob_nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %87 = ptrtoint ptr %hob_nsect.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %hob_nsect.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %3, i32 276
  %89 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx8.i, align 1
  %nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %90 = ptrtoint ptr %nsect.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %nsect.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %3, i32 277
  %92 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %3, i32 278
  %93 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 67, ptr %arrayidx12.i, align 1
  %hob_lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %94 = ptrtoint ptr %hob_lbal.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %hob_lbal.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %3, i32 279
  %96 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx14.i, align 1
  %lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %97 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %lbal.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %3, i32 280
  %99 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %3, i32 281
  %100 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 68, ptr %arrayidx18.i, align 1
  %hob_lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %101 = ptrtoint ptr %hob_lbam.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %hob_lbam.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %3, i32 282
  %103 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx20.i, align 1
  %lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %104 = ptrtoint ptr %lbam.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %lbam.i, align 2
  %arrayidx22.i = getelementptr i8, ptr %3, i32 283
  %106 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %3, i32 284
  %107 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 69, ptr %arrayidx24.i, align 1
  %hob_lbah.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %108 = ptrtoint ptr %hob_lbah.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %hob_lbah.i, align 2
  br label %if.end56

if.else:                                          ; preds = %pdc20621_ata_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 33, ptr %arrayidx.i153, align 1
  %feature.i154 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %111 = ptrtoint ptr %feature.i154 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %feature.i154, align 1
  %arrayidx2.i155 = getelementptr i8, ptr %3, i32 273
  %113 = ptrtoint ptr %arrayidx2.i155 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx2.i155, align 1
  %arrayidx4.i156 = getelementptr i8, ptr %3, i32 274
  %114 = ptrtoint ptr %arrayidx4.i156 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 34, ptr %arrayidx4.i156, align 1
  %nsect.i157 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %115 = ptrtoint ptr %nsect.i157 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %nsect.i157, align 4
  %arrayidx6.i158 = getelementptr i8, ptr %3, i32 275
  %117 = ptrtoint ptr %arrayidx6.i158 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx6.i158, align 1
  %arrayidx8.i159 = getelementptr i8, ptr %3, i32 276
  %118 = ptrtoint ptr %arrayidx8.i159 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 35, ptr %arrayidx8.i159, align 1
  %lbal.i160 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %119 = ptrtoint ptr %lbal.i160 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %lbal.i160, align 1
  %arrayidx10.i161 = getelementptr i8, ptr %3, i32 277
  %121 = ptrtoint ptr %arrayidx10.i161 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx10.i161, align 1
  %arrayidx12.i162 = getelementptr i8, ptr %3, i32 278
  %122 = ptrtoint ptr %arrayidx12.i162 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 36, ptr %arrayidx12.i162, align 1
  %lbam.i163 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %123 = ptrtoint ptr %lbam.i163 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %lbam.i163, align 2
  %arrayidx14.i164 = getelementptr i8, ptr %3, i32 279
  %125 = ptrtoint ptr %arrayidx14.i164 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx14.i164, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then47
  %.sink182 = phi i32 [ 280, %if.else ], [ 285, %if.then47 ]
  %.sink = phi i8 [ 37, %if.else ], [ %109, %if.then47 ]
  %.sink181 = phi i32 [ 281, %if.else ], [ 286, %if.then47 ]
  %i.0 = phi i32 [ 282, %if.else ], [ 287, %if.then47 ]
  %arrayidx16.i165 = getelementptr i8, ptr %3, i32 %.sink182
  %126 = ptrtoint ptr %arrayidx16.i165 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %.sink, ptr %arrayidx16.i165, align 1
  %lbah.i166 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %127 = ptrtoint ptr %lbah.i166 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %lbah.i166, align 1
  %arrayidx18.i167 = getelementptr i8, ptr %3, i32 %.sink181
  %129 = ptrtoint ptr %arrayidx18.i167 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx18.i167, align 1
  %130 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tf, align 4
  %and.i168 = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  br i1 %tobool.not.i169, label %if.end56.pdc_pkt_footer.exit_crit_edge, label %if.then.i

if.end56.pdc_pkt_footer.exit_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_pkt_footer.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %i.0, 1
  %arrayidx.i170 = getelementptr i8, ptr %3, i32 %i.0
  %132 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 38, ptr %arrayidx.i170, align 1
  %device.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %133 = ptrtoint ptr %device.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %device.i, align 4
  %inc1.i = add nuw nsw i32 %i.0, 2
  %arrayidx2.i171 = getelementptr i8, ptr %3, i32 %inc.i
  %135 = ptrtoint ptr %arrayidx2.i171 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx2.i171, align 1
  br label %pdc_pkt_footer.exit

pdc_pkt_footer.exit:                              ; preds = %if.then.i, %if.end56.pdc_pkt_footer.exit_crit_edge
  %i.addr.0.i = phi i32 [ %inc1.i, %if.then.i ], [ %i.0, %if.end56.pdc_pkt_footer.exit_crit_edge ]
  %inc3.i = add nuw nsw i32 %i.addr.0.i, 1
  %arrayidx4.i172 = getelementptr i8, ptr %3, i32 %i.addr.0.i
  %136 = ptrtoint ptr %arrayidx4.i172 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 47, ptr %arrayidx4.i172, align 1
  %command.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %137 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %command.i, align 1
  %arrayidx6.i173 = getelementptr i8, ptr %3, i32 %inc3.i
  %139 = ptrtoint ptr %arrayidx6.i173 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx6.i173, align 1
  %add.ptr62 = getelementptr i8, ptr %11, i32 %mul.i137
  tail call void @mmiocpy(ptr noundef %add.ptr62, ptr noundef %3, i32 noundef 512) #9
  %add.ptr66 = getelementptr i8, ptr %add.ptr62, i32 6144
  tail call void @mmiocpy(ptr noundef %add.ptr66, ptr noundef %arrayidx5, i32 noundef %mul) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %add.ptr72 = getelementptr i8, ptr %9, i32 787588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 16777216) #9, !srcloc !169
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dma_prep.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_dma_prep, %if.then86)) #9
          to label %do.end89 [label %if.then86], !srcloc !172

if.then86:                                        ; preds = %pdc_pkt_footer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %141 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_dma_prep.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.8, i32 noundef %142, i32 noundef %i.0, i32 noundef %mul) #9
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %pdc_pkt_footer.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc20621_nodata_prep(ptr noundef readonly %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devno, align 4
  %protocol.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol.i, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %19, label %entry.if.else10.i_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 0, label %entry.pdc20621_ata_pkt.exit_crit_edge
  ]

entry.pdc20621_ata_pkt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_ata_pkt.exit

entry.if.else10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else10.i

land.lhs.true.i:                                  ; preds = %entry
  %21 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tf, align 4
  %and.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.pdc20621_ata_pkt.exit_crit_edge, label %land.lhs.true.i.if.else10.i_crit_edge

land.lhs.true.i.if.else10.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else10.i

land.lhs.true.i.pdc20621_ata_pkt.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc20621_ata_pkt.exit

if.else10.i:                                      ; preds = %land.lhs.true.i.if.else10.i_crit_edge, %entry.if.else10.i_crit_edge
  br label %pdc20621_ata_pkt.exit

pdc20621_ata_pkt.exit:                            ; preds = %if.else10.i, %land.lhs.true.i.pdc20621_ata_pkt.exit_crit_edge, %entry.pdc20621_ata_pkt.exit_crit_edge
  %.sink2.i = phi i8 [ 0, %if.else10.i ], [ 4, %land.lhs.true.i.pdc20621_ata_pkt.exit_crit_edge ], [ 8, %entry.pdc20621_ata_pkt.exit_crit_edge ]
  %mul.i = shl i32 %13, 13
  %add1.i = add i32 %mul.i, 2097536
  %arrayidx9.i = getelementptr i8, ptr %3, i32 256
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink2.i, ptr %arrayidx9.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %3, i32 257
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx15.i, align 1
  %25 = trunc i32 %13 to i8
  %conv17.i = add i8 %25, 1
  %arrayidx19.i = getelementptr i8, ptr %3, i32 258
  %26 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv17.i, ptr %arrayidx19.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %3, i32 259
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx21.i, align 1
  %28 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp24.i = icmp eq i8 %29, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %add1.i) #9
  %.sink.i = select i1 %cmp24.i, i32 0, i32 %30
  %31 = getelementptr i32, ptr %3, i32 65
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i, ptr %31, align 4
  %arrayidx32.i = getelementptr i32, ptr %3, i32 66
  %33 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp34.i = icmp eq i32 %17, 0
  %..i = select i1 %cmp34.i, i8 -96, i8 -80
  %arrayidx40.i = getelementptr i8, ptr %3, i32 268
  %34 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 54, ptr %arrayidx40.i, align 1
  %arrayidx42.i = getelementptr i8, ptr %3, i32 269
  %35 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %..i, ptr %arrayidx42.i, align 1
  %arrayidx44.i = getelementptr i8, ptr %3, i32 270
  %36 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 46, ptr %arrayidx44.i, align 1
  %ctl.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ctl.i, align 1
  %arrayidx46.i = getelementptr i8, ptr %3, i32 271
  %39 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx46.i, align 1
  %40 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tf, align 4
  %and = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx.i54 = getelementptr i8, ptr %3, i32 272
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %pdc20621_ata_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 65, ptr %arrayidx.i54, align 1
  %hob_feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %hob_feature.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hob_feature.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %3, i32 273
  %45 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx2.i, align 1
  %feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %feature.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %3, i32 274
  %48 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %3, i32 275
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 66, ptr %arrayidx6.i, align 1
  %hob_nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %hob_nsect.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hob_nsect.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %3, i32 276
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx8.i, align 1
  %nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %53 = ptrtoint ptr %nsect.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nsect.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %3, i32 277
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %3, i32 278
  %56 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 67, ptr %arrayidx12.i, align 1
  %hob_lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %57 = ptrtoint ptr %hob_lbal.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hob_lbal.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %3, i32 279
  %59 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx14.i, align 1
  %lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %60 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lbal.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %3, i32 280
  %62 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %3, i32 281
  %63 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 68, ptr %arrayidx18.i, align 1
  %hob_lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %hob_lbam.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hob_lbam.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %3, i32 282
  %66 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx20.i, align 1
  %lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %67 = ptrtoint ptr %lbam.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lbam.i, align 2
  %arrayidx22.i = getelementptr i8, ptr %3, i32 283
  %69 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %3, i32 284
  %70 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 69, ptr %arrayidx24.i, align 1
  %hob_lbah.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %71 = ptrtoint ptr %hob_lbah.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hob_lbah.i, align 2
  br label %if.end

if.else:                                          ; preds = %pdc20621_ata_pkt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 33, ptr %arrayidx.i54, align 1
  %feature.i55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %74 = ptrtoint ptr %feature.i55 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %feature.i55, align 1
  %arrayidx2.i56 = getelementptr i8, ptr %3, i32 273
  %76 = ptrtoint ptr %arrayidx2.i56 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx2.i56, align 1
  %arrayidx4.i57 = getelementptr i8, ptr %3, i32 274
  %77 = ptrtoint ptr %arrayidx4.i57 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 34, ptr %arrayidx4.i57, align 1
  %nsect.i58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %78 = ptrtoint ptr %nsect.i58 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nsect.i58, align 4
  %arrayidx6.i59 = getelementptr i8, ptr %3, i32 275
  %80 = ptrtoint ptr %arrayidx6.i59 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx6.i59, align 1
  %arrayidx8.i60 = getelementptr i8, ptr %3, i32 276
  %81 = ptrtoint ptr %arrayidx8.i60 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 35, ptr %arrayidx8.i60, align 1
  %lbal.i61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %82 = ptrtoint ptr %lbal.i61 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %lbal.i61, align 1
  %arrayidx10.i62 = getelementptr i8, ptr %3, i32 277
  %84 = ptrtoint ptr %arrayidx10.i62 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx10.i62, align 1
  %arrayidx12.i63 = getelementptr i8, ptr %3, i32 278
  %85 = ptrtoint ptr %arrayidx12.i63 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 36, ptr %arrayidx12.i63, align 1
  %lbam.i64 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %86 = ptrtoint ptr %lbam.i64 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %lbam.i64, align 2
  %arrayidx14.i65 = getelementptr i8, ptr %3, i32 279
  %88 = ptrtoint ptr %arrayidx14.i65 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx14.i65, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink77 = phi i32 [ 280, %if.else ], [ 285, %if.then ]
  %.sink = phi i8 [ 37, %if.else ], [ %72, %if.then ]
  %.sink76 = phi i32 [ 281, %if.else ], [ 286, %if.then ]
  %i.0 = phi i32 [ 282, %if.else ], [ 287, %if.then ]
  %arrayidx16.i66 = getelementptr i8, ptr %3, i32 %.sink77
  %89 = ptrtoint ptr %arrayidx16.i66 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %.sink, ptr %arrayidx16.i66, align 1
  %lbah.i67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %90 = ptrtoint ptr %lbah.i67 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %lbah.i67, align 1
  %arrayidx18.i68 = getelementptr i8, ptr %3, i32 %.sink76
  %92 = ptrtoint ptr %arrayidx18.i68 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx18.i68, align 1
  %93 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tf, align 4
  %and.i69 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %if.end.pdc_pkt_footer.exit_crit_edge, label %if.then.i

if.end.pdc_pkt_footer.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_pkt_footer.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %i.0, 1
  %arrayidx.i71 = getelementptr i8, ptr %3, i32 %i.0
  %95 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 38, ptr %arrayidx.i71, align 1
  %device.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %96 = ptrtoint ptr %device.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %device.i, align 4
  %inc1.i = add nuw nsw i32 %i.0, 2
  %arrayidx2.i72 = getelementptr i8, ptr %3, i32 %inc.i
  %98 = ptrtoint ptr %arrayidx2.i72 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx2.i72, align 1
  br label %pdc_pkt_footer.exit

pdc_pkt_footer.exit:                              ; preds = %if.then.i, %if.end.pdc_pkt_footer.exit_crit_edge
  %i.addr.0.i = phi i32 [ %inc1.i, %if.then.i ], [ %i.0, %if.end.pdc_pkt_footer.exit_crit_edge ]
  %inc3.i = add nuw nsw i32 %i.addr.0.i, 1
  %arrayidx4.i73 = getelementptr i8, ptr %3, i32 %i.addr.0.i
  %99 = ptrtoint ptr %arrayidx4.i73 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 47, ptr %arrayidx4.i73, align 1
  %command.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %100 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %command.i, align 1
  %arrayidx6.i74 = getelementptr i8, ptr %3, i32 %inc3.i
  %102 = ptrtoint ptr %arrayidx6.i74 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx6.i74, align 1
  %add.ptr19 = getelementptr i8, ptr %11, i32 %mul.i
  tail call void @mmiocpy(ptr noundef %add.ptr19, ptr noundef %3, i32 noundef 512) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  %add.ptr21 = getelementptr i8, ptr %9, i32 787588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 16777216) #9, !srcloc !169
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_nodata_prep.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_nodata_prep, %if.then30)) #9
          to label %do.end33 [label %if.then30], !srcloc !172

if.then30:                                        ; preds = %pdc_pkt_footer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %104 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_nodata_prep.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.10, i32 noundef %105, i32 noundef %i.0) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %pdc_pkt_footer.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc20621_packet_start(ptr noundef %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host2 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %port_no3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no3, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %10 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tf, align 4
  %and = and i32 %11, 8
  %conv = add i32 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  tail call void @arm_heavy_mb() #9
  %mul = shl i32 %5, 13
  %add4 = add i32 %mul, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body23_crit_edge, label %land.lhs.true

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

land.lhs.true:                                    ; preds = %entry
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp = icmp eq i8 %13, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body23_crit_edge

land.lhs.true.do.body23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

if.then:                                          ; preds = %land.lhs.true
  %add9 = add i32 %5, 5
  %14 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qc, align 4
  %port_no2.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %port_no2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no2.i, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 31
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dump_hdma.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_packet_start, %if.then.i)) #9
          to label %pdc20621_dump_hdma.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %17, 13
  %add.ptr.i = getelementptr i8, ptr %23, i32 %mul.i
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %24 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !170
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #9, !srcloc !170
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #9, !srcloc !170
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_dump_hdma.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.15, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #9
  br label %pdc20621_dump_hdma.exit

pdc20621_dump_hdma.exit:                          ; preds = %if.then.i, %if.then
  %conv11 = and i32 %add9, 255
  %34 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qc, align 4
  %host.i96 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 31
  %36 = ptrtoint ptr %host.i96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host.i96, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.then.i97, label %if.end.i

if.then.i97:                                      ; preds = %pdc20621_dump_hdma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %43, i32 3
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i.i = getelementptr i8, ptr %45, i32 787456
  %mul.i.i = shl nuw nsw i32 %conv11, 2
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #9, !srcloc !169
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %add4) #9
  %add.ptr12.i.i = getelementptr i8, ptr %45, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %47) #9, !srcloc !169
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %39, align 4
  br label %pdc20621_push_hdma.exit

if.end.i:                                         ; preds = %pdc20621_dump_hdma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hdma_prod.i = getelementptr inbounds %struct.pdc_host_priv, ptr %39, i32 0, i32 1
  %50 = ptrtoint ptr %hdma_prod.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hdma_prod.i, align 4
  %and.i = and i32 %51, 31
  %arrayidx.i98 = getelementptr %struct.pdc_host_priv, ptr %39, i32 0, i32 3, i32 %and.i
  %52 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %qc, ptr %arrayidx.i98, align 4
  %seq6.i = getelementptr %struct.pdc_host_priv, ptr %39, i32 0, i32 3, i32 %and.i, i32 1
  %53 = ptrtoint ptr %seq6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv11, ptr %seq6.i, align 4
  %pkt_ofs9.i = getelementptr %struct.pdc_host_priv, ptr %39, i32 0, i32 3, i32 %and.i, i32 2
  %54 = ptrtoint ptr %pkt_ofs9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add4, ptr %pkt_ofs9.i, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %hdma_prod.i, align 4
  br label %pdc20621_push_hdma.exit

pdc20621_push_hdma.exit:                          ; preds = %if.end.i, %if.then.i97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_packet_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_packet_start, %if.then17)) #9
          to label %if.end70 [label %if.then17], !srcloc !172

if.then17:                                        ; preds = %pdc20621_push_hdma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_packet_start.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.12, i32 noundef %56, i32 noundef %add4, i32 noundef %add4, i32 noundef %conv11) #9
  br label %if.end70

do.body23:                                        ; preds = %land.lhs.true.do.body23_crit_edge, %entry.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %add.ptr26 = getelementptr i8, ptr %9, i32 787456
  %conv27 = and i32 %conv, 255
  %mul28 = shl nuw nsw i32 %conv27, 2
  %add.ptr29 = getelementptr i8, ptr %add.ptr26, i32 %mul28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 16777216) #9, !srcloc !169
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %add40 = add i32 %mul, 2097408
  %58 = tail call i32 @llvm.bswap.i32(i32 %add40)
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr, align 32
  %add.ptr41 = getelementptr i8, ptr %60, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %58) #9, !srcloc !169
  %61 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr, align 32
  %add.ptr46 = getelementptr i8, ptr %62, i32 64
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_packet_start.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_packet_start, %if.then62)) #9
          to label %if.end70 [label %if.then62], !srcloc !172

if.then62:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %print_id63 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %print_id63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %print_id63, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_packet_start.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.13, i32 noundef %65, i32 noundef %add40, i32 noundef %add40, i32 noundef %conv27) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %do.body23, %if.then17, %pdc20621_push_hdma.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_softreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_tf_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_exec_command(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc20621_put_to_dimm(ptr nocapture noundef readonly %host, ptr noundef %psource, i32 noundef %offset, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %div124 = lshr i32 %offset, 15
  %conv = trunc i32 %div124 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  %conv3 = and i32 %div124, 65535
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  %add.ptr5 = getelementptr i8, ptr %3, i32 786444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #9, !srcloc !169
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  %mul.neg = mul nsw i32 %conv3, -32768
  %sub = add i32 %mul.neg, %offset
  %add = add i32 %size, -32769
  %notsub = add i32 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notsub)
  %cmp = icmp slt i32 %notsub, 0
  %sub11 = sub i32 32768, %sub
  %cond = select i1 %cmp, i32 %size, i32 %sub11
  %div12125 = lshr i32 %sub, 2
  %add.ptr13 = getelementptr i8, ptr %5, i32 %div12125
  tail call void @mmiocpy(ptr noundef %add.ptr13, ptr noundef %psource, i32 noundef %cond) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %add.ptr17 = getelementptr i8, ptr %3, i32 787588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #9, !srcloc !169
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  %add.ptr24 = getelementptr i8, ptr %psource, i32 %cond
  %sub25 = sub i32 %size, %cond
  %idx.0127 = add i16 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %sub25)
  %cmp26128 = icmp sgt i32 %sub25, 32767
  br i1 %cmp26128, label %entry.do.body28_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.do.body28_crit_edge:                        ; preds = %entry
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %entry.do.body28_crit_edge
  %idx.0131 = phi i16 [ %idx.0, %do.body28.do.body28_crit_edge ], [ %idx.0127, %entry.do.body28_crit_edge ]
  %psource.addr.0130 = phi ptr [ %add.ptr52, %do.body28.do.body28_crit_edge ], [ %add.ptr24, %entry.do.body28_crit_edge ]
  %size.addr.0129 = phi i32 [ %sub53, %do.body28.do.body28_crit_edge ], [ %sub25, %entry.do.body28_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %conv31 = zext i16 %idx.0131 to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv31)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #9, !srcloc !169
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @mmiocpy(ptr noundef %5, ptr noundef %psource.addr.0130, i32 noundef 8192) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #9, !srcloc !169
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  %add.ptr52 = getelementptr i8, ptr %psource.addr.0130, i32 32768
  %sub53 = add nsw i32 %size.addr.0129, -32768
  %idx.0 = add i16 %idx.0131, 1
  %cmp26 = icmp ugt i32 %size.addr.0129, 65535
  br i1 %cmp26, label %do.body28.do.body28_crit_edge, label %do.body28.for.end_crit_edge

do.body28.for.end_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

for.end:                                          ; preds = %do.body28.for.end_crit_edge, %entry.for.end_crit_edge
  %size.addr.0.lcssa = phi i32 [ %sub25, %entry.for.end_crit_edge ], [ %sub53, %do.body28.for.end_crit_edge ]
  %psource.addr.0.lcssa = phi ptr [ %add.ptr24, %entry.for.end_crit_edge ], [ %add.ptr52, %do.body28.for.end_crit_edge ]
  %idx.0.lcssa = phi i16 [ %idx.0127, %entry.for.end_crit_edge ], [ %idx.0, %do.body28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %tobool.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.body55

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  %conv58 = zext i16 %idx.0.lcssa to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv58)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #9, !srcloc !169
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  %div68126 = lshr i32 %size.addr.0.lcssa, 2
  tail call void @mmiocpy(ptr noundef %5, ptr noundef %psource.addr.0.lcssa, i32 noundef %div68126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #9, !srcloc !169
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  br label %if.end

if.end:                                           ; preds = %do.body55, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc20621_get_from_dimm(ptr nocapture noundef readonly %host, ptr noundef %psource, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %div1 = lshr i32 %offset, 15
  %conv = trunc i32 %div1 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  tail call void @arm_heavy_mb() #9
  %add.ptr3 = getelementptr i8, ptr %3, i32 787588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 16777216) #9, !srcloc !169
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %conv9 = and i32 %div1, 65535
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %add.ptr11 = getelementptr i8, ptr %3, i32 786444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %7) #9, !srcloc !169
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %mul.neg = mul nsw i32 %conv9, -32768
  %sub = add i32 %mul.neg, %offset
  %notsub = add i32 %sub, -32729
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notsub)
  %cmp = icmp slt i32 %notsub, 0
  %sub21 = sub i32 32768, %sub
  %cond = select i1 %cmp, i32 40, i32 %sub21
  %div222 = lshr i32 %sub, 2
  %add.ptr23 = getelementptr i8, ptr %5, i32 %div222
  tail call void @mmiocpy(ptr noundef %psource, ptr noundef %add.ptr23, i32 noundef %cond) #9
  %add.ptr24 = getelementptr i8, ptr %psource, i32 %cond
  %sub25 = sub i32 40, %cond
  %idx.04 = add i16 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %sub25)
  %cmp265 = icmp sgt i32 %sub25, 32767
  br i1 %cmp265, label %entry.do.body28_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.do.body28_crit_edge:                        ; preds = %entry
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %entry.do.body28_crit_edge
  %idx.08 = phi i16 [ %idx.0, %do.body28.do.body28_crit_edge ], [ %idx.04, %entry.do.body28_crit_edge ]
  %psource.addr.07 = phi ptr [ %add.ptr52, %do.body28.do.body28_crit_edge ], [ %add.ptr24, %entry.do.body28_crit_edge ]
  %size.addr.06 = phi i32 [ %sub53, %do.body28.do.body28_crit_edge ], [ %sub25, %entry.do.body28_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 16777216) #9, !srcloc !169
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @arm_heavy_mb() #9
  %conv41 = zext i16 %idx.08 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv41)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #9, !srcloc !169
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @mmiocpy(ptr noundef %psource.addr.07, ptr noundef %5, i32 noundef 8192) #9
  %add.ptr52 = getelementptr i8, ptr %psource.addr.07, i32 32768
  %sub53 = add nsw i32 %size.addr.06, -32768
  %idx.0 = add i16 %idx.08, 1
  %cmp26 = icmp ugt i32 %size.addr.06, 65535
  br i1 %cmp26, label %do.body28.do.body28_crit_edge, label %do.body28.for.end_crit_edge

do.body28.for.end_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

for.end:                                          ; preds = %do.body28.for.end_crit_edge, %entry.for.end_crit_edge
  %size.addr.0.lcssa = phi i32 [ %sub25, %entry.for.end_crit_edge ], [ %sub53, %do.body28.for.end_crit_edge ]
  %psource.addr.0.lcssa = phi ptr [ %add.ptr24, %entry.for.end_crit_edge ], [ %add.ptr52, %do.body28.for.end_crit_edge ]
  %idx.0.lcssa = phi i16 [ %idx.04, %entry.for.end_crit_edge ], [ %idx.0, %do.body28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %tobool.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.body55

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 16777216) #9, !srcloc !169
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %conv68 = zext i16 %idx.0.lcssa to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv68)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %13) #9, !srcloc !169
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %div783 = lshr i32 %size.addr.0.lcssa, 2
  tail call void @mmiocpy(ptr noundef %psource.addr.0.lcssa, ptr noundef %5, i32 noundef %div783) #9
  br label %if.end

if.end:                                           ; preds = %do.body55, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc20621_host_intr(ptr noundef %ap, ptr noundef %qc, i32 noundef %doing_hdma, ptr noundef %mmio) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %port_no1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %0 = ptrtoint ptr %port_no1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_no1, align 4
  %mul = shl i32 %1, 13
  %add = add i32 %mul, 2097152
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %3, label %if.else190 [
    i8 2, label %land.lhs.true
    i8 0, label %if.then167
  ]

land.lhs.true:                                    ; preds = %entry
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %5 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tf, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %doing_hdma)
  %tobool4.not = icmp eq i32 %doing_hdma, 0
  br i1 %tobool.not, label %if.then, label %if.then62

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool4.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !172

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %7 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %print_id, align 4
  %add.ptr = getelementptr i8, ptr %mmio, i32 260
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !170
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  %add.ptr15 = getelementptr i8, ptr %mmio, i32 300
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !170
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_host_intr.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.54, i32 noundef %8, i32 noundef %10, i32 noundef %12) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.end
  %max.addr.0.i.i = phi i32 [ 1000, %do.end ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #9
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %17(ptr noundef %ap) #9
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %18 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %ata_sff_busy_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

ata_sff_busy_wait.exit.i:                         ; preds = %do.body.i.i
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge: ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ata_wait_idle.exit

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then7.i)) #9
          to label %ata_wait_idle.exit [label %if.then7.i], !srcloc !172

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %19 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.61, i32 noundef %20, i32 noundef %conv.i) #9
  br label %ata_wait_idle.exit

ata_wait_idle.exit:                               ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge
  %and2.i = and i32 %conv.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %..i = zext i1 %tobool3.not.i to i32
  %retval.0.i248 = select i1 %tobool.not.i, i32 %..i, i32 2
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %21 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err_mask, align 4
  %or = or i32 %22, %retval.0.i248
  store i32 %or, ptr %err_mask, align 4
  tail call void @ata_qc_complete(ptr noundef %qc) #9
  tail call fastcc void @pdc20621_pop_hdma(ptr noundef %qc)
  br label %if.end193

if.else:                                          ; preds = %if.then
  %conv23 = add i32 %1, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then36)) #9
          to label %do.end52 [label %if.then36], !srcloc !172

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %print_id37 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %23 = ptrtoint ptr %print_id37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %print_id37, align 4
  %add.ptr40 = getelementptr i8, ptr %mmio, i32 260
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !170
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %add.ptr46 = getelementptr i8, ptr %mmio, i32 300
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !170
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_host_intr.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.55, i32 noundef %24, i32 noundef %26, i32 noundef %28) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then36, %if.else
  %29 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qc, align 4
  %port_no2.i = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %port_no2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_no2.i, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 31
  %33 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %36, i32 4
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_dump_hdma.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then.i)) #9
          to label %pdc20621_dump_hdma.exit [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %32, 13
  %add.ptr.i = getelementptr i8, ptr %38, i32 %mul.i
  %print_id.i249 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 5
  %39 = ptrtoint ptr %print_id.i249 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %print_id.i249, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !170
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !170
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #9, !srcloc !170
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #9, !srcloc !170
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_dump_hdma.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.15, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #9
  br label %pdc20621_dump_hdma.exit

pdc20621_dump_hdma.exit:                          ; preds = %if.then.i, %do.end52
  %conv53 = and i32 %conv23, 255
  %49 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qc, align 4
  %host.i250 = getelementptr inbounds %struct.ata_port, ptr %50, i32 0, i32 31
  %51 = ptrtoint ptr %host.i250 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host.i250, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private_data.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i251 = icmp eq i32 %56, 0
  br i1 %tobool.not.i251, label %if.then.i252, label %if.end.i

if.then.i252:                                     ; preds = %pdc20621_dump_hdma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %58, i32 3
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i.i = getelementptr i8, ptr %60, i32 787456
  %mul.i.i = shl nuw nsw i32 %conv53, 2
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #9, !srcloc !169
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %add) #9
  %add.ptr12.i.i = getelementptr i8, ptr %60, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %62) #9, !srcloc !169
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %54, align 4
  br label %if.end193

if.end.i:                                         ; preds = %pdc20621_dump_hdma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hdma_prod.i = getelementptr inbounds %struct.pdc_host_priv, ptr %54, i32 0, i32 1
  %65 = ptrtoint ptr %hdma_prod.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hdma_prod.i, align 4
  %and.i253 = and i32 %66, 31
  %arrayidx.i254 = getelementptr %struct.pdc_host_priv, ptr %54, i32 0, i32 3, i32 %and.i253
  %67 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %qc, ptr %arrayidx.i254, align 4
  %seq6.i = getelementptr %struct.pdc_host_priv, ptr %54, i32 0, i32 3, i32 %and.i253, i32 1
  %68 = ptrtoint ptr %seq6.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv53, ptr %seq6.i, align 4
  %pkt_ofs9.i = getelementptr %struct.pdc_host_priv, ptr %54, i32 0, i32 3, i32 %and.i253, i32 2
  %69 = ptrtoint ptr %pkt_ofs9.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add, ptr %pkt_ofs9.i, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %hdma_prod.i, align 4
  br label %if.end193

if.then62:                                        ; preds = %land.lhs.true
  br i1 %tobool4.not, label %do.body127, label %if.then64

if.then64:                                        ; preds = %if.then62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then80)) #9
          to label %do.body97 [label %if.then80], !srcloc !172

if.then80:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %print_id81 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %70 = ptrtoint ptr %print_id81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %print_id81, align 4
  %add.ptr84 = getelementptr i8, ptr %mmio, i32 260
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #9, !srcloc !170
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  %add.ptr90 = getelementptr i8, ptr %mmio, i32 300
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #9, !srcloc !170
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_host_intr.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.56, i32 noundef %71, i32 noundef %73, i32 noundef %75) #9
  br label %do.body97

do.body97:                                        ; preds = %if.then80, %if.then64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %add.ptr100 = getelementptr i8, ptr %mmio, i32 1024
  %conv67 = shl i32 %1, 2
  %conv101 = add i32 %conv67, 4
  %mul102 = and i32 %conv101, 1020
  %add.ptr103 = getelementptr i8, ptr %add.ptr100, i32 %mul102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 16777216) #9, !srcloc !169
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add116 = add i32 %mul, 2097408
  %77 = tail call i32 @llvm.bswap.i32(i32 %add116)
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %78 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr, align 32
  %add.ptr117 = getelementptr i8, ptr %79, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %77) #9, !srcloc !169
  %80 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioaddr, align 32
  %add.ptr122 = getelementptr i8, ptr %81, i32 64
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  br label %if.end193

do.body127:                                       ; preds = %if.then62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then139)) #9
          to label %do.end155 [label %if.then139], !srcloc !172

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #11
  %print_id140 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %83 = ptrtoint ptr %print_id140 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %print_id140, align 4
  %add.ptr143 = getelementptr i8, ptr %mmio, i32 260
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #9, !srcloc !170
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %add.ptr149 = getelementptr i8, ptr %mmio, i32 300
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #9, !srcloc !170
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_host_intr.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.57, i32 noundef %84, i32 noundef %86, i32 noundef %88) #9
  br label %do.end155

do.end155:                                        ; preds = %if.then139, %do.body127
  %ops.i.i255 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i265

do.body.i.i265:                                   ; preds = %do.body.i.i265.do.body.i.i265_crit_edge, %do.end155
  %max.addr.0.i.i256 = phi i32 [ 1000, %do.end155 ], [ %dec.i.i259, %do.body.i.i265.do.body.i.i265_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 2147480) #9
  %90 = ptrtoint ptr %ops.i.i255 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i255, align 4
  %sff_check_status.i.i257 = getelementptr inbounds %struct.ata_port_operations, ptr %91, i32 0, i32 39
  %92 = ptrtoint ptr %sff_check_status.i.i257 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sff_check_status.i.i257, align 4
  %call.i.i258 = tail call zeroext i8 %93(ptr noundef %ap) #9
  %dec.i.i259 = add nsw i32 %max.addr.0.i.i256, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i258)
  %cmp.not.i.i260 = icmp eq i8 %call.i.i258, -1
  %94 = and i8 %call.i.i258, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i261 = icmp eq i8 %94, 0
  %or.cond.i.i262 = or i1 %cmp.not.i.i260, %tobool.not.i.i261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i259)
  %cmp3.not.i.i263 = icmp eq i32 %dec.i.i259, 0
  %or.cond1.i.i264 = select i1 %or.cond.i.i262, i1 true, i1 %cmp3.not.i.i263
  br i1 %or.cond1.i.i264, label %ata_sff_busy_wait.exit.i270, label %do.body.i.i265.do.body.i.i265_crit_edge

do.body.i.i265.do.body.i.i265_crit_edge:          ; preds = %do.body.i.i265
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i265

ata_sff_busy_wait.exit.i270:                      ; preds = %do.body.i.i265
  %conv.i266 = zext i8 %call.i.i258 to i32
  %and.i267 = and i32 %conv.i266, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool.not.i268 = icmp eq i32 %and.i267, 0
  %or.cond.i269 = select i1 %cmp.not.i.i260, i1 true, i1 %tobool.not.i268
  br i1 %or.cond.i269, label %ata_sff_busy_wait.exit.i270.ata_wait_idle.exit274_crit_edge, label %do.body.i271

ata_sff_busy_wait.exit.i270.ata_wait_idle.exit274_crit_edge: ; preds = %ata_sff_busy_wait.exit.i270
  call void @__sanitizer_cov_trace_pc() #11
  br label %ata_wait_idle.exit274

do.body.i271:                                     ; preds = %ata_sff_busy_wait.exit.i270
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then7.i273)) #9
          to label %ata_wait_idle.exit274 [label %if.then7.i273], !srcloc !172

if.then7.i273:                                    ; preds = %do.body.i271
  call void @__sanitizer_cov_trace_pc() #11
  %print_id.i272 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %95 = ptrtoint ptr %print_id.i272 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %print_id.i272, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.61, i32 noundef %96, i32 noundef %conv.i266) #9
  br label %ata_wait_idle.exit274

ata_wait_idle.exit274:                            ; preds = %if.then7.i273, %do.body.i271, %ata_sff_busy_wait.exit.i270.ata_wait_idle.exit274_crit_edge
  %and2.i278 = and i32 %conv.i266, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i278)
  %tobool3.not.i279 = icmp ne i32 %and2.i278, 0
  %..i280 = zext i1 %tobool3.not.i279 to i32
  %retval.0.i281 = select i1 %tobool.not.i268, i32 %..i280, i32 2
  %err_mask158 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %97 = ptrtoint ptr %err_mask158 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %err_mask158, align 4
  %or159 = or i32 %98, %retval.0.i281
  store i32 %or159, ptr %err_mask158, align 4
  tail call void @ata_qc_complete(ptr noundef %qc) #9
  tail call fastcc void @pdc20621_pop_hdma(ptr noundef %qc)
  br label %if.end193

if.then167:                                       ; preds = %entry
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i284

do.body.i284:                                     ; preds = %do.body.i284.do.body.i284_crit_edge, %if.then167
  %max.addr.0.i = phi i32 [ 1000, %if.then167 ], [ %dec.i, %do.body.i284.do.body.i284_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 2147480) #9
  %100 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i, align 4
  %sff_check_status.i = getelementptr inbounds %struct.ata_port_operations, ptr %101, i32 0, i32 39
  %102 = ptrtoint ptr %sff_check_status.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sff_check_status.i, align 4
  %call.i = tail call zeroext i8 %103(ptr noundef %ap) #9
  %dec.i = add nsw i32 %max.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp.not.i = icmp eq i8 %call.i, -1
  %104 = and i8 %call.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i282 = icmp eq i8 %104, 0
  %or.cond.i283 = or i1 %cmp.not.i, %tobool.not.i282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.not.i = icmp eq i32 %dec.i, 0
  %or.cond1.i = select i1 %or.cond.i283, i1 true, i1 %cmp3.not.i
  br i1 %or.cond1.i, label %ata_sff_busy_wait.exit, label %do.body.i284.do.body.i284_crit_edge

do.body.i284.do.body.i284_crit_edge:              ; preds = %do.body.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i284

ata_sff_busy_wait.exit:                           ; preds = %do.body.i284
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc20621_host_intr, %if.then181)) #9
          to label %do.end186 [label %if.then181], !srcloc !172

if.then181:                                       ; preds = %ata_sff_busy_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %print_id182 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %105 = ptrtoint ptr %print_id182 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %print_id182, align 4
  %conv183 = zext i8 %call.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc20621_host_intr.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.58, i32 noundef %106, i32 noundef %conv183) #9
  br label %do.end186

do.end186:                                        ; preds = %if.then181, %ata_sff_busy_wait.exit
  %conv.i285 = zext i8 %call.i to i32
  %and.i286 = and i32 %conv.i285, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i286)
  %tobool.not.i287 = icmp eq i32 %and.i286, 0
  %and2.i288 = and i32 %conv.i285, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i288)
  %tobool3.not.i289 = icmp ne i32 %and2.i288, 0
  %..i290 = zext i1 %tobool3.not.i289 to i32
  %retval.0.i291 = select i1 %tobool.not.i287, i32 %..i290, i32 2
  %err_mask188 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %107 = ptrtoint ptr %err_mask188 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %err_mask188, align 4
  %or189 = or i32 %108, %retval.0.i291
  store i32 %or189, ptr %err_mask188, align 4
  tail call void @ata_qc_complete(ptr noundef %qc) #9
  br label %if.end193

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idle_irq = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 30, i32 1
  %109 = ptrtoint ptr %idle_irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %idle_irq, align 4
  %inc = add i32 %110, 1
  store i32 %inc, ptr %idle_irq, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.else190, %do.end186, %ata_wait_idle.exit274, %do.body97, %if.end.i, %if.then.i252, %ata_wait_idle.exit
  %handled.0 = phi i32 [ 1, %do.end186 ], [ 0, %if.else190 ], [ 1, %ata_wait_idle.exit ], [ 1, %ata_wait_idle.exit274 ], [ 1, %do.body97 ], [ 1, %if.then.i252 ], [ 1, %if.end.i ]
  ret i32 %handled.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc20621_pop_hdma(ptr nocapture noundef readonly %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %hdma_cons = getelementptr inbounds %struct.pdc_host_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hdma_cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdma_cons, align 4
  %hdma_prod = getelementptr inbounds %struct.pdc_host_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %hdma_prod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdma_prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp = icmp eq i32 %9, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %7, 31
  %arrayidx = getelementptr %struct.pdc_host_priv, ptr %5, i32 0, i32 3, i32 %and
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %seq = getelementptr %struct.pdc_host_priv, ptr %5, i32 0, i32 3, i32 %and, i32 1
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq, align 4
  %pkt_ofs = getelementptr %struct.pdc_host_priv, ptr %5, i32 0, i32 3, i32 %and, i32 2
  %15 = ptrtoint ptr %pkt_ofs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_ofs, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %host2.i = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %host2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host2.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %add.ptr3.i = getelementptr i8, ptr %24, i32 787456
  %mul.i = shl i32 %14, 2
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #9, !srcloc !169
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %add.ptr12.i = getelementptr i8, ptr %24, i32 786688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %26) #9, !srcloc !169
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %28 = ptrtoint ptr %hdma_cons to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hdma_cons, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %hdma_cons, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_dimm_test, !1, !"__param_dimm_test", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_sx4.c", i32 82, i32 1}
!2 = !{ptr @__UNIQUE_ID_dimm_testtype290, !1, !"__UNIQUE_ID_dimm_testtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dimm_test291, !4, !"__UNIQUE_ID_dimm_test291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_sx4.c", i32 83, i32 1}
!5 = !{ptr @__initcall__kmod_sata_sx4__314_1446_pdc_sata_pci_driver_init6, !6, !"__initcall__kmod_sata_sx4__314_1446_pdc_sata_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_sx4.c", i32 1446, i32 1}
!7 = !{ptr @__exitcall_pdc_sata_pci_driver_exit, !6, !"__exitcall_pdc_sata_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author315, !9, !"__UNIQUE_ID_author315", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_sx4.c", i32 1448, i32 1}
!10 = !{ptr @__UNIQUE_ID_description316, !11, !"__UNIQUE_ID_description316", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_sx4.c", i32 1449, i32 1}
!12 = !{ptr @__UNIQUE_ID_file317, !13, !"__UNIQUE_ID_file317", i1 false, i1 false}
!13 = !{!"../drivers/ata/sata_sx4.c", i32 1450, i32 1}
!14 = !{ptr @__UNIQUE_ID_license318, !13, !"__UNIQUE_ID_license318", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version319, !16, !"__UNIQUE_ID_version319", i1 false, i1 false}
!16 = !{!"../drivers/ata/sata_sx4.c", i32 1452, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @dimm_test, !22, !"dimm_test", i1 false, i1 false}
!22 = !{!"../drivers/ata/sata_sx4.c", i32 81, i32 12}
!23 = !{ptr @__param_str_dimm_test, !1, !"__param_str_dimm_test", i1 false, i1 false}
!24 = !{ptr @pdc_sata_pci_driver, !25, !"pdc_sata_pci_driver", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_sx4.c", i32 276, i32 26}
!26 = !{ptr @pdc_sata_pci_tbl, !27, !"pdc_sata_pci_tbl", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_sx4.c", i32 270, i32 35}
!28 = distinct !{null, !29, !"__print_once", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_sx4.c", i32 1397, i32 2}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_sx4.c", i32 1427, i32 44}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/sata_sx4.c", i32 1428, i32 44}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_sx4.c", i32 1429, i32 48}
!36 = !{ptr @pdc_port_info, !37, !"pdc_port_info", i1 false, i1 false}
!37 = !{!"../drivers/ata/sata_sx4.c", i32 257, i32 35}
!38 = !{ptr @pdc_20621_ops, !39, !"pdc_20621_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_sx4.c", i32 236, i32 35}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/sata_sx4.c", i32 426, i32 2}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/sata_sx4.c", i32 471, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pdc20621_dma_prep.__UNIQUE_ID_ddebug292, !43, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_sx4.c", i32 505, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pdc20621_nodata_prep.__UNIQUE_ID_ddebug293, !47, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/sata_sx4.c", i32 616, i32 3}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pdc20621_packet_start.__UNIQUE_ID_ddebug295, !51, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ata/sata_sx4.c", i32 627, i32 3}
!56 = !{ptr @pdc20621_packet_start.__UNIQUE_ID_ddebug296, !55, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_sx4.c", i32 588, i32 2}
!59 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pdc20621_dump_hdma.__UNIQUE_ID_ddebug294, !58, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/sata_sx4.c", i32 1231, i32 2}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug303, !62, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/sata_sx4.c", i32 1246, i32 2}
!67 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug304, !66, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/sata_sx4.c", i32 1254, i32 3}
!70 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug305, !69, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_sx4.c", i32 1257, i32 3}
!73 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug306, !72, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/sata_sx4.c", i32 1261, i32 3}
!76 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug307, !75, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/sata_sx4.c", i32 1266, i32 3}
!79 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug308, !78, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/sata_sx4.c", i32 1274, i32 2}
!82 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug309, !81, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ata/sata_sx4.c", i32 1283, i32 3}
!85 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pdc20621_dimm_init._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @pdc20621_dimm_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ata/sata_sx4.c", i32 1286, i32 2}
!91 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug310, !90, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/sata_sx4.c", i32 1290, i32 2}
!94 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug311, !93, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/sata_sx4.c", i32 1294, i32 3}
!97 = !{ptr @pdc20621_dimm_init._entry.29, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pdc20621_dimm_init._entry_ptr.31, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/sata_sx4.c", i32 1313, i32 3}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pdc20621_dimm_init._entry.32, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pdc20621_dimm_init._entry_ptr.35, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/sata_sx4.c", i32 1317, i32 3}
!106 = !{ptr @pdc20621_dimm_init._entry.36, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pdc20621_dimm_init._entry_ptr.38, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/sata_sx4.c", i32 1323, i32 3}
!110 = !{ptr @pdc20621_dimm_init._entry.39, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pdc20621_dimm_init._entry_ptr.41, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/sata_sx4.c", i32 1332, i32 3}
!114 = !{ptr @pdc20621_dimm_init._entry.42, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @pdc20621_dimm_init._entry_ptr.44, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/sata_sx4.c", i32 1339, i32 3}
!118 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug312, !117, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/ata/sata_sx4.c", i32 1351, i32 3}
!121 = !{ptr @pdc20621_dimm_init.__UNIQUE_ID_ddebug313, !120, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!122 = distinct !{null, !123, !"pdc_i2c_read_data", i1 false, i1 false}
!123 = !{!"../drivers/ata/sata_sx4.c", i32 1104, i32 4}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/sata_sx4.c", i32 1182, i32 3}
!126 = !{ptr @pdc20621_prog_dimm_global._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @pdc20621_prog_dimm_global._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/sata_sx4.c", i32 1191, i32 3}
!130 = !{ptr @pdc20621_prog_dimm_global._entry.48, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @pdc20621_prog_dimm_global._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ata/sata_sx4.c", i32 778, i32 4}
!134 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @pdc20621_interrupt.__UNIQUE_ID_ddebug302, !133, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ata/sata_sx4.c", i32 672, i32 4}
!138 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug297, !137, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ata/sata_sx4.c", i32 683, i32 4}
!142 = !{ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug298, !141, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/sata_sx4.c", i32 698, i32 4}
!145 = !{ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug299, !144, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/ata/sata_sx4.c", i32 711, i32 4}
!148 = !{ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug300, !147, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/ata/sata_sx4.c", i32 724, i32 3}
!151 = !{ptr @pdc20621_host_intr.__UNIQUE_ID_ddebug301, !150, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!154 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, !153, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!157 = !{ptr @pdc_sata_sht, !158, !"pdc_sata_sht", i1 false, i1 false}
!158 = !{!"../drivers/ata/sata_sx4.c", i32 229, i32 34}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2155861428}
!169 = !{i64 5016487}
!170 = !{i64 5016905}
!171 = !{i64 2155862135}
!172 = !{i64 2148728185, i64 2148728190, i64 2148728203, i64 2148728247, i64 2148728281, i64 2148728302}
!173 = !{i64 2155864767}
!174 = !{i64 2155865500}
!175 = !{i64 2155866010}
!176 = !{i64 2155884315}
!177 = !{i64 2155885017}
!178 = !{i64 2155851330}
!179 = !{i64 2155852035}
!180 = !{i64 2155852298}
!181 = !{i64 2155853116}
!182 = !{i64 2155853630}
!183 = !{i64 2155854283}
!184 = !{i64 2155854982}
!185 = !{i64 2155855204}
!186 = !{i64 2155855903}
!187 = !{i64 2155857993}
!188 = !{i64 2155858692}
!189 = !{i64 2155860503}
!190 = !{i64 2155861202}
!191 = !{i64 2155905566}
!192 = !{i64 2155905791}
!193 = !{i64 2155906487}
!194 = !{i64 2155906707}
!195 = !{i64 2155907398}
!196 = !{i64 2155908450}
!197 = !{i64 2155908670}
!198 = !{i64 2155909361}
!199 = !{i64 2155830643}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{i64 2155808634, i64 2155809121, i64 2155808671, i64 2155808727, i64 2155808761, i64 2155808785, i64 2155808826, i64 2155808847, i64 2155808875, i64 2155808909}
!202 = !{i64 2155833699}
!203 = !{i64 2155833914}
!204 = !{i64 2155834580}
!205 = !{i64 5016685}
!206 = !{i64 2152556030}
!207 = !{i64 2155835078}
!208 = !{i64 2155835293}
!209 = !{i64 2155835959}
!210 = !{i64 2155836393}
!211 = !{i64 2155837142}
!212 = !{i64 2155837505}
!213 = !{i64 2155838101}
!214 = !{i64 2155785762}
!215 = !{i64 2155786423}
!216 = !{i64 2155789628}
!217 = !{i64 2155790289}
!218 = !{i64 2155800150}
!219 = !{i64 2155798588}
!220 = !{i64 2155799058}
!221 = !{i64 2155799528}
!222 = !{i64 2155800002}
!223 = !{i64 2155793200}
!224 = !{i64 2155793972}
!225 = !{i64 2155794199}
!226 = !{i64 2155794917}
!227 = !{i64 2155803436}
!228 = !{i64 2155804208}
!229 = !{i64 2155804465}
!230 = !{i64 2155805293}
!231 = !{i64 2155845415}
!232 = !{i64 2155846177}
!233 = !{i64 2155846461}
!234 = !{i64 2155847155}
!235 = !{i64 2155847396}
!236 = !{i64 2155848158}
!237 = !{i64 2155848440}
!238 = !{i64 2155849134}
!239 = !{i64 2155849375}
!240 = !{i64 2155850137}
!241 = !{i64 2155850412}
!242 = !{i64 2155851106}
!243 = !{i64 2155839457}
!244 = !{i64 2155840151}
!245 = !{i64 2155840392}
!246 = !{i64 2155841154}
!247 = !{i64 2155841440}
!248 = !{i64 2155842134}
!249 = !{i64 2155842375}
!250 = !{i64 2155843137}
!251 = !{i64 2155843421}
!252 = !{i64 2155844115}
!253 = !{i64 2155844356}
!254 = !{i64 2155845118}
!255 = !{i64 2155813367}
!256 = !{i64 2155813877}
!257 = !{i64 2155817183}
!258 = !{i64 2155817693}
!259 = !{i64 2155821021}
!260 = !{i64 2155821531}
!261 = !{i64 2155821770}
!262 = !{i64 2155822542}
!263 = !{i64 2155822799}
!264 = !{i64 2155823627}
!265 = !{i64 2155826944}
!266 = !{i64 2155827454}
