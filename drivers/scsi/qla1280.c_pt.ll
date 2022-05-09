; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla1280.c_pt.bc'
source_filename = "../drivers/scsi/qla1280.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
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
%struct.qla_fw = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.setup_tokens = type { ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla_boards = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_qla_host = type { ptr, ptr, ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, i32, [512 x ptr], [2 x %struct.bus_param], [8 x i16], i32, ptr, ptr, i16, i16, i32, ptr, ptr, i16, %struct.list_head, ptr, %struct.timer_list, %struct.anon.84, %struct.nvram, i32, i16, i8, i8, i8 }
%struct.bus_param = type { i8, i8, i8, i8, i16, i16, i16, i16, i8 }
%struct.anon.84 = type { i8, [3 x i8] }
%struct.nvram = type { i8, i8, i8, i8, i8, %struct.anon.85, %struct.anon.86, %struct.anon.87, i16, i16, i16, i16, %struct.anon.88, %struct.anon.89, i16, %union.anon.90, i16, [2 x %struct.anon.92], i16, [2 x i16], %union.anon.102, i8 }
%struct.anon.85 = type { i8 }
%struct.anon.86 = type { i8 }
%struct.anon.87 = type { i8 }
%struct.anon.88 = type { i8 }
%struct.anon.89 = type { i8 }
%union.anon.90 = type { i16 }
%struct.anon.92 = type { %struct.anon.93, i8, i8, i8, %struct.anon.94, i8, i16, i16, i16, i16, i16, [16 x %struct.anon.95] }
%struct.anon.93 = type { i8 }
%struct.anon.94 = type { i8 }
%struct.anon.95 = type { %struct.anon.96, i8, i8, %union.anon.97, %union.anon.100, i8 }
%struct.anon.96 = type { i8 }
%union.anon.97 = type { i8 }
%union.anon.100 = type { i8 }
%union.anon.102 = type { i8 }
%struct.device_reg = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [14 x i16], i16, i16, i16, i16, i16, i16, i16, i16, [32 x i16], i16, [5 x i16], i16, i16, [17 x i16], i16 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmd_entry = type { i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cmd_a64_entry_t = type { i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, [12 x i8], [2 x i32], [2 x i32], i32, [2 x i32], i32 }
%struct.cont_entry = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.srb = type { %struct.list_head, ptr, ptr, i32, i8, i8 }
%struct.mrk_entry = type { i8, i8, i8, i8, i32, i8, i8, i8, [53 x i8] }
%struct.response = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, i16, i16, i32, [4 x i16], [32 x i8] }
%struct.firmware = type { i32, ptr, ptr }

@__setup_str_qla1280_setup = internal constant [9 x i8] c"qla1280=\00", section ".init.rodata", align 1
@__setup_qla1280_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_qla1280_setup, ptr @qla1280_setup, i32 0 }, section ".init.setup", align 4
@qla1280_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @qla1280_pci_tbl, ptr @qla1280_probe_one, ptr @qla1280_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@qla1280_fw_tbl = internal global { [3 x %struct.qla_fw], [40 x i8] } { [3 x %struct.qla_fw] [%struct.qla_fw { ptr @.str.165, ptr null }, %struct.qla_fw { ptr @.str.166, ptr null }, %struct.qla_fw { ptr @.str.167, ptr null }], [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_qla1280__287_4393_qla1280_init6 = internal global ptr @qla1280_init, section ".initcall6.init", align 4
@__exitcall_qla1280_exit = internal global ptr @qla1280_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author288 = internal constant [37 x i8] c"qla1280.author=Qlogic & Jes Sorensen\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [62 x i8] c"qla1280.description=Qlogic ISP SCSI (qla1x80/qla1x160) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [34 x i8] c"qla1280.file=drivers/scsi/qla1280\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [20 x i8] c"qla1280.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware292 = internal constant [33 x i8] c"qla1280.firmware=qlogic/1040.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware293 = internal constant [33 x i8] c"qla1280.firmware=qlogic/1280.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [34 x i8] c"qla1280.firmware=qlogic/12160.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [23 x i8] c"qla1280.version=3.27.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla1280\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.27.1\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@driver_setup.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@driver_setup.1 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@driver_setup.2 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@driver_setup.3 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@qla1280_verbose = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@qla1280_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 4091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016qla1280: unknown boot option %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qla1280_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/qla1280.c\00", [41 x i8] zeroinitializer }, align 32
@qla1280_setup._entry_ptr = internal global ptr @qla1280_setup._entry, section ".printk_index", align 4
@setup_token = internal unnamed_addr constant [6 x %struct.setup_tokens] [%struct.setup_tokens { ptr @.str.8, i32 0 }, %struct.setup_tokens { ptr @.str.9, i32 1 }, %struct.setup_tokens { ptr @.str.10, i32 2 }, %struct.setup_tokens { ptr @.str.11, i32 3 }, %struct.setup_tokens { ptr @.str.12, i32 4 }, %struct.setup_tokens { ptr @.str.13, i32 5 }], section ".init.data", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvram\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wide\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ppr\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@qla1280_pci_tbl = internal global { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4215, i32 4630, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 4128, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4215, i32 4224, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4215, i32 4672, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4215, i32 4736, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4215, i32 4118, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ql1280_board_tbl = internal constant { [7 x %struct.qla_boards], [44 x i8] } { [7 x %struct.qla_boards] [%struct.qla_boards { ptr @.str.43, i32 2, i32 2 }, %struct.qla_boards { ptr @.str.44, i32 1, i32 0 }, %struct.qla_boards { ptr @.str.45, i32 1, i32 1 }, %struct.qla_boards { ptr @.str.46, i32 2, i32 1 }, %struct.qla_boards { ptr @.str.47, i32 2, i32 1 }, %struct.qla_boards { ptr @.str.48, i32 1, i32 2 }, %struct.qla_boards { ptr @.str.49, i32 0, i32 -1 }], [44 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 4157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016qla1280: Skipping AMI SubSys Vendor ID Chip\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla1280_probe_one\00", [46 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr = internal global ptr @qla1280_probe_one._entry, section ".printk_index", align 4
@qla1280_probe_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.7, i32 4162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016qla1280: %s found on PCI bus %i, dev %i\0A\00", [53 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.18 = internal global ptr @qla1280_probe_one._entry.16, section ".printk_index", align 4
@qla1280_probe_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.7, i32 4166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014qla1280: Failed to enabled pci device, aborting.\0A\00", [44 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.21 = internal global ptr @qla1280_probe_one._entry.19, section ".printk_index", align 4
@qla1280_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @qla1280_queuecommand, ptr null, ptr null, ptr @.str.50, ptr @qla1280_info, ptr null, ptr null, ptr null, ptr @qla1280_eh_abort, ptr @qla1280_eh_device_reset, ptr null, ptr @qla1280_eh_bus_reset, ptr @qla1280_eh_adapter_reset, ptr null, ptr @qla1280_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qla1280_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 512, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.7, i32 4176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014qla1280: Failed to register host, aborting.\0A\00", [49 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.24 = internal global ptr @qla1280_probe_one._entry.22, section ".printk_index", align 4
@qla1280_probe_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.7, i32 4200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014scsi(%li): Unable to set a suitable DMA mask - aborting\0A\00", [37 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.27 = internal global ptr @qla1280_probe_one._entry.25, section ".printk_index", align 4
@qla1280_probe_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.7, i32 4210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016qla1280: Failed to get request memory\0A\00", [55 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.30 = internal global ptr @qla1280_probe_one._entry.28, section ".printk_index", align 4
@qla1280_probe_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.7, i32 4218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016qla1280: Failed to get response memory\0A\00", [54 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.33 = internal global ptr @qla1280_probe_one._entry.31, section ".printk_index", align 4
@qla1280_probe_one._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.7, i32 4239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016qla1280: Unable to map I/O memory\0A\00", [59 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.36 = internal global ptr @qla1280_probe_one._entry.34, section ".printk_index", align 4
@qla1280_probe_one._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.7, i32 4265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"qla1280 : Failed to reserve interrupt %d already in use\0A\00", [39 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.39 = internal global ptr @qla1280_probe_one._entry.37, section ".printk_index", align 4
@qla1280_probe_one._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.15, ptr @.str.7, i32 4271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016qla1x160: Failed to initialize adapter\0A\00", [54 x i8] zeroinitializer }, align 32
@qla1280_probe_one._entry_ptr.42 = internal global ptr @qla1280_probe_one._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QLA12160\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QLA1040\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QLA1080\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QLA1240\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QLA1280\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QLA10160\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"        \00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Qlogic ISP 1280/12160\00", [42 x i8] zeroinitializer }, align 32
@qla1280_info.qla1280_scsi_name_buffer = internal global { [125 x i8], [35 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"QLogic %s PCI to SCSI Host Adapter\0A       Firmware version: %2d.%02d.%02d, Driver version %s\00", [35 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.7, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016scsi(%li): Resetting Cmnd=0x%p, Handle=0x%p, action=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla1280_error_action\00", [43 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr = internal global ptr @qla1280_error_action._entry, section ".printk_index", align 4
@qla1280_error_action._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.7, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016scsi(%ld:%d:%d:%d): specified command has already completed.\0A\00", [32 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr.56 = internal global ptr @qla1280_error_action._entry.54, section ".printk_index", align 4
@qla1280_error_action._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.7, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016scsi(%ld:%d:%d:%d): Queueing device reset command.\0A\00", [42 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr.59 = internal global ptr @qla1280_error_action._entry.57, section ".printk_index", align 4
@qla1280_error_action._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.7, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016qla1280(%ld:%d): Issued bus reset.\0A\00", [58 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr.62 = internal global ptr @qla1280_error_action._entry.60, section ".printk_index", align 4
@qla1280_error_action._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.7, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016scsi(%ld): Issued ADAPTER RESET\0A\00", [61 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr.65 = internal global ptr @qla1280_error_action._entry.63, section ".printk_index", align 4
@qla1280_error_action._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str.7, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016scsi(%ld): I/O processing will continue automatically\0A\00", [39 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr.68 = internal global ptr @qla1280_error_action._entry.66, section ".printk_index", align 4
@qla1280_error_action._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str.7, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014scsi(%li:%i:%i:%i): Unable to abort command!\0A\00", [48 x i8] zeroinitializer }, align 32
@qla1280_error_action._entry_ptr.71 = internal global ptr @qla1280_error_action._entry.69, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@qla1280_mailbox_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.7, i32 2430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Warning mailbox wait already in use!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla1280_mailbox_command\00", [40 x i8] zeroinitializer }, align 32
@qla1280_mailbox_command._entry_ptr = internal global ptr @qla1280_mailbox_command._entry, section ".printk_index", align 4
@qla1280_mailbox_command.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&ha->mailbox_timer)\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qla1280_mailbox_command._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.7, i32 2473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\014qla1280_mailbox_command: Command failed, mailbox0 = 0x%04x, mailbox_out0 = 0x%04x, istatus = 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@qla1280_mailbox_command._entry_ptr.78 = internal global ptr @qla1280_mailbox_command._entry.76, section ".printk_index", align 4
@qla1280_mailbox_command._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.7, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014m0 %04x, m1 %04x, m2 %04x, m3 %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@qla1280_mailbox_command._entry_ptr.81 = internal global ptr @qla1280_mailbox_command._entry.79, section ".printk_index", align 4
@qla1280_mailbox_command._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.7, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014m4 %04x, m5 %04x, m6 %04x, m7 %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@qla1280_mailbox_command._entry_ptr.84 = internal global ptr @qla1280_mailbox_command._entry.82, section ".printk_index", align 4
@qla1280_mailbox_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.7, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013scsi(%ld): mailbox timed out, mailbox0 %04x, ictrl %04x, istatus %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla1280_mailbox_timeout\00", [40 x i8] zeroinitializer }, align 32
@qla1280_mailbox_timeout._entry_ptr = internal global ptr @qla1280_mailbox_timeout._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qla1280_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.7, i32 3420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014qla1280: ISP invalid handle\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qla1280_isr\00", [20 x i8] zeroinitializer }, align 32
@qla1280_isr._entry_ptr = internal global ptr @qla1280_isr._entry, section ".printk_index", align 4
@qla1280_isr._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.7, i32 3431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017qla1280_isr(): index %i asynchronous BUS_RESET\0A\00", [46 x i8] zeroinitializer }, align 32
@qla1280_isr._entry_ptr.91 = internal global ptr @qla1280_isr._entry.89, section ".printk_index", align 4
@qla1280_isr._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.7, i32 3438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014qla1280: ISP System Error - mbx1=%xh, mbx2=%xh, mbx3=%xh\0A\00", [36 x i8] zeroinitializer }, align 32
@qla1280_isr._entry_ptr.94 = internal global ptr @qla1280_isr._entry.92, section ".printk_index", align 4
@qla1280_isr._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.7, i32 3443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014qla1280: ISP Request Transfer Error\0A\00", [57 x i8] zeroinitializer }, align 32
@qla1280_isr._entry_ptr.97 = internal global ptr @qla1280_isr._entry.95, section ".printk_index", align 4
@qla1280_isr._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.7, i32 3448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014qla1280: ISP Response Transfer Error\0A\00", [56 x i8] zeroinitializer }, align 32
@qla1280_isr._entry_ptr.100 = internal global ptr @qla1280_isr._entry.98, section ".printk_index", align 4
@qla1280_isr._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str.7, i32 3462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016qla1280_isr(): asynchronous BUS_DEVICE_RESET\0A\00", [48 x i8] zeroinitializer }, align 32
@qla1280_isr._entry_ptr.103 = internal global ptr @qla1280_isr._entry.101, section ".printk_index", align 4
@qla1280_status_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.7, i32 3617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014qla1280: Status Entry invalid handle\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla1280_status_entry\00", [43 x i8] zeroinitializer }, align 32
@qla1280_status_entry._entry_ptr = internal global ptr @qla1280_status_entry._entry, section ".printk_index", align 4
@qla1280_return_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.7, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014scsi: Underflow detected - retrying command.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla1280_return_status\00", [42 x i8] zeroinitializer }, align 32
@qla1280_return_status._entry_ptr = internal global ptr @qla1280_return_status._entry, section ".printk_index", align 4
@qla1280_bus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.7, i32 2554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016scsi(%li:%i): Resetting SCSI BUS\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla1280_bus_reset\00", [46 x i8] zeroinitializer }, align 32
@qla1280_bus_reset._entry_ptr = internal global ptr @qla1280_bus_reset._entry, section ".printk_index", align 4
@qla1280_abort_isp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.7, i32 3776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016scsi(%li): dequeuing outstanding commands\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla1280_abort_isp\00", [46 x i8] zeroinitializer }, align 32
@qla1280_abort_isp._entry_ptr = internal global ptr @qla1280_abort_isp._entry, section ".printk_index", align 4
@qla1280_abort_isp._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.7, i32 3811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014qla1280: ISP error recovery failed, board disabled\00", [43 x i8] zeroinitializer }, align 32
@qla1280_abort_isp._entry_ptr.114 = internal global ptr @qla1280_abort_isp._entry.112, section ".printk_index", align 4
@qla1280_chip_diag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.7, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016qla1280: Wrong product ID = 0x%x,0x%x,0x%x,0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla1280_chip_diag\00", [46 x i8] zeroinitializer }, align 32
@qla1280_chip_diag._entry_ptr = internal global ptr @qla1280_chip_diag._entry, section ".printk_index", align 4
@qla1280_chip_diag._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.7, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016qla1280: Failed mbox check\0A\00", [34 x i8] zeroinitializer }, align 32
@qla1280_chip_diag._entry_ptr.119 = internal global ptr @qla1280_chip_diag._entry.117, section ".printk_index", align 4
@qla1280_load_firmware_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.7, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013scsi(%li): Failed to load firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla1280_load_firmware_pio\00", [38 x i8] zeroinitializer }, align 32
@qla1280_load_firmware_pio._entry_ptr = internal global ptr @qla1280_load_firmware_pio._entry, section ".printk_index", align 4
@qla1280_firmware_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.127, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @qla1280_firmware_mutex, i64 52), ptr getelementptr (i8, ptr @qla1280_firmware_mutex, i64 52) }, ptr @qla1280_firmware_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.128, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@qla1280_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.7, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to load image \22%s\22 err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla1280_request_firmware\00", [39 x i8] zeroinitializer }, align 32
@qla1280_request_firmware._entry_ptr = internal global ptr @qla1280_request_firmware._entry, section ".printk_index", align 4
@qla1280_request_firmware._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.7, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Invalid firmware length %zu in image \22%s\22\0A\00", [51 x i8] zeroinitializer }, align 32
@qla1280_request_firmware._entry_ptr.126 = internal global ptr @qla1280_request_firmware._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla1280_firmware_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla1280_firmware_mutex\00", [41 x i8] zeroinitializer }, align 32
@qla1280_load_firmware_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.7, i32 1771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013scsi(%li): Failed to load partial segment of f\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla1280_load_firmware_dma\00", [38 x i8] zeroinitializer }, align 32
@qla1280_load_firmware_dma._entry_ptr = internal global ptr @qla1280_load_firmware_dma._entry, section ".printk_index", align 4
@qla1280_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.7, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013scsi(%li): RISC checksum failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla1280_start_firmware\00", [41 x i8] zeroinitializer }, align 32
@qla1280_start_firmware._entry_ptr = internal global ptr @qla1280_start_firmware._entry, section ".printk_index", align 4
@qla1280_start_firmware._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.7, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013scsi(%li): Failed to start firmware\0A\00", [57 x i8] zeroinitializer }, align 32
@qla1280_start_firmware._entry_ptr.135 = internal global ptr @qla1280_start_firmware._entry.133, section ".printk_index", align 4
@qla1280_set_target_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.7, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014scsi(%ld:%i:%i): qla1280_set_target_parameters() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla1280_set_target_parameters\00", [34 x i8] zeroinitializer }, align 32
@qla1280_set_target_parameters._entry_ptr = internal global ptr @qla1280_set_target_parameters._entry, section ".printk_index", align 4
@qla1280_get_target_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.7, i32 3903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016scsi(%li:%d:%d:%d):\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla1280_get_target_parameters\00", [34 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr = internal global ptr @qla1280_get_target_parameters._entry, section ".printk_index", align 4
@qla1280_get_target_parameters._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.7, i32 3907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\01c Sync: period %d, offset %d\00", [34 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr.142 = internal global ptr @qla1280_get_target_parameters._entry.140, section ".printk_index", align 4
@qla1280_get_target_parameters._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.7, i32 3909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c, Wide\00", [23 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr.145 = internal global ptr @qla1280_get_target_parameters._entry.143, section ".printk_index", align 4
@qla1280_get_target_parameters._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.7, i32 3911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c, DT\00", [25 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr.148 = internal global ptr @qla1280_get_target_parameters._entry.146, section ".printk_index", align 4
@qla1280_get_target_parameters._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.139, ptr @.str.7, i32 3913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c Async\00", [23 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr.151 = internal global ptr @qla1280_get_target_parameters._entry.149, section ".printk_index", align 4
@qla1280_get_target_parameters._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.139, ptr @.str.7, i32 3916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\01c, Tagged queuing: depth %d\00", [35 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr.154 = internal global ptr @qla1280_get_target_parameters._entry.152, section ".printk_index", align 4
@qla1280_get_target_parameters._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.139, ptr @.str.7, i32 3917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@qla1280_get_target_parameters._entry_ptr.157 = internal global ptr @qla1280_get_target_parameters._entry.155, section ".printk_index", align 4
@qla1280_initialize_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.7, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013scsi(%li): initialize: pci probe failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla1280_initialize_adapter\00", [37 x i8] zeroinitializer }, align 32
@qla1280_initialize_adapter._entry_ptr = internal global ptr @qla1280_initialize_adapter._entry, section ".printk_index", align 4
@qla1280_read_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.7, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016scsi(%ld): Reading NVRAM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla1280_read_nvram\00", [45 x i8] zeroinitializer }, align 32
@qla1280_read_nvram._entry_ptr = internal global ptr @qla1280_read_nvram._entry, section ".printk_index", align 4
@qla1280_read_nvram._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.7, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014scsi(%ld): Unable to identify or validate NVRAM checksum, using default settings\0A\00", [44 x i8] zeroinitializer }, align 32
@qla1280_read_nvram._entry_ptr.164 = internal global ptr @qla1280_read_nvram._entry.162, section ".printk_index", align 4
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qlogic/1040.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qlogic/1280.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qlogic/12160.bin\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65536]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65536]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65536]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 16, i64 4118, i64 4630]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 16, i64 4118, i64 4630]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.174 = internal global [11 x i64] [i64 9, i64 16, i64 32769, i64 32770, i64 32771, i64 32772, i64 32773, i64 32774, i64 32775, i64 32782, i64 32800]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@__sancov_gen_cov_switch_values.176 = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 21]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 4118, i64 4630]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 16, i64 4118, i64 4630]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 16, i64 4118, i64 4630]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 16, i64 4128, i64 4672]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 16, i64 4118, i64 4630]
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"qla1280_pci_driver\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4344, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"qla1280_fw_tbl\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 537, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4402, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4054, i32 20 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4057, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"driver_setup.0\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"driver_setup.1\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"driver_setup.2\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"driver_setup.3\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"qla1280_verbose\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 554, i32 12 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4090, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4028, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4029, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4030, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4031, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4032, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4033, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"qla1280_pci_tbl\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 511, i32 29 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"ql1280_board_tbl\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 544, i32 26 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4156, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4161, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4165, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [24 x i8] c"qla1280_driver_template\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4127, i32 34 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4175, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4199, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4210, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4218, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4239, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4264, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4271, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 545, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 546, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 547, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 548, i32 11 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 549, i32 11 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 550, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 551, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 4130, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant [25 x i8] c"qla1280_scsi_name_buffer\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 663, i32 14 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 674, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 844, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 866, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 888, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 900, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 911, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 914, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 939, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 87, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2430, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2454, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2470, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2474, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2477, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 737, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3419, i32 6 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3430, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3435, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3442, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3447, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3461, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3617, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1362, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 2553, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3775, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3810, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1616, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1648, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1689, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant [23 x i8] c"qla1280_firmware_mutex\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1514, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1520, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 528, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1770, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1831, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1841, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1159, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3903, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3906, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3909, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3911, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3913, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3916, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 3917, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1445, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 589, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 621, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 538, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 539, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.674 = private constant [26 x i8] c"../drivers/scsi/qla1280.c\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 540, i32 3 }
@llvm.compiler.used = appending global [233 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_firmware292, ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_version295, ptr @__exitcall_qla1280_exit, ptr @__initcall__kmod_qla1280__287_4393_qla1280_init6, ptr @__modver_attr, ptr @__setup_qla1280_setup, ptr @qla1280_abort_isp._entry, ptr @qla1280_abort_isp._entry.112, ptr @qla1280_abort_isp._entry_ptr, ptr @qla1280_abort_isp._entry_ptr.114, ptr @qla1280_bus_reset._entry, ptr @qla1280_bus_reset._entry_ptr, ptr @qla1280_chip_diag._entry, ptr @qla1280_chip_diag._entry.117, ptr @qla1280_chip_diag._entry_ptr, ptr @qla1280_chip_diag._entry_ptr.119, ptr @qla1280_error_action._entry, ptr @qla1280_error_action._entry.54, ptr @qla1280_error_action._entry.57, ptr @qla1280_error_action._entry.60, ptr @qla1280_error_action._entry.63, ptr @qla1280_error_action._entry.66, ptr @qla1280_error_action._entry.69, ptr @qla1280_error_action._entry_ptr, ptr @qla1280_error_action._entry_ptr.56, ptr @qla1280_error_action._entry_ptr.59, ptr @qla1280_error_action._entry_ptr.62, ptr @qla1280_error_action._entry_ptr.65, ptr @qla1280_error_action._entry_ptr.68, ptr @qla1280_error_action._entry_ptr.71, ptr @qla1280_exit, ptr @qla1280_get_target_parameters._entry, ptr @qla1280_get_target_parameters._entry.140, ptr @qla1280_get_target_parameters._entry.143, ptr @qla1280_get_target_parameters._entry.146, ptr @qla1280_get_target_parameters._entry.149, ptr @qla1280_get_target_parameters._entry.152, ptr @qla1280_get_target_parameters._entry.155, ptr @qla1280_get_target_parameters._entry_ptr, ptr @qla1280_get_target_parameters._entry_ptr.142, ptr @qla1280_get_target_parameters._entry_ptr.145, ptr @qla1280_get_target_parameters._entry_ptr.148, ptr @qla1280_get_target_parameters._entry_ptr.151, ptr @qla1280_get_target_parameters._entry_ptr.154, ptr @qla1280_get_target_parameters._entry_ptr.157, ptr @qla1280_initialize_adapter._entry, ptr @qla1280_initialize_adapter._entry_ptr, ptr @qla1280_isr._entry, ptr @qla1280_isr._entry.101, ptr @qla1280_isr._entry.89, ptr @qla1280_isr._entry.92, ptr @qla1280_isr._entry.95, ptr @qla1280_isr._entry.98, ptr @qla1280_isr._entry_ptr, ptr @qla1280_isr._entry_ptr.100, ptr @qla1280_isr._entry_ptr.103, ptr @qla1280_isr._entry_ptr.91, ptr @qla1280_isr._entry_ptr.94, ptr @qla1280_isr._entry_ptr.97, ptr @qla1280_load_firmware_dma._entry, ptr @qla1280_load_firmware_dma._entry_ptr, ptr @qla1280_load_firmware_pio._entry, ptr @qla1280_load_firmware_pio._entry_ptr, ptr @qla1280_mailbox_command._entry, ptr @qla1280_mailbox_command._entry.76, ptr @qla1280_mailbox_command._entry.79, ptr @qla1280_mailbox_command._entry.82, ptr @qla1280_mailbox_command._entry_ptr, ptr @qla1280_mailbox_command._entry_ptr.78, ptr @qla1280_mailbox_command._entry_ptr.81, ptr @qla1280_mailbox_command._entry_ptr.84, ptr @qla1280_mailbox_timeout._entry, ptr @qla1280_mailbox_timeout._entry_ptr, ptr @qla1280_probe_one._entry, ptr @qla1280_probe_one._entry.16, ptr @qla1280_probe_one._entry.19, ptr @qla1280_probe_one._entry.22, ptr @qla1280_probe_one._entry.25, ptr @qla1280_probe_one._entry.28, ptr @qla1280_probe_one._entry.31, ptr @qla1280_probe_one._entry.34, ptr @qla1280_probe_one._entry.37, ptr @qla1280_probe_one._entry.40, ptr @qla1280_probe_one._entry_ptr, ptr @qla1280_probe_one._entry_ptr.18, ptr @qla1280_probe_one._entry_ptr.21, ptr @qla1280_probe_one._entry_ptr.24, ptr @qla1280_probe_one._entry_ptr.27, ptr @qla1280_probe_one._entry_ptr.30, ptr @qla1280_probe_one._entry_ptr.33, ptr @qla1280_probe_one._entry_ptr.36, ptr @qla1280_probe_one._entry_ptr.39, ptr @qla1280_probe_one._entry_ptr.42, ptr @qla1280_read_nvram._entry, ptr @qla1280_read_nvram._entry.162, ptr @qla1280_read_nvram._entry_ptr, ptr @qla1280_read_nvram._entry_ptr.164, ptr @qla1280_request_firmware._entry, ptr @qla1280_request_firmware._entry.124, ptr @qla1280_request_firmware._entry_ptr, ptr @qla1280_request_firmware._entry_ptr.126, ptr @qla1280_return_status._entry, ptr @qla1280_return_status._entry_ptr, ptr @qla1280_set_target_parameters._entry, ptr @qla1280_set_target_parameters._entry_ptr, ptr @qla1280_setup._entry, ptr @qla1280_setup._entry_ptr, ptr @qla1280_start_firmware._entry, ptr @qla1280_start_firmware._entry.133, ptr @qla1280_start_firmware._entry_ptr, ptr @qla1280_start_firmware._entry_ptr.135, ptr @qla1280_status_entry._entry, ptr @qla1280_status_entry._entry_ptr, ptr @qla1280_pci_driver, ptr @qla1280_fw_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @driver_setup.0, ptr @driver_setup.1, ptr @driver_setup.2, ptr @driver_setup.3, ptr @qla1280_verbose, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @qla1280_pci_tbl, ptr @ql1280_board_tbl, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @qla1280_driver_template, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @qla1280_info.qla1280_scsi_name_buffer, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @init_completion.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @qla1280_mailbox_command.__key, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @qla1280_firmware_mutex, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_fw_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_setup.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_setup.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_setup.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_setup.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_pci_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql1280_board_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_probe_one._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_info.qla1280_scsi_name_buffer to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_error_action._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_mailbox_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_mailbox_command.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_mailbox_command._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_mailbox_command._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_mailbox_command._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_mailbox_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_isr._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_isr._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_isr._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_isr._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_isr._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_status_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_return_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_bus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_abort_isp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_abort_isp._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_chip_diag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_chip_diag._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_load_firmware_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_firmware_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_request_firmware._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_load_firmware_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_start_firmware._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_set_target_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_get_target_parameters._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_initialize_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_read_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla1280_read_nvram._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_setup(ptr noundef %s) #0 section ".init.text" align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #11
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr, align 4, !annotation !335
  %tobool.not74 = icmp eq ptr %s, null
  br i1 %tobool.not74, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %sw.epilog.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %cp.075 = phi ptr [ %incdec.ptr56, %sw.epilog.land.rhs_crit_edge ], [ %s, %entry.land.rhs_crit_edge ]
  %call = call ptr @strchr(ptr noundef nonnull %cp.075, i32 noundef 58)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %incdec.ptr, ptr %ptr, align 4
  %call2 = call i32 @strcmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(4) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call, i32 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %ptr, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %call4 = call i32 @strcmp(ptr noundef %incdec.ptr, ptr noundef nonnull dereferenceable(3) @.str.4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr7 = getelementptr i8, ptr %call, i32 3
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr7, ptr %ptr, align 4
  br label %if.end10

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call i32 @simple_strtoul(ptr noundef %incdec.ptr, ptr noundef nonnull %ptr, i32 noundef 0) #11
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6, %if.then
  %val.0 = phi i32 [ %call9, %if.else8 ], [ 0, %if.then6 ], [ 65536, %if.then ]
  %call11 = call fastcc i32 @qla1280_get_token(ptr noundef nonnull %cp.075)
  %4 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb25
    i32 3, label %sw.bb38
    i32 4, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool12.not = icmp eq i32 %val.0, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %bf.load = load i8, ptr @driver_setup.0, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr @driver_setup.0, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end10
  %5 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %val.0, label %if.then22 [
    i32 0, label %if.then17
    i32 65536, label %sw.bb15.sw.epilog_crit_edge
  ]

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then17:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %bf.load18 = load i8, ptr @driver_setup.0, align 4
  %bf.set20 = or i8 %bf.load18, -128
  store i8 %bf.set20, ptr @driver_setup.0, align 4
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %val.0 to i16
  store i16 %conv, ptr @driver_setup.1, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end10
  %6 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %val.0, label %if.then34 [
    i32 0, label %if.then27
    i32 65536, label %sw.bb25.sw.epilog_crit_edge
  ]

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %bf.load28 = load i8, ptr @driver_setup.0, align 4
  %bf.set30 = or i8 %bf.load28, 64
  store i8 %bf.set30, ptr @driver_setup.0, align 4
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %conv35 = trunc i32 %val.0 to i16
  store i16 %conv35, ptr @driver_setup.2, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end10
  %7 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %val.0, label %if.then47 [
    i32 0, label %if.then40
    i32 65536, label %sw.bb38.sw.epilog_crit_edge
  ]

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %bf.load41 = load i8, ptr @driver_setup.0, align 4
  %bf.set43 = or i8 %bf.load41, 32
  store i8 %bf.set43, ptr @driver_setup.0, align 4
  br label %sw.epilog

if.then47:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %conv48 = trunc i32 %val.0 to i16
  store i16 %conv48, ptr @driver_setup.3, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %val.0, ptr @qla1280_verbose, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %cp.075) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb51, %if.then47, %if.then40, %sw.bb38.sw.epilog_crit_edge, %if.then34, %if.then27, %sw.bb25.sw.epilog_crit_edge, %if.then22, %if.then17, %sw.bb15.sw.epilog_crit_edge, %if.then13, %sw.bb.sw.epilog_crit_edge
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptr, align 4
  %call53 = call ptr @strchr(ptr noundef %9, i32 noundef 59)
  %tobool54.not = icmp eq ptr %call53, null
  %incdec.ptr56 = getelementptr i8, ptr %call53, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr56, null
  %or.cond = or i1 %tobool54.not, %tobool.not
  br i1 %or.cond, label %sw.epilog.while.end_crit_edge, label %sw.epilog.land.rhs_crit_edge

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #11
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qla1280_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @qla1280_pci_driver) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %fw = getelementptr [3 x %struct.qla_fw], ptr @qla1280_fw_tbl, i32 0, i32 %i.06, i32 1
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %1) #11
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @qla1280_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla1280_get_token(ptr noundef %str) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strchr(ptr noundef %str, i32 noundef 58)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %for.cond.preheader

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.preheader:                               ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %str to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.setup_tokens], ptr @setup_token, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %str, i32 noundef %sub.ptr.sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %val = getelementptr [6 x %struct.setup_tokens], ptr @setup_token, i32 0, i32 %i.013, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  br label %if.end5

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.if.end5_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %if.then3, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %3, %if.then3 ], [ -1, %entry.if.end5_crit_edge ], [ -1, %for.inc.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_probe_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #6 align 64 {
entry:
  %mb.i.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4126, i16 %3)
  %cmp = icmp eq i16 %3, 4126
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  br label %cleanup

do.end4:                                          ; preds = %entry
  %arrayidx = getelementptr [7 x %struct.qla_boards], ptr @ql1280_board_tbl, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 4
  %conv6 = zext i8 %9 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %10 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %11, 3
  %and = and i32 %shr, 31
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %5, i32 noundef %conv6, i32 noundef %and) #15
  %call8 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %call16 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @qla1280_driver_template, i32 noundef 2496) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  br label %error_disable_device

if.end24:                                         ; preds = %if.end15
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 53
  %12 = call ptr @memset(ptr %hostdata, i32 0, i32 2496)
  %pdev25 = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 2, i32 1
  %13 = ptrtoint ptr %pdev25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdev, ptr %pdev25, align 4
  %conv26 = trunc i32 %1 to i8
  %devnum27 = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 3
  %14 = ptrtoint ptr %devnum27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv26, ptr %devnum27, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call29 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 2
  %15 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %16) #15
  br label %error_put_host

if.end37:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev25, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %request_dma = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 16384, ptr noundef %request_dma, i32 noundef 3264, i32 noundef 0) #11
  %request_ring = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %request_ring to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %request_ring, align 4
  %tobool42.not = icmp eq ptr %call.i, null
  br i1 %tobool42.not, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %error_put_host

if.end49:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev25, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %response_dma = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %call.i193 = tail call ptr @dma_alloc_attrs(ptr noundef %dev51, i32 noundef 4096, ptr noundef %response_dma, i32 noundef 3264, i32 noundef 0) #11
  %response_ring = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %response_ring to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i193, ptr %response_ring, align 4
  %tobool54.not = icmp eq ptr %call.i193, null
  br i1 %tobool54.not, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #15
  br label %error_free_request_ring

if.end61:                                         ; preds = %if.end49
  %numPorts = getelementptr [7 x %struct.qla_boards], ptr @ql1280_board_tbl, i32 0, i32 %1, i32 1
  %23 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numPorts, align 4
  %conv62 = trunc i32 %24 to i8
  %ports = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 8
  %25 = ptrtoint ptr %ports to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv62, ptr %ports, align 2
  %26 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %hostdata, align 4
  %host_no64 = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 17
  %27 = ptrtoint ptr %host_no64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host_no64, align 4
  %host_no65 = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 2
  %29 = ptrtoint ptr %host_no65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %host_no65, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %irq66 = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 47
  %32 = ptrtoint ptr %irq66 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irq66, align 8
  %sub = add i32 %24, -1
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 20
  %33 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %max_channel, align 8
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 22
  %34 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 7, ptr %max_lun, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 21
  %35 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %max_id, align 4
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 30
  %36 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1024, ptr %max_sectors, align 8
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 23
  %37 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %28, ptr %unique_id, align 8
  %38 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev25, align 4
  %call70 = tail call ptr @pci_ioremap_bar(ptr noundef %39, i32 noundef 1) #11
  %mmpbase = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 1, i32 1
  %40 = ptrtoint ptr %mmpbase to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call70, ptr %mmpbase, align 4
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %do.end76, label %if.end79

do.end76:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %error_free_response_ring

if.end79:                                         ; preds = %if.end61
  %41 = ptrtoint ptr %call70 to i32
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 43
  %42 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %base, align 4
  %iobase = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 1
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call70, ptr %iobase, align 4
  %done_q = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 7
  %44 = ptrtoint ptr %done_q to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %done_q, ptr %done_q, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %done_q, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase, align 4
  %ictrl.i = getelementptr inbounds %struct.device_reg, ptr %47, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i, i16 0) #11, !srcloc !337
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase, align 4
  %ictrl2.i = getelementptr inbounds %struct.device_reg, ptr %49, i32 0, i32 4
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i) #11, !srcloc !338
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %call.i194 = tail call i32 @request_threaded_irq(i32 noundef %52, ptr noundef nonnull @qla1280_intr_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool84.not = icmp eq i32 %call.i194, 0
  br i1 %tobool84.not, label %if.end92, label %do.end88

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %54) #15
  br label %error_release_region

if.end92:                                         ; preds = %if.end79
  %flags1.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 23
  %55 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i = load volatile i32, ptr %flags1.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 2147483647
  store volatile i32 %bf.clear.i, ptr %flags1.i, align 4
  %bf.load3.i = load volatile i32, ptr %flags1.i, align 4
  %bf.clear4.i = and i32 %bf.load3.i, -536870913
  store volatile i32 %bf.clear4.i, ptr %flags1.i, align 4
  %bf.load7.i = load volatile i32, ptr %flags1.i, align 4
  %bf.clear8.i = and i32 %bf.load7.i, -268435457
  store volatile i32 %bf.clear8.i, ptr %flags1.i, align 4
  %bf.load11.i = load volatile i32, ptr %flags1.i, align 4
  %bf.clear12.i = and i32 %bf.load11.i, -134217729
  store volatile i32 %bf.clear12.i, ptr %flags1.i, align 4
  %56 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev25, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4128, i16 %59)
  %cmp.i = icmp eq i16 %59, 4128
  br i1 %cmp.i, label %if.then.i, label %if.end92.do.end20.i_crit_edge

if.end92.do.end20.i_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

if.then.i:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %bf.load15.i = load i8, ptr @driver_setup.0, align 4
  %bf.set17.i = or i8 %bf.load15.i, 16
  store i8 %bf.set17.i, ptr @driver_setup.0, align 4
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then.i, %if.end92.do.end20.i_crit_edge
  %60 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @arm_heavy_mb() #11
  %semaphore.i = getelementptr inbounds %struct.device_reg, ptr %61, i32 0, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %semaphore.i, i16 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  tail call void @arm_heavy_mb() #11
  %host_cmd.i = getelementptr inbounds %struct.device_reg, ptr %61, i32 0, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i, i16 112) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i, i16 96) #11, !srcloc !337
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_cmd.i) #11, !srcloc !338
  %bf.load.i.i = load i8, ptr @driver_setup.0, align 4
  %63 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i, label %do.end3.i.i, label %do.end20.i.qla1280_read_nvram.exit.i_crit_edge

do.end20.i.qla1280_read_nvram.exit.i_crit_edge:   ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_read_nvram.exit.i

do.end3.i.i:                                      ; preds = %do.end20.i
  %64 = ptrtoint ptr %host_no65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %host_no65, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %65) #15
  %nvram.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28
  %call5.i.i = tail call fastcc zeroext i16 @qla1280_get_nvram_word(ptr noundef %hostdata, i32 noundef 0) #11
  %66 = ptrtoint ptr %nvram.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %call5.i.i, ptr %nvram.i.i, align 2
  %67 = trunc i16 %call5.i.i to i8
  %68 = lshr i16 %call5.i.i, 8
  %69 = trunc i16 %68 to i8
  %add11.i.i = add i8 %69, %67
  %incdec.ptr.i.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 2
  %call5.1.i.i = tail call fastcc zeroext i16 @qla1280_get_nvram_word(ptr noundef %hostdata, i32 noundef 1) #11
  %70 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %call5.1.i.i, ptr %incdec.ptr.i.i, align 2
  %71 = trunc i16 %call5.1.i.i to i8
  %conv7.1.i.i = add i8 %add11.i.i, %71
  %72 = lshr i16 %call5.1.i.i, 8
  %73 = trunc i16 %72 to i8
  %add11.1.i.i = add i8 %conv7.1.i.i, %73
  %incdec.ptr.1.i.i = getelementptr %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 24
  %call5.2.i.i = tail call fastcc zeroext i16 @qla1280_get_nvram_word(ptr noundef %hostdata, i32 noundef 2) #11
  %74 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %call5.2.i.i, ptr %incdec.ptr.1.i.i, align 2
  %75 = trunc i16 %call5.2.i.i to i8
  %conv7.2.i.i = add i8 %add11.1.i.i, %75
  %76 = lshr i16 %call5.2.i.i, 8
  %77 = trunc i16 %76 to i8
  %add11.2.i.i = add i8 %conv7.2.i.i, %77
  %incdec.ptr.2.i.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 6
  %78 = ptrtoint ptr %nvram.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nvram.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %79)
  %cmp14.not.i.i = icmp eq i8 %79, 73
  br i1 %cmp14.not.i.i, label %lor.lhs.false.i.i, label %do.end3.i.i.if.then60.i.i_crit_edge

do.end3.i.i.if.then60.i.i_crit_edge:              ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.i

lor.lhs.false.i.i:                                ; preds = %do.end3.i.i
  %id1.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 1
  %80 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %id1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %81)
  %cmp17.not.i.i = icmp eq i8 %81, 83
  br i1 %cmp17.not.i.i, label %lor.lhs.false19.i.i, label %lor.lhs.false.i.i.if.then60.i.i_crit_edge

lor.lhs.false.i.i.if.then60.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.i

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false.i.i
  %82 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %83)
  %cmp21.not.i.i = icmp eq i8 %83, 80
  br i1 %cmp21.not.i.i, label %lor.lhs.false23.i.i, label %lor.lhs.false19.i.i.if.then60.i.i_crit_edge

lor.lhs.false19.i.i.if.then60.i.i_crit_edge:      ; preds = %lor.lhs.false19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.i

lor.lhs.false23.i.i:                              ; preds = %lor.lhs.false19.i.i
  %id3.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 3
  %84 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %id3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %85)
  %cmp25.not.i.i = icmp eq i8 %85, 32
  br i1 %cmp25.not.i.i, label %lor.lhs.false27.i.i, label %lor.lhs.false23.i.i.if.then60.i.i_crit_edge

lor.lhs.false23.i.i.if.then60.i.i_crit_edge:      ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.i

lor.lhs.false27.i.i:                              ; preds = %lor.lhs.false23.i.i
  %86 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp29.i.i = icmp eq i8 %87, 0
  br i1 %cmp29.i.i, label %lor.lhs.false27.i.i.if.then60.i.i_crit_edge, label %lor.lhs.false27.i.i.for.body38.i.i_crit_edge

lor.lhs.false27.i.i.for.body38.i.i_crit_edge:     ; preds = %lor.lhs.false27.i.i
  br label %for.body38.i.i

lor.lhs.false27.i.i.if.then60.i.i_crit_edge:      ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.i

for.body38.i.i:                                   ; preds = %for.body38.i.i.for.body38.i.i_crit_edge, %lor.lhs.false27.i.i.for.body38.i.i_crit_edge
  %wptr.19.i.i = phi ptr [ %incdec.ptr51.i.i, %for.body38.i.i.for.body38.i.i_crit_edge ], [ %incdec.ptr.2.i.i, %lor.lhs.false27.i.i.for.body38.i.i_crit_edge ]
  %cnt.18.i.i = phi i32 [ %inc53.i.i, %for.body38.i.i.for.body38.i.i_crit_edge ], [ 3, %lor.lhs.false27.i.i.for.body38.i.i_crit_edge ]
  %chksum.17.i.i = phi i8 [ %add49.i.i, %for.body38.i.i.for.body38.i.i_crit_edge ], [ %add11.2.i.i, %lor.lhs.false27.i.i.for.body38.i.i_crit_edge ]
  %call39.i.i = tail call fastcc zeroext i16 @qla1280_get_nvram_word(ptr noundef %hostdata, i32 noundef %cnt.18.i.i) #11
  %88 = ptrtoint ptr %wptr.19.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %call39.i.i, ptr %wptr.19.i.i, align 2
  %89 = trunc i16 %call39.i.i to i8
  %conv44.i.i = add i8 %chksum.17.i.i, %89
  %90 = lshr i16 %call39.i.i, 8
  %91 = trunc i16 %90 to i8
  %add49.i.i = add i8 %conv44.i.i, %91
  %incdec.ptr51.i.i = getelementptr i16, ptr %wptr.19.i.i, i32 1
  %inc53.i.i = add nuw nsw i32 %cnt.18.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc53.i.i, 256
  br i1 %exitcond.not.i.i, label %do.end58.i.i, label %for.body38.i.i.for.body38.i.i_crit_edge

for.body38.i.i.for.body38.i.i_crit_edge:          ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38.i.i

do.end58.i.i:                                     ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add49.i.i)
  %phi.cmp.i.i = icmp eq i8 %add49.i.i, 0
  br i1 %phi.cmp.i.i, label %do.end58.i.i.if.end76.i.i_crit_edge, label %do.end58.i.i.if.then60.i.i_crit_edge

do.end58.i.i.if.then60.i.i_crit_edge:             ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.i

do.end58.i.i.if.end76.i.i_crit_edge:              ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i.i

if.then60.i.i:                                    ; preds = %do.end58.i.i.if.then60.i.i_crit_edge, %lor.lhs.false27.i.i.if.then60.i.i_crit_edge, %lor.lhs.false23.i.i.if.then60.i.i_crit_edge, %lor.lhs.false19.i.i.if.then60.i.i_crit_edge, %lor.lhs.false.i.i.if.then60.i.i_crit_edge, %do.end3.i.i.if.then60.i.i_crit_edge
  %bf.load61.i.i = load i8, ptr @driver_setup.0, align 4
  %92 = and i8 %bf.load61.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool65.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool65.not.i.i, label %do.end69.i.i, label %if.then60.i.i.if.end76.i.i_crit_edge

if.then60.i.i.if.end76.i.i_crit_edge:             ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i.i

do.end69.i.i:                                     ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %host_no65 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %host_no65, align 4
  %call72.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %94) #15
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %do.end69.i.i, %if.then60.i.i.if.end76.i.i_crit_edge, %do.end58.i.i.if.end76.i.i_crit_edge
  %.sink.i.i = phi i32 [ 0, %do.end69.i.i ], [ 0, %if.then60.i.i.if.end76.i.i_crit_edge ], [ 1, %do.end58.i.i.if.end76.i.i_crit_edge ]
  %nvram_valid75.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 2, i32 3, i32 0, i32 0, i32 3
  %95 = ptrtoint ptr %nvram_valid75.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink.i.i, ptr %nvram_valid75.i.i, align 4
  %isp_parameter.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 14
  %96 = ptrtoint ptr %isp_parameter.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %isp_parameter.i.i, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #11
  %99 = ptrtoint ptr %isp_parameter.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %isp_parameter.i.i, align 2
  %firmware_feature.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 26
  %100 = ptrtoint ptr %firmware_feature.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %firmware_feature.i.i, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #11
  %103 = ptrtoint ptr %firmware_feature.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %firmware_feature.i.i, align 2
  %selection_timeout.i.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 0, i32 6
  %104 = ptrtoint ptr %selection_timeout.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %selection_timeout.i.i, align 2
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #11
  %107 = ptrtoint ptr %selection_timeout.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %selection_timeout.i.i, align 2
  %max_queue_depth.i.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 0, i32 7
  %108 = ptrtoint ptr %max_queue_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %max_queue_depth.i.i, align 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #11
  %111 = ptrtoint ptr %max_queue_depth.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %max_queue_depth.i.i, align 2
  %selection_timeout.1.i.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 1, i32 6
  %112 = ptrtoint ptr %selection_timeout.1.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %selection_timeout.1.i.i, align 2
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #11
  %115 = ptrtoint ptr %selection_timeout.1.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %selection_timeout.1.i.i, align 2
  %max_queue_depth.1.i.i = getelementptr %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 31, i32 0, i32 0, i32 3
  %116 = ptrtoint ptr %max_queue_depth.1.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %max_queue_depth.1.i.i, align 2
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #11
  %119 = ptrtoint ptr %max_queue_depth.1.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %max_queue_depth.1.i.i, align 2
  br label %qla1280_read_nvram.exit.i

qla1280_read_nvram.exit.i:                        ; preds = %if.end76.i.i, %do.end20.i.qla1280_read_nvram.exit.i_crit_edge
  %120 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hostdata, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %host_lock.i, align 4
  %call44.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %123) #11
  %call49.i = tail call fastcc i32 @qla1280_load_firmware(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %do.end60.i, label %do.end54.i

do.end54.i:                                       ; preds = %qla1280_read_nvram.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %host_no65 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %host_no65, align 4
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %125) #15
  br label %qla1280_initialize_adapter.exit

do.end60.i:                                       ; preds = %qla1280_read_nvram.exit.i
  tail call fastcc void @qla1280_nvram_config(ptr noundef %hostdata) #11
  %126 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load63.i = load volatile i32, ptr %flags1.i, align 4
  %127 = and i32 %bf.load63.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool65.not.i = icmp eq i32 %127, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %do.end60.i.qla1280_initialize_adapter.exit_crit_edge

do.end60.i.qla1280_initialize_adapter.exit_crit_edge: ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_initialize_adapter.exit

if.end67.i:                                       ; preds = %do.end60.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i.i) #11
  %128 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 1
  %129 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 2
  %130 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 3
  %131 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 4
  %132 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 6
  %133 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 7
  %outstanding_cmds.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 3, i32 0, i32 0, i32 4
  %134 = getelementptr inbounds i8, ptr %mb.i.i, i32 10
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %134, align 2
  %136 = call ptr @memset(ptr %outstanding_cmds.i.i, i32 0, i32 2048)
  %137 = ptrtoint ptr %request_ring to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %request_ring, align 4
  %request_ring_ptr.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %139 = ptrtoint ptr %request_ring_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %request_ring_ptr.i.i, align 4
  %req_ring_index.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %req_ring_index.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %req_ring_index.i.i, align 4
  %req_q_cnt.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 19
  %141 = ptrtoint ptr %req_q_cnt.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 255, ptr %req_q_cnt.i.i, align 2
  %142 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 82, ptr %mb.i.i, align 2
  %143 = ptrtoint ptr %128 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 255, ptr %128, align 2
  %144 = ptrtoint ptr %request_dma to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %request_dma, align 4
  %conv.i.i = trunc i32 %145 to i16
  %146 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i.i, ptr %130, align 2
  %shr.i.i = lshr i32 %145, 16
  %conv5.i.i = trunc i32 %shr.i.i to i16
  %147 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv5.i.i, ptr %129, align 2
  %148 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %131, align 2
  %149 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %133, align 2
  %150 = ptrtoint ptr %132 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %132, align 2
  %call.i136.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext -33, ptr noundef nonnull %mb.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool.not.i137.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool.not.i137.i, label %qla1280_init_rings.exit.i, label %qla1280_init_rings.exit.thread.i

qla1280_init_rings.exit.thread.i:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i.i) #11
  br label %qla1280_initialize_adapter.exit

qla1280_init_rings.exit.i:                        ; preds = %if.end67.i
  %151 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %response_ring, align 4
  %response_ring_ptr.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %153 = ptrtoint ptr %response_ring_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %response_ring_ptr.i.i, align 4
  %rsp_ring_index.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 6
  %154 = ptrtoint ptr %rsp_ring_index.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %rsp_ring_index.i.i, align 4
  %155 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 83, ptr %mb.i.i, align 2
  %156 = ptrtoint ptr %128 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 63, ptr %128, align 2
  %157 = ptrtoint ptr %response_dma to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %response_dma, align 4
  %conv24.i.i = trunc i32 %158 to i16
  %159 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv24.i.i, ptr %130, align 2
  %shr27.i.i = lshr i32 %158, 16
  %conv29.i.i = trunc i32 %shr27.i.i to i16
  %160 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv29.i.i, ptr %129, align 2
  %161 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %134, align 2
  %162 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %133, align 2
  %163 = ptrtoint ptr %132 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %132, align 2
  %call45.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext -17, ptr noundef nonnull %mb.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool69.not.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool69.not.i, label %for.cond.preheader.i, label %qla1280_init_rings.exit.i.qla1280_initialize_adapter.exit_crit_edge

qla1280_init_rings.exit.i.qla1280_initialize_adapter.exit_crit_edge: ; preds = %qla1280_init_rings.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_initialize_adapter.exit

for.cond.preheader.i:                             ; preds = %qla1280_init_rings.exit.i
  %164 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp73141.not.i = icmp eq i8 %165, 0
  br i1 %cmp73141.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %bus.0142.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %disable_scsi_reset.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 13, i32 %bus.0142.i, i32 8
  %166 = ptrtoint ptr %disable_scsi_reset.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load75.i = load i8, ptr %disable_scsi_reset.i, align 2
  %167 = and i8 %bf.load75.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool78.not.i = icmp eq i8 %167, 0
  br i1 %tobool78.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call79.i = tail call fastcc i32 @qla1280_bus_reset(ptr noundef %hostdata, i32 noundef %bus.0142.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true81.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true81.i:                                ; preds = %land.lhs.true.i
  %call82.i = tail call fastcc i32 @qla1280_bus_reset(ptr noundef %hostdata, i32 noundef %bus.0142.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %land.lhs.true81.i.for.inc.i_crit_edge, label %if.then84.i

land.lhs.true81.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then84.i:                                      ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %disable_scsi_reset.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load87.i = load i8, ptr %disable_scsi_reset.i, align 2
  %bf.set89.i = or i8 %bf.load87.i, 32
  store i8 %bf.set89.i, ptr %disable_scsi_reset.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then84.i, %land.lhs.true81.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %bus.0142.i, 1
  %169 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ports, align 2
  %conv72.i = zext i8 %170 to i32
  %cmp73.i = icmp ult i32 %inc.i, %conv72.i
  br i1 %cmp73.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %171 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %bf.load92.i = load volatile i32, ptr %flags1.i, align 4
  %bf.set94.i = or i32 %bf.load92.i, -2147483648
  store volatile i32 %bf.set94.i, ptr %flags1.i, align 4
  br label %qla1280_initialize_adapter.exit

qla1280_initialize_adapter.exit:                  ; preds = %for.end.i, %qla1280_init_rings.exit.i.qla1280_initialize_adapter.exit_crit_edge, %qla1280_init_rings.exit.thread.i, %do.end60.i.qla1280_initialize_adapter.exit_crit_edge, %do.end54.i
  %status.0.i = phi i32 [ 1, %do.end54.i ], [ %call45.i.i, %qla1280_init_rings.exit.i.qla1280_initialize_adapter.exit_crit_edge ], [ 0, %for.end.i ], [ 1, %do.end60.i.qla1280_initialize_adapter.exit_crit_edge ], [ 1, %qla1280_init_rings.exit.thread.i ]
  %172 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hostdata, align 4
  %host_lock96.i = getelementptr inbounds %struct.Scsi_Host, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %host_lock96.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %host_lock96.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %175, i32 noundef %call44.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool94.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool94.not, label %if.end101, label %do.end98

do.end98:                                         ; preds = %qla1280_initialize_adapter.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  br label %error_free_irq

if.end101:                                        ; preds = %qla1280_initialize_adapter.exit
  %bus_settings = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 1, i32 50, i32 12, i32 10, i32 1, i32 1
  %176 = ptrtoint ptr %bus_settings to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bus_settings, align 4
  %conv104 = zext i8 %177 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call16, i32 0, i32 25
  %178 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv104, ptr %this_id, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %179 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call16, ptr %driver_data.i.i, align 4
  %call.i196 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call16, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool107.not = icmp eq i32 %call.i196, 0
  br i1 %tobool107.not, label %if.end109, label %error_disable_adapter

if.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_scan_host(ptr noundef %call16) #11
  br label %cleanup

error_disable_adapter:                            ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %180 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %iobase, align 4
  %ictrl.i198 = getelementptr inbounds %struct.device_reg, ptr %181, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i198, i16 0) #11, !srcloc !337
  %182 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iobase, align 4
  %ictrl2.i199 = getelementptr inbounds %struct.device_reg, ptr %183, i32 0, i32 4
  %184 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i199) #11, !srcloc !338
  br label %error_free_irq

error_free_irq:                                   ; preds = %error_disable_adapter, %do.end98
  %error.0 = phi i32 [ -19, %do.end98 ], [ %call.i196, %error_disable_adapter ]
  %185 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %irq, align 4
  %call111 = tail call ptr @free_irq(i32 noundef %186, ptr noundef %hostdata) #11
  br label %error_release_region

error_release_region:                             ; preds = %error_free_irq, %do.end88
  %error.1 = phi i32 [ -19, %do.end88 ], [ %error.0, %error_free_irq ]
  %187 = ptrtoint ptr %mmpbase to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmpbase, align 4
  tail call void @iounmap(ptr noundef %188) #11
  br label %error_free_response_ring

error_free_response_ring:                         ; preds = %error_release_region, %do.end76
  %error.2 = phi i32 [ %error.1, %error_release_region ], [ -19, %do.end76 ]
  %189 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pdev25, align 4
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  %191 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %response_ring, align 4
  %193 = ptrtoint ptr %response_dma to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %response_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev114, i32 noundef 4096, ptr noundef %192, i32 noundef %194, i32 noundef 0) #11
  br label %error_free_request_ring

error_free_request_ring:                          ; preds = %error_free_response_ring, %do.end58
  %error.3 = phi i32 [ %error.2, %error_free_response_ring ], [ -12, %do.end58 ]
  %195 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pdev25, align 4
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 44
  %197 = ptrtoint ptr %request_ring to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %request_ring, align 4
  %199 = ptrtoint ptr %request_dma to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %request_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev118, i32 noundef 16384, ptr noundef %198, i32 noundef %200, i32 noundef 0) #11
  br label %error_put_host

error_put_host:                                   ; preds = %error_free_request_ring, %do.end46, %do.end34
  %error.4 = phi i32 [ -19, %do.end34 ], [ %error.3, %error_free_request_ring ], [ -12, %do.end46 ]
  tail call void @scsi_host_put(ptr noundef nonnull %call16) #11
  br label %error_disable_device

error_disable_device:                             ; preds = %error_put_host, %do.end21
  %error.5 = phi i32 [ %error.4, %error_put_host ], [ -12, %do.end21 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %error_disable_device, %if.end109, %do.end12, %do.end
  %retval.0 = phi i32 [ 0, %if.end109 ], [ -19, %do.end ], [ -19, %do.end12 ], [ %error.5, %error_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla1280_remove_one(ptr noundef %pdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void @scsi_remove_host(ptr noundef %1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %iobase.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %ictrl.i = getelementptr inbounds %struct.device_reg, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i, i16 0) #11, !srcloc !337
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %ictrl2.i = getelementptr inbounds %struct.device_reg, ptr %5, i32 0, i32 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i) #11, !srcloc !338
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %hostdata) #11
  %mmpbase = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %mmpbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmpbase, align 4
  tail call void @iounmap(ptr noundef %10) #11
  %pdev2 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2, i32 1
  %11 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev2, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %request_ring = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %request_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %request_ring, align 4
  %request_dma = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %request_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %request_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %14, i32 noundef %16, i32 noundef 0) #11
  %17 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev2, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %response_ring = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %response_ring, align 4
  %response_dma = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %response_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %response_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef 4096, ptr noundef %20, i32 noundef %22, i32 noundef 0) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  tail call void @scsi_host_put(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_intr_handler(i32 noundef %irq, ptr noundef %dev_id) #6 align 64 {
entry:
  %ret.i = alloca i16, align 2
  %ret2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #11
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %isr_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isr_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %isr_count, align 4
  %iobase = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %ictrl.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i, i16 0) #11, !srcloc !337
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %ictrl2.i = getelementptr inbounds %struct.device_reg, ptr %11, i32 0, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i) #11, !srcloc !338
  %istatus = getelementptr inbounds %struct.device_reg, ptr %7, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret.i)
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store volatile i16 -1, ptr %ret.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret2.i)
  %14 = ptrtoint ptr %ret2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store volatile i16 -1, ptr %ret2.i, align 2
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store volatile i16 %16, ptr %ret.i, align 2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #11
  %20 = ptrtoint ptr %ret2.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store volatile i16 %19, ptr %ret2.i, align 2
  %21 = ptrtoint ptr %ret.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i = load volatile i16, ptr %ret.i, align 2
  %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i = load volatile i16, ptr %ret2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i, i16 %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i)
  %cmp.i = icmp eq i16 %ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i, %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i
  br i1 %cmp.i, label %entry.qla1280_debounce_register.exit_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.qla1280_debounce_register.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !343
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #11
  %24 = ptrtoint ptr %ret.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store volatile i16 %23, ptr %ret.i, align 2
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #11
  %27 = ptrtoint ptr %ret2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store volatile i16 %26, ptr %ret2.i, align 2
  %28 = ptrtoint ptr %ret.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %ret.i.0.ret.i.0.ret.0.ret.0.ret.0.28.i = load volatile i16, ptr %ret.i, align 2
  %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0.26.i = load volatile i16, ptr %ret2.i, align 2
  %cmp22.not.i = icmp eq i16 %ret.i.0.ret.i.0.ret.0.ret.0.ret.0.28.i, %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0.26.i
  br i1 %cmp22.not.i, label %do.body.i.qla1280_debounce_register.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i.qla1280_debounce_register.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit

qla1280_debounce_register.exit:                   ; preds = %do.body.i.qla1280_debounce_register.exit_crit_edge, %entry.qla1280_debounce_register.exit_crit_edge
  %29 = ptrtoint ptr %ret.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %ret.i.0.ret.i.0.ret.0.ret.0.retval.0.i = load volatile i16, ptr %ret.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret2.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret.i)
  %30 = and i16 %ret.i.0.ret.i.0.ret.0.ret.0.retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not = icmp eq i16 %30, 0
  br i1 %tobool.not, label %qla1280_debounce_register.exit.if.end_crit_edge, label %if.then

qla1280_debounce_register.exit.if.end_crit_edge:  ; preds = %qla1280_debounce_register.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %qla1280_debounce_register.exit
  call void @__sanitizer_cov_trace_pc() #13
  %done_q = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 24
  tail call fastcc void @qla1280_isr(ptr noundef %dev_id, ptr noundef %done_q)
  br label %if.end

if.end:                                           ; preds = %if.then, %qla1280_debounce_register.exit.if.end_crit_edge
  %done_q1 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 24
  %31 = ptrtoint ptr %done_q1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %done_q1, align 4
  %cmp.i21.not = icmp eq ptr %32, %done_q1
  br i1 %cmp.i21.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @qla1280_done(ptr noundef %dev_id)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %host_lock7 = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %host_lock7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_lock7, align 4
  tail call void @_raw_spin_unlock(ptr noundef %36) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase, align 4
  %ictrl.i23 = getelementptr inbounds %struct.device_reg, ptr %38, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i23, i16 1536) #11, !srcloc !337
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase, align 4
  %ictrl2.i24 = getelementptr inbounds %struct.device_reg, ptr %40, i32 0, i32 4
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i24) #11, !srcloc !338
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %cmd2.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd, ptr %cmd2.i, align 4
  %flags.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 5
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flags.i, align 4
  %wait.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 3
  %8 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %wait.i, align 4
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 23
  %9 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %host_scribble.i, align 4
  %iobase.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 1
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i.i, align 4
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 4
  br i1 %cmp.i.i, label %if.then5.i.i, label %entry.if.end16.i.i_crit_edge

entry.if.end16.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add nsw i32 %call.i.i, -4
  %sub.i.i.frozen = freeze i32 %sub.i.i
  %div343.i.i = udiv i32 %sub.i.i.frozen, 7
  %12 = mul i32 %div343.i.i, 7
  %rem344.i.i.decomposed = sub i32 %sub.i.i.frozen, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem344.i.i.decomposed)
  %tobool7.not.i.i = icmp eq i32 %rem344.i.i.decomposed, 0
  %spec.select.v.i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  %spec.select.i.i = add nuw nsw i32 %spec.select.v.i.i, %div343.i.i
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then5.i.i, %entry.if.end16.i.i_crit_edge
  %req_cnt.0.i.i = phi i32 [ %spec.select.i.i, %if.then5.i.i ], [ 1, %entry.if.end16.i.i_crit_edge ]
  %add17.i.i = add nuw nsw i32 %req_cnt.0.i.i, 2
  %req_q_cnt.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 19
  %13 = ptrtoint ptr %req_q_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %req_q_cnt.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.i, i32 %conv.i.i)
  %cmp18.not.i.i = icmp ult i32 %add17.i.i, %conv.i.i
  br i1 %cmp18.not.i.i, label %if.end16.i.i.do.end43.i.i_crit_edge, label %if.then20.i.i

if.end16.i.i.do.end43.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mailbox4.i.i = getelementptr inbounds %struct.device_reg, ptr %11, i32 0, i32 37
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox4.i.i) #11, !srcloc !338
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  %req_ring_index.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %req_ring_index.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %req_ring_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp24.i.i = icmp ugt i16 %16, %18
  %sub36.sink.p.v.i.i = select i1 %cmp24.i.i, i16 0, i16 255
  %sub36.sink.p.i.i = sub i16 %16, %18
  %sub36.sink.i.i = add i16 %sub36.sink.p.i.i, %sub36.sink.p.v.i.i
  %19 = ptrtoint ptr %req_q_cnt.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %sub36.sink.i.i, ptr %req_q_cnt.i.i, align 2
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %if.then20.i.i, %if.end16.i.i.do.end43.i.i_crit_edge
  %20 = ptrtoint ptr %req_q_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %req_q_cnt.i.i, align 2
  %conv46.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.i, i32 %conv46.i.i)
  %cmp47.not.i.i = icmp ult i32 %add17.i.i, %conv46.i.i
  br i1 %cmp47.not.i.i, label %do.end43.i.i.land.rhs.i.i_crit_edge, label %do.end43.i.i.qla1280_queuecommand_lck.exit_crit_edge

do.end43.i.i.qla1280_queuecommand_lck.exit_crit_edge: ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_queuecommand_lck.exit

do.end43.i.i.land.rhs.i.i_crit_edge:              ; preds = %do.end43.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %do.end43.i.i.land.rhs.i.i_crit_edge
  %cnt.0346.i.i = phi i32 [ %add65.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %do.end43.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.scsi_qla_host, ptr %hostdata.i, i32 0, i32 12, i32 %cnt.0346.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %23, null
  %add65.i.i = add nuw nsw i32 %cnt.0346.i.i, 1
  br i1 %tobool56.not.i.i, label %if.end64.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.rhs.i.i
  %exitcond.not.i.i = icmp eq i32 %add65.i.i, 512
  br i1 %exitcond.not.i.i, label %for.inc.i.i.qla1280_queuecommand_lck.exit_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

for.inc.i.i.qla1280_queuecommand_lck.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_queuecommand_lck.exit

if.end64.i.i:                                     ; preds = %land.rhs.i.i
  %24 = inttoptr i32 %add65.i.i to ptr
  %25 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd2.i, align 4
  %host_scribble.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %26, i32 0, i32 23
  %27 = ptrtoint ptr %host_scribble.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %host_scribble.i.i, align 4
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %SCp.i, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %req_q_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %req_q_cnt.i.i, align 2
  %31 = trunc i32 %req_cnt.0.i.i to i16
  %conv72.i.i = sub i16 %30, %31
  store i16 %conv72.i.i, ptr %req_q_cnt.i.i, align 2
  %request_ring_ptr.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %32 = ptrtoint ptr %request_ring_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %request_ring_ptr.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %33, align 4
  %conv73.i.i = trunc i32 %req_cnt.0.i.i to i8
  %entry_count.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv73.i.i, ptr %entry_count.i.i, align 1
  %req_ring_index74.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %req_ring_index74.i.i, align 4
  %conv75.i.i = trunc i16 %37 to i8
  %sys_define.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 2
  %38 = ptrtoint ptr %sys_define.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv75.i.i, ptr %sys_define.i.i, align 2
  %entry_status.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 3
  %39 = ptrtoint ptr %entry_status.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %entry_status.i.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %cnt.0346.i.i) #11
  %handle.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 4
  %41 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %handle.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 8
  %42 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 56)
  %timeout.i.i = getelementptr i8, ptr %cmd, i32 -164
  %43 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timeout.i.i, align 4
  %div77.i.i = udiv i32 %44, 100
  %conv78.i.i = trunc i32 %div77.i.i to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv78.i.i) #11
  %timeout79.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 10
  %46 = ptrtoint ptr %timeout79.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %timeout79.i.i, align 4
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun.i.i, align 8
  %conv80.i.i = trunc i64 %50 to i8
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv80.i.i, ptr %add.ptr.i.i, align 4
  %52 = load ptr, ptr %device.i, align 4
  %channel.i.i = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 17
  %53 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool83.not.i.i = icmp eq i32 %54, 0
  %id86.i.i = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 16
  %55 = ptrtoint ptr %id86.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id86.i.i, align 8
  %or.i.i = or i32 %56, 128
  %cond.i.i = select i1 %tobool83.not.i.i, i32 %56, i32 %or.i.i
  %conv87.i.i = trunc i32 %cond.i.i to i8
  %target.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 6
  %57 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv87.i.i, ptr %target.i.i, align 1
  %58 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device.i, align 4
  %simple_tags.i.i = getelementptr inbounds %struct.scsi_device, ptr %59, i32 0, i32 41
  %60 = ptrtoint ptr %simple_tags.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %bf.load.i.i = load i64, ptr %simple_tags.i.i, align 4
  %61 = and i64 %bf.load.i.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool89.not.i.i = icmp eq i64 %61, 0
  br i1 %tobool89.not.i.i, label %if.end64.i.i.if.end94.i.i_crit_edge, label %if.then90.i.i

if.end64.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94.i.i

if.then90.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %control_flags.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 8
  %62 = ptrtoint ptr %control_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %control_flags.i.i, align 4
  %64 = or i16 %63, 2048
  store i16 %64, ptr %control_flags.i.i, align 4
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.then90.i.i, %if.end64.i.i.if.end94.i.i_crit_edge
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %65 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %cmd_len.i.i, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #11
  %cdb_len.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 7
  %68 = ptrtoint ptr %cdb_len.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %cdb_len.i.i, align 2
  %scsi_cdb.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 12
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %69 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmnd.i.i, align 4
  %71 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cmd_len.i.i, align 4
  %conv96.i.i = zext i16 %72 to i32
  %73 = call ptr @memcpy(ptr %scsi_cdb.i.i, ptr %70, i32 %conv96.i.i)
  %sc_data_direction.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %74 = ptrtoint ptr %sc_data_direction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sc_data_direction.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %76 = icmp ult i32 %75, 3
  %switch.idx.cast = trunc i32 %75 to i16
  %switch.idx.mult = mul i16 %switch.idx.cast, -8192
  %switch.offset = add i16 %switch.idx.mult, 24576
  %retval.0.i.i.i = select i1 %76, i16 %switch.offset, i16 0
  %control_flags101.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 8
  %77 = ptrtoint ptr %control_flags101.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %control_flags101.i.i, align 4
  %or103338.i.i = or i16 %78, %retval.0.i.i.i
  store i16 %or103338.i.i, ptr %control_flags101.i.i, align 4
  %conv105.i.i = trunc i32 %call.i.i to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv105.i.i) #11
  %dseg_count.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 11
  %80 = ptrtoint ptr %dseg_count.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %dseg_count.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp116347.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp116347.i.i, label %if.end94.i.i.do.end196.i.i_crit_edge, label %if.end122.preheader.i.i

if.end94.i.i.do.end196.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196.i.i

if.end122.preheader.i.i:                          ; preds = %if.end94.i.i
  %81 = add nsw i32 %call.i.i, -1
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %81, i32 3) #11
  %dseg_0_address.i.i = getelementptr inbounds %struct.cmd_entry, ptr %33, i32 0, i32 13
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %82 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sdb.i.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_address.i.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #11
  %incdec.ptr.i.i = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 14
  %87 = ptrtoint ptr %dseg_0_address.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dseg_0_address.i.i, align 4
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %83, i32 0, i32 4
  %88 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_length.i.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #11
  %91 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %incdec.ptr.i.i, align 4
  %call129.i.i = tail call ptr @sg_next(ptr noundef %83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i.i)
  %exitcond365.i.i = icmp eq i32 %umin.i.i, 0
  br i1 %exitcond365.i.i, label %if.end122.preheader.i.i.while.cond.preheader.i.i_crit_edge, label %if.end122.i.i.1

if.end122.preheader.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %if.end122.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.end122.i.i.3, %if.end122.i.i.2.while.cond.preheader.i.i_crit_edge, %if.end122.i.i.1.while.cond.preheader.i.i_crit_edge, %if.end122.preheader.i.i.while.cond.preheader.i.i_crit_edge
  %call129.i.i.lcssa = phi ptr [ %call129.i.i, %if.end122.preheader.i.i.while.cond.preheader.i.i_crit_edge ], [ %call129.i.i.1, %if.end122.i.i.1.while.cond.preheader.i.i_crit_edge ], [ %call129.i.i.2, %if.end122.i.i.2.while.cond.preheader.i.i_crit_edge ], [ %call129.i.i.3, %if.end122.i.i.3 ]
  %92 = sub i32 %81, %umin.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp134360.i.i = icmp sgt i32 %92, 0
  br i1 %cmp134360.i.i, label %while.body.lr.ph.i.i, label %while.cond.preheader.i.i.do.end196.i.i_crit_edge

while.cond.preheader.i.i.do.end196.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %request_ring.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  br label %while.body.i.i

if.end122.i.i.1:                                  ; preds = %if.end122.preheader.i.i
  %incdec.ptr123.i.i = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 15
  %dma_address.i.i.1 = getelementptr inbounds %struct.scatterlist, ptr %call129.i.i, i32 0, i32 3
  %93 = ptrtoint ptr %dma_address.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_address.i.i.1, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #11
  %incdec.ptr.i.i.1 = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 16
  %96 = ptrtoint ptr %incdec.ptr123.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %incdec.ptr123.i.i, align 4
  %dma_length.i.i.1 = getelementptr inbounds %struct.scatterlist, ptr %call129.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %dma_length.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_length.i.i.1, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #11
  %100 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %incdec.ptr.i.i.1, align 4
  %call129.i.i.1 = tail call ptr @sg_next(ptr noundef %call129.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i.i)
  %exitcond365.i.i.1 = icmp eq i32 %umin.i.i, 1
  br i1 %exitcond365.i.i.1, label %if.end122.i.i.1.while.cond.preheader.i.i_crit_edge, label %if.end122.i.i.2

if.end122.i.i.1.while.cond.preheader.i.i_crit_edge: ; preds = %if.end122.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i.i

if.end122.i.i.2:                                  ; preds = %if.end122.i.i.1
  %incdec.ptr123.i.i.1 = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 17
  %dma_address.i.i.2 = getelementptr inbounds %struct.scatterlist, ptr %call129.i.i.1, i32 0, i32 3
  %101 = ptrtoint ptr %dma_address.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dma_address.i.i.2, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #11
  %incdec.ptr.i.i.2 = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 18
  %104 = ptrtoint ptr %incdec.ptr123.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %incdec.ptr123.i.i.1, align 4
  %dma_length.i.i.2 = getelementptr inbounds %struct.scatterlist, ptr %call129.i.i.1, i32 0, i32 4
  %105 = ptrtoint ptr %dma_length.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_length.i.i.2, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #11
  %108 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %incdec.ptr.i.i.2, align 4
  %call129.i.i.2 = tail call ptr @sg_next(ptr noundef %call129.i.i.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i.i)
  %exitcond365.i.i.2 = icmp eq i32 %umin.i.i, 2
  br i1 %exitcond365.i.i.2, label %if.end122.i.i.2.while.cond.preheader.i.i_crit_edge, label %if.end122.i.i.3

if.end122.i.i.2.while.cond.preheader.i.i_crit_edge: ; preds = %if.end122.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i.i

if.end122.i.i.3:                                  ; preds = %if.end122.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr123.i.i.2 = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 19
  %dma_address.i.i.3 = getelementptr inbounds %struct.scatterlist, ptr %call129.i.i.2, i32 0, i32 3
  %109 = ptrtoint ptr %dma_address.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_address.i.i.3, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #11
  %incdec.ptr.i.i.3 = getelementptr %struct.cmd_entry, ptr %33, i32 0, i32 20
  %112 = ptrtoint ptr %incdec.ptr123.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %incdec.ptr123.i.i.2, align 4
  %dma_length.i.i.3 = getelementptr inbounds %struct.scatterlist, ptr %call129.i.i.2, i32 0, i32 4
  %113 = ptrtoint ptr %dma_length.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma_length.i.i.3, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #11
  %116 = ptrtoint ptr %incdec.ptr.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %incdec.ptr.i.i.3, align 4
  %call129.i.i.3 = tail call ptr @sg_next(ptr noundef %call129.i.i.2) #11
  br label %while.cond.preheader.i.i

while.body.i.i:                                   ; preds = %for.end175.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %remseg.1362.i.i = phi i32 [ %92, %while.body.lr.ph.i.i ], [ %sub176.i.i, %for.end175.i.i.while.body.i.i_crit_edge ]
  %s.1361.i.i = phi ptr [ %call129.i.i.lcssa, %while.body.lr.ph.i.i ], [ %call174.i.i.lcssa, %for.end175.i.i.while.body.i.i_crit_edge ]
  %117 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %req_ring_index74.i.i, align 4
  %inc137.i.i = add i16 %118, 1
  store i16 %inc137.i.i, ptr %req_ring_index74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %inc137.i.i)
  %cmp140.i.i = icmp eq i16 %inc137.i.i, 255
  br i1 %cmp140.i.i, label %if.then142.i.i, label %if.else145.i.i

if.then142.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %req_ring_index74.i.i, align 4
  %120 = ptrtoint ptr %request_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %request_ring.i.i, align 4
  br label %if.end163.preheader.i.i

if.else145.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %request_ring_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %request_ring_ptr.i.i, align 4
  %incdec.ptr147.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %123, i32 1
  br label %if.end163.preheader.i.i

if.end163.preheader.i.i:                          ; preds = %if.else145.i.i, %if.then142.i.i
  %storemerge339.i.i = phi ptr [ %incdec.ptr147.i.i, %if.else145.i.i ], [ %121, %if.then142.i.i ]
  %124 = ptrtoint ptr %request_ring_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %storemerge339.i.i, ptr %request_ring_ptr.i.i, align 4
  %125 = call ptr @memset(ptr %storemerge339.i.i, i32 0, i32 64)
  %126 = ptrtoint ptr %storemerge339.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 2, ptr %storemerge339.i.i, align 4
  %entry_count151.i.i = getelementptr inbounds %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %entry_count151.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %entry_count151.i.i, align 1
  %128 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %req_ring_index74.i.i, align 4
  %conv153.i.i = trunc i16 %129 to i8
  %sys_define154.i.i = getelementptr inbounds %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 2
  %130 = ptrtoint ptr %sys_define154.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv153.i.i, ptr %sys_define154.i.i, align 2
  %131 = add nsw i32 %remseg.1362.i.i, -1
  %umin366.i.i = tail call i32 @llvm.umin.i32(i32 %131, i32 6) #11
  %dseg_0_address155.i.i = getelementptr inbounds %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 5
  %dma_address164.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.1361.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %dma_address164.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dma_address164.i.i, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #11
  %incdec.ptr166.i.i = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 6
  %135 = ptrtoint ptr %dseg_0_address155.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %dseg_0_address155.i.i, align 4
  %dma_length167.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.1361.i.i, i32 0, i32 4
  %136 = ptrtoint ptr %dma_length167.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dma_length167.i.i, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #11
  %139 = ptrtoint ptr %incdec.ptr166.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %incdec.ptr166.i.i, align 4
  %call174.i.i = tail call ptr @sg_next(ptr noundef %s.1361.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin366.i.i)
  %exitcond367.i.i = icmp eq i32 %umin366.i.i, 0
  br i1 %exitcond367.i.i, label %if.end163.preheader.i.i.for.end175.i.i_crit_edge, label %if.end163.i.i.1

if.end163.preheader.i.i.for.end175.i.i_crit_edge: ; preds = %if.end163.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175.i.i

if.end163.i.i.1:                                  ; preds = %if.end163.preheader.i.i
  %incdec.ptr168.i.i = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 7
  %dma_address164.i.i.1 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i, i32 0, i32 3
  %140 = ptrtoint ptr %dma_address164.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dma_address164.i.i.1, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #11
  %incdec.ptr166.i.i.1 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 8
  %143 = ptrtoint ptr %incdec.ptr168.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %incdec.ptr168.i.i, align 4
  %dma_length167.i.i.1 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i, i32 0, i32 4
  %144 = ptrtoint ptr %dma_length167.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dma_length167.i.i.1, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #11
  %147 = ptrtoint ptr %incdec.ptr166.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %incdec.ptr166.i.i.1, align 4
  %call174.i.i.1 = tail call ptr @sg_next(ptr noundef %call174.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin366.i.i)
  %exitcond367.i.i.1 = icmp eq i32 %umin366.i.i, 1
  br i1 %exitcond367.i.i.1, label %if.end163.i.i.1.for.end175.i.i_crit_edge, label %if.end163.i.i.2

if.end163.i.i.1.for.end175.i.i_crit_edge:         ; preds = %if.end163.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175.i.i

if.end163.i.i.2:                                  ; preds = %if.end163.i.i.1
  %incdec.ptr168.i.i.1 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 9
  %dma_address164.i.i.2 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.1, i32 0, i32 3
  %148 = ptrtoint ptr %dma_address164.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dma_address164.i.i.2, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #11
  %incdec.ptr166.i.i.2 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 10
  %151 = ptrtoint ptr %incdec.ptr168.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %incdec.ptr168.i.i.1, align 4
  %dma_length167.i.i.2 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.1, i32 0, i32 4
  %152 = ptrtoint ptr %dma_length167.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_length167.i.i.2, align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #11
  %155 = ptrtoint ptr %incdec.ptr166.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %incdec.ptr166.i.i.2, align 4
  %call174.i.i.2 = tail call ptr @sg_next(ptr noundef %call174.i.i.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin366.i.i)
  %exitcond367.i.i.2 = icmp eq i32 %umin366.i.i, 2
  br i1 %exitcond367.i.i.2, label %if.end163.i.i.2.for.end175.i.i_crit_edge, label %if.end163.i.i.3

if.end163.i.i.2.for.end175.i.i_crit_edge:         ; preds = %if.end163.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175.i.i

if.end163.i.i.3:                                  ; preds = %if.end163.i.i.2
  %incdec.ptr168.i.i.2 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 11
  %dma_address164.i.i.3 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.2, i32 0, i32 3
  %156 = ptrtoint ptr %dma_address164.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dma_address164.i.i.3, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #11
  %incdec.ptr166.i.i.3 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 12
  %159 = ptrtoint ptr %incdec.ptr168.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %incdec.ptr168.i.i.2, align 4
  %dma_length167.i.i.3 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.2, i32 0, i32 4
  %160 = ptrtoint ptr %dma_length167.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dma_length167.i.i.3, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #11
  %163 = ptrtoint ptr %incdec.ptr166.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %incdec.ptr166.i.i.3, align 4
  %call174.i.i.3 = tail call ptr @sg_next(ptr noundef %call174.i.i.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin366.i.i)
  %exitcond367.i.i.3 = icmp eq i32 %umin366.i.i, 3
  br i1 %exitcond367.i.i.3, label %if.end163.i.i.3.for.end175.i.i_crit_edge, label %if.end163.i.i.4

if.end163.i.i.3.for.end175.i.i_crit_edge:         ; preds = %if.end163.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175.i.i

if.end163.i.i.4:                                  ; preds = %if.end163.i.i.3
  %incdec.ptr168.i.i.3 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 13
  %dma_address164.i.i.4 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.3, i32 0, i32 3
  %164 = ptrtoint ptr %dma_address164.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dma_address164.i.i.4, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #11
  %incdec.ptr166.i.i.4 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 14
  %167 = ptrtoint ptr %incdec.ptr168.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %incdec.ptr168.i.i.3, align 4
  %dma_length167.i.i.4 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.3, i32 0, i32 4
  %168 = ptrtoint ptr %dma_length167.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dma_length167.i.i.4, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #11
  %171 = ptrtoint ptr %incdec.ptr166.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %incdec.ptr166.i.i.4, align 4
  %call174.i.i.4 = tail call ptr @sg_next(ptr noundef %call174.i.i.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umin366.i.i)
  %exitcond367.i.i.4 = icmp eq i32 %umin366.i.i, 4
  br i1 %exitcond367.i.i.4, label %if.end163.i.i.4.for.end175.i.i_crit_edge, label %if.end163.i.i.5

if.end163.i.i.4.for.end175.i.i_crit_edge:         ; preds = %if.end163.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175.i.i

if.end163.i.i.5:                                  ; preds = %if.end163.i.i.4
  %incdec.ptr168.i.i.4 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 15
  %dma_address164.i.i.5 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.4, i32 0, i32 3
  %172 = ptrtoint ptr %dma_address164.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dma_address164.i.i.5, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #11
  %incdec.ptr166.i.i.5 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 16
  %175 = ptrtoint ptr %incdec.ptr168.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %incdec.ptr168.i.i.4, align 4
  %dma_length167.i.i.5 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.4, i32 0, i32 4
  %176 = ptrtoint ptr %dma_length167.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dma_length167.i.i.5, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #11
  %179 = ptrtoint ptr %incdec.ptr166.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %incdec.ptr166.i.i.5, align 4
  %call174.i.i.5 = tail call ptr @sg_next(ptr noundef %call174.i.i.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umin366.i.i)
  %exitcond367.i.i.5 = icmp eq i32 %umin366.i.i, 5
  br i1 %exitcond367.i.i.5, label %if.end163.i.i.5.for.end175.i.i_crit_edge, label %if.end163.i.i.6

if.end163.i.i.5.for.end175.i.i_crit_edge:         ; preds = %if.end163.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175.i.i

if.end163.i.i.6:                                  ; preds = %if.end163.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr168.i.i.5 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 17
  %dma_address164.i.i.6 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.5, i32 0, i32 3
  %180 = ptrtoint ptr %dma_address164.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma_address164.i.i.6, align 4
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #11
  %incdec.ptr166.i.i.6 = getelementptr %struct.cont_entry, ptr %storemerge339.i.i, i32 0, i32 18
  %183 = ptrtoint ptr %incdec.ptr168.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %incdec.ptr168.i.i.5, align 4
  %dma_length167.i.i.6 = getelementptr inbounds %struct.scatterlist, ptr %call174.i.i.5, i32 0, i32 4
  %184 = ptrtoint ptr %dma_length167.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dma_length167.i.i.6, align 4
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #11
  %187 = ptrtoint ptr %incdec.ptr166.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %incdec.ptr166.i.i.6, align 4
  %call174.i.i.6 = tail call ptr @sg_next(ptr noundef %call174.i.i.5) #11
  br label %for.end175.i.i

for.end175.i.i:                                   ; preds = %if.end163.i.i.6, %if.end163.i.i.5.for.end175.i.i_crit_edge, %if.end163.i.i.4.for.end175.i.i_crit_edge, %if.end163.i.i.3.for.end175.i.i_crit_edge, %if.end163.i.i.2.for.end175.i.i_crit_edge, %if.end163.i.i.1.for.end175.i.i_crit_edge, %if.end163.preheader.i.i.for.end175.i.i_crit_edge
  %call174.i.i.lcssa = phi ptr [ %call174.i.i, %if.end163.preheader.i.i.for.end175.i.i_crit_edge ], [ %call174.i.i.1, %if.end163.i.i.1.for.end175.i.i_crit_edge ], [ %call174.i.i.2, %if.end163.i.i.2.for.end175.i.i_crit_edge ], [ %call174.i.i.3, %if.end163.i.i.3.for.end175.i.i_crit_edge ], [ %call174.i.i.4, %if.end163.i.i.4.for.end175.i.i_crit_edge ], [ %call174.i.i.5, %if.end163.i.i.5.for.end175.i.i_crit_edge ], [ %call174.i.i.6, %if.end163.i.i.6 ]
  %.neg.i.i = xor i32 %umin366.i.i, -1
  %sub176.i.i = add i32 %remseg.1362.i.i, %.neg.i.i
  %cmp134.i.i = icmp sgt i32 %sub176.i.i, 0
  br i1 %cmp134.i.i, label %for.end175.i.i.while.body.i.i_crit_edge, label %for.end175.i.i.do.end196.i.i_crit_edge

for.end175.i.i.do.end196.i.i_crit_edge:           ; preds = %for.end175.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196.i.i

for.end175.i.i.while.body.i.i_crit_edge:          ; preds = %for.end175.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

do.end196.i.i:                                    ; preds = %for.end175.i.i.do.end196.i.i_crit_edge, %while.cond.preheader.i.i.do.end196.i.i_crit_edge, %if.end94.i.i.do.end196.i.i_crit_edge
  %188 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %req_ring_index74.i.i, align 4
  %inc198.i.i = add i16 %189, 1
  store i16 %inc198.i.i, ptr %req_ring_index74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %inc198.i.i)
  %cmp201.i.i = icmp eq i16 %inc198.i.i, 255
  br i1 %cmp201.i.i, label %if.then203.i.i, label %if.else207.i.i

if.then203.i.i:                                   ; preds = %do.end196.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %190 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %req_ring_index74.i.i, align 4
  %request_ring205.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %191 = ptrtoint ptr %request_ring205.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %request_ring205.i.i, align 4
  br label %do.end213.i.i

if.else207.i.i:                                   ; preds = %do.end196.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %request_ring_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %request_ring_ptr.i.i, align 4
  %incdec.ptr209.i.i = getelementptr %struct.cmd_a64_entry_t, ptr %194, i32 1
  br label %do.end213.i.i

do.end213.i.i:                                    ; preds = %if.else207.i.i, %if.then203.i.i
  %storemerge.i.i = phi ptr [ %incdec.ptr209.i.i, %if.else207.i.i ], [ %192, %if.then203.i.i ]
  %195 = ptrtoint ptr %request_ring_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %storemerge.i.i, ptr %request_ring_ptr.i.i, align 4
  %196 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %flags.i, align 4
  %198 = or i8 %197, 2
  store i8 %198, ptr %flags.i, align 4
  %actthreads.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 1
  %199 = ptrtoint ptr %actthreads.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %actthreads.i.i, align 4
  %inc217.i.i = add i32 %200, 1
  store i32 %inc217.i.i, ptr %actthreads.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  %201 = ptrtoint ptr %req_ring_index74.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %req_ring_index74.i.i, align 4
  %203 = tail call i16 @llvm.bswap.i16(i16 %202) #11
  %mailbox4222.i.i = getelementptr inbounds %struct.device_reg, ptr %11, i32 0, i32 37
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mailbox4222.i.i, i16 %203) #11, !srcloc !337
  br label %qla1280_queuecommand_lck.exit

qla1280_queuecommand_lck.exit:                    ; preds = %do.end213.i.i, %for.inc.i.i.qla1280_queuecommand_lck.exit_crit_edge, %do.end43.i.i.qla1280_queuecommand_lck.exit_crit_edge
  %status.0.i.i = phi i32 [ 0, %do.end213.i.i ], [ 4181, %do.end43.i.i.qla1280_queuecommand_lck.exit_crit_edge ], [ 4181, %for.inc.i.i.qla1280_queuecommand_lck.exit_crit_edge ]
  %204 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %205, i32 noundef %call2) #11
  ret i32 %status.0.i.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @qla1280_info(ptr nocapture noundef readonly %host) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %devnum = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3
  %0 = ptrtoint ptr %devnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %devnum, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [7 x %struct.qla_boards], ptr @ql1280_board_tbl, i32 0, i32 %idxprom
  %2 = call ptr @memset(ptr @qla1280_info.qla1280_scsi_name_buffer, i32 0, i32 125)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %fwver1 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 31
  %5 = ptrtoint ptr %fwver1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fwver1, align 2
  %conv = zext i8 %6 to i32
  %fwver2 = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 32
  %7 = ptrtoint ptr %fwver2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fwver2, align 1
  %conv2 = zext i8 %8 to i32
  %fwver3 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 2, i32 3, i32 0, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fwver3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fwver3, align 4
  %conv3 = zext i8 %10 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @qla1280_info.qla1280_scsi_name_buffer, ptr noundef nonnull @.str.51, ptr noundef %4, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, ptr noundef nonnull @.str.2)
  ret ptr @qla1280_info.qla1280_scsi_name_buffer
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_eh_abort(ptr noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %call = tail call fastcc i32 @qla1280_error_action(ptr noundef %cmd, i32 noundef 0)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_lock3 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_eh_device_reset(ptr noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %call = tail call fastcc i32 @qla1280_error_action(ptr noundef %cmd, i32 noundef 1)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_lock3 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_eh_bus_reset(ptr noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %call = tail call fastcc i32 @qla1280_error_action(ptr noundef %cmd, i32 noundef 2)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_lock3 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_eh_adapter_reset(ptr noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %call = tail call fastcc i32 @qla1280_error_action(ptr noundef %cmd, i32 noundef 3)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_lock3 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla1280_slave_configure(ptr noundef %device) #6 align 64 {
entry:
  %mb.i208 = alloca [8 x i16], align 2
  %mb.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 17
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %scsi_bus_dead.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 13, i32 %1, i32 8
  %6 = ptrtoint ptr %scsi_bus_dead.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %scsi_bus_dead.i, align 2
  %7 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %do.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 1
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %host_cmd.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i, i16 32) #11, !srcloc !337
  %cfg_1.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 3
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_1.i) #11, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cfg_1.i, i16 1) #11, !srcloc !337
  %scsiControlPins.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 47
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %scsiControlPins.i) #11, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cfg_1.i, i16 %10) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i, i16 48) #11, !srcloc !337
  call void @__sanitizer_cov_trace_const_cmp2(i16 -121, i16 %11)
  %cmp.i = icmp eq i16 %11, -121
  %12 = ptrtoint ptr %scsi_bus_dead.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load21.i = load i8, ptr %scsi_bus_dead.i, align 2
  br i1 %cmp.i, label %qla1280_check_for_dead_scsi_bus.exit, label %if.else.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear27.i = and i8 %bf.load21.i, -33
  %13 = ptrtoint ptr %scsi_bus_dead.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear27.i, ptr %scsi_bus_dead.i, align 2
  %failed_reset_count.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 13, i32 %1, i32 2
  %14 = ptrtoint ptr %failed_reset_count.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %failed_reset_count.i, align 2
  br label %if.end

qla1280_check_for_dead_scsi_bus.exit:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set.i = or i8 %bf.load21.i, 32
  %15 = ptrtoint ptr %scsi_bus_dead.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set.i, ptr %scsi_bus_dead.i, align 2
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  %tagged_supported = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 41
  %16 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load = load i64, ptr %tagged_supported, align 4
  %17 = and i64 %bf.load, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool1.not = icmp eq i64 %17, 0
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %bus_settings = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 10, i32 1, i32 1
  %qtag_enables = getelementptr [2 x %struct.bus_param], ptr %bus_settings, i32 0, i32 %1, i32 6
  %18 = ptrtoint ptr %qtag_enables to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %qtag_enables, align 2
  %conv = zext i16 %19 to i32
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end9_crit_edge, label %if.then3

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %hiwat = getelementptr [2 x %struct.bus_param], ptr %bus_settings, i32 0, i32 %1, i32 7
  %20 = ptrtoint ptr %hiwat to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hiwat, align 2
  %conv6 = zext i16 %21 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %.sink = phi i32 [ %conv6, %if.then3 ], [ 3, %land.lhs.true.if.end9_crit_edge ], [ 3, %if.end.if.end9_crit_edge ]
  %call8 = tail call i32 @scsi_change_queue_depth(ptr noundef %device, i32 noundef %.sink) #11
  %22 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load10 = load i64, ptr %tagged_supported, align 4
  %bus15 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 27
  %arrayidx18 = getelementptr [2 x %struct.anon.92], ptr %bus15, i32 0, i32 %1, i32 11, i32 %3
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load19 = load i8, ptr %arrayidx18, align 2
  %sh.diff = lshr i64 %bf.load10, 52
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 8
  %bf.clear20 = and i8 %bf.load19, -9
  %bf.set = or i8 %bf.shl, %bf.clear20
  store i8 %bf.set, ptr %arrayidx18, align 2
  %bf.load21 = load i64, ptr %tagged_supported, align 4
  %sh.diff203 = lshr i64 %bf.load21, 52
  %tr.sh.diff204 = trunc i64 %sh.diff203 to i8
  %bf.shl33 = and i8 %tr.sh.diff204, 4
  %bf.clear34 = and i8 %bf.set, -5
  %bf.set35 = or i8 %bf.shl33, %bf.clear34
  store i8 %bf.set35, ptr %arrayidx18, align 2
  %bf.load36 = load i64, ptr %tagged_supported, align 4
  %bf.lshr37 = lshr i64 %bf.load36, 53
  %24 = trunc i64 %bf.lshr37 to i8
  %bf.cast39 = and i8 %24, 1
  %ppr_1x160 = getelementptr [2 x %struct.anon.92], ptr %bus15, i32 0, i32 %1, i32 11, i32 %3, i32 4
  %25 = ptrtoint ptr %ppr_1x160 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load45 = load i8, ptr %ppr_1x160, align 2
  %bf.clear47 = and i8 %bf.load45, -2
  %bf.set48 = or i8 %bf.cast39, %bf.clear47
  store i8 %bf.set48, ptr %ppr_1x160, align 2
  %bf.load49 = load i8, ptr @driver_setup.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load49)
  %tobool52.not = icmp sgt i8 %bf.load49, -1
  br i1 %tobool52.not, label %lor.lhs.false, label %if.end9.if.then60_crit_edge

if.end9.if.then60_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

lor.lhs.false:                                    ; preds = %if.end9
  %26 = load i16, ptr @driver_setup.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool54.not = icmp eq i16 %26, 0
  br i1 %tobool54.not, label %lor.lhs.false.if.end69_crit_edge, label %land.lhs.true55

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

land.lhs.true55:                                  ; preds = %lor.lhs.false
  %conv53 = zext i16 %26 to i32
  %shl57 = shl nuw i32 1, %3
  %27 = and i32 %shl57, %conv53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool59.not.not = icmp eq i32 %27, 0
  br i1 %tobool59.not.not, label %land.lhs.true55.if.then60_crit_edge, label %land.lhs.true55.if.end69_crit_edge

land.lhs.true55.if.end69_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

land.lhs.true55.if.then60_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

if.then60:                                        ; preds = %land.lhs.true55.if.then60_crit_edge, %if.end9.if.then60_crit_edge
  %bf.clear67 = and i8 %bf.set35, -9
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.clear67, ptr %arrayidx18, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then60, %land.lhs.true55.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge
  %29 = and i8 %bf.load49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool74.not = icmp eq i8 %29, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %if.end69.if.then84_crit_edge

if.end69.if.then84_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

lor.lhs.false75:                                  ; preds = %if.end69
  %30 = load i16, ptr @driver_setup.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool77.not = icmp eq i16 %30, 0
  br i1 %tobool77.not, label %lor.lhs.false75.if.end93_crit_edge, label %land.lhs.true78

lor.lhs.false75.if.end93_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

land.lhs.true78:                                  ; preds = %lor.lhs.false75
  %conv76 = zext i16 %30 to i32
  %shl81 = shl nuw i32 1, %3
  %31 = and i32 %shl81, %conv76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool83.not.not = icmp eq i32 %31, 0
  br i1 %tobool83.not.not, label %land.lhs.true78.if.then84_crit_edge, label %land.lhs.true78.if.end93_crit_edge

land.lhs.true78.if.end93_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

land.lhs.true78.if.then84_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

if.then84:                                        ; preds = %land.lhs.true78.if.then84_crit_edge, %if.end69.if.then84_crit_edge
  %32 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load90 = load i8, ptr %arrayidx18, align 2
  %bf.clear91 = and i8 %bf.load90, -5
  store i8 %bf.clear91, ptr %arrayidx18, align 2
  br label %if.end93

if.end93:                                         ; preds = %if.then84, %land.lhs.true78.if.end93_crit_edge, %lor.lhs.false75.if.end93_crit_edge
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 2, i32 1
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %device94 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %device94 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device94, align 2
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %36, label %if.end93.do.body129_crit_edge [
    i16 4118, label %if.end93.if.then103_crit_edge
    i16 4630, label %if.end93.if.then103_crit_edge220
  ]

if.end93.if.then103_crit_edge220:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

if.end93.if.then103_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

if.end93.do.body129_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body129

if.then103:                                       ; preds = %if.end93.if.then103_crit_edge, %if.end93.if.then103_crit_edge220
  %38 = and i8 %bf.load49, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool108.not = icmp eq i8 %38, 0
  br i1 %tobool108.not, label %lor.lhs.false109, label %if.then103.if.then118_crit_edge

if.then103.if.then118_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

lor.lhs.false109:                                 ; preds = %if.then103
  %39 = load i16, ptr @driver_setup.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool111.not = icmp eq i16 %39, 0
  br i1 %tobool111.not, label %lor.lhs.false109.do.body129_crit_edge, label %land.lhs.true112

lor.lhs.false109.do.body129_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body129

land.lhs.true112:                                 ; preds = %lor.lhs.false109
  %conv110 = zext i16 %39 to i32
  %shl115 = shl nuw i32 1, %3
  %40 = and i32 %shl115, %conv110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool117.not.not = icmp eq i32 %40, 0
  br i1 %tobool117.not.not, label %land.lhs.true112.if.then118_crit_edge, label %land.lhs.true112.do.body129_crit_edge

land.lhs.true112.do.body129_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body129

land.lhs.true112.if.then118_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

if.then118:                                       ; preds = %land.lhs.true112.if.then118_crit_edge, %if.then103.if.then118_crit_edge
  %41 = ptrtoint ptr %ppr_1x160 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load124 = load i8, ptr %ppr_1x160, align 2
  %bf.clear125 = and i8 %bf.load124, -2
  store i8 %bf.clear125, ptr %ppr_1x160, align 2
  br label %do.body129

do.body129:                                       ; preds = %if.then118, %land.lhs.true112.do.body129_crit_edge, %lor.lhs.false109.do.body129_crit_edge, %if.end93.do.body129_crit_edge
  %42 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hostdata, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host_lock, align 4
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #11
  %46 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load142 = load i8, ptr %arrayidx18, align 2
  %47 = and i8 %bf.load142, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool145.not = icmp eq i8 %47, 0
  br i1 %tobool145.not, label %do.body129.if.end148_crit_edge, label %if.then146

do.body129.if.end148_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then146:                                       ; preds = %do.body129
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i) #11
  %48 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 1
  %49 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 2
  %50 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 3
  %51 = call ptr @memset(ptr %50, i32 255, i32 10)
  %52 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 56, ptr %mb.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i205 = icmp eq i32 %1, 0
  %or.i = or i32 %3, 128
  %cond.i = select i1 %tobool.not.i205, i32 %3, i32 %or.i
  %cond.tr.i = trunc i32 %cond.i to i16
  %conv.i = shl i16 %cond.tr.i, 8
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i, ptr %48, align 2
  %arrayidx5.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 11, i32 %3
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i206 = load i8, ptr %arrayidx5.i, align 2
  %trunc.i = zext i8 %bf.load.i206 to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i) #11
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %rev.i, ptr %49, align 2
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device.i, align 2
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.172)
  switch i16 %59, label %if.else.i207 [
    i16 4118, label %if.then146.if.then.i_crit_edge
    i16 4630, label %if.then146.if.then.i_crit_edge221
  ]

if.then146.if.then.i_crit_edge221:                ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then146.if.then.i_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then146.if.then.i_crit_edge, %if.then146.if.then.i_crit_edge221
  %61 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 6
  %ppr_1x160.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 11, i32 %3, i32 4
  %62 = ptrtoint ptr %ppr_1x160.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load117.i = load i8, ptr %ppr_1x160.i, align 2
  %bf.clear118.i = shl i8 %bf.load117.i, 5
  %63 = and i8 %bf.clear118.i, 32
  %shl120.i = zext i8 %63 to i16
  %or123.i = or i16 %rev.i, %shl120.i
  %64 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %or123.i, ptr %49, align 2
  %flags.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 11, i32 %3, i32 3
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load129.i = load i8, ptr %flags.i, align 1
  %bf.lshr130.i = lshr i8 %bf.load129.i, 3
  %conv131.i = zext i8 %bf.lshr130.i to i16
  %shl132.i = shl nuw nsw i16 %conv131.i, 8
  %66 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %shl132.i, ptr %50, align 2
  %bf.lshr141.i = lshr i8 %bf.load117.i, 4
  %conv142.i = zext i8 %bf.lshr141.i to i16
  %shl143.i = shl nuw nsw i16 %conv142.i, 8
  %bf.lshr150.i = lshr i8 %bf.load117.i, 2
  %bf.clear151.i = and i8 %bf.lshr150.i, 3
  %conv152.i = zext i8 %bf.clear151.i to i16
  %or153.i = or i16 %shl143.i, %conv152.i
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %or153.i, ptr %61, align 2
  br label %if.end.i

if.else.i207:                                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  %flags163.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 11, i32 %3, i32 3
  %68 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load164.i = load i8, ptr %flags163.i, align 1
  %bf.lshr165.i = lshr i8 %bf.load164.i, 4
  %conv166.i = zext i8 %bf.lshr165.i to i16
  %shl167.i = shl nuw nsw i16 %conv166.i, 8
  %69 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %shl167.i, ptr %50, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i207, %if.then.i
  %mr.0.i = phi i8 [ 79, %if.then.i ], [ 15, %if.else.i207 ]
  %sync_period.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 11, i32 %3, i32 2
  %70 = ptrtoint ptr %sync_period.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sync_period.i, align 2
  %conv174.i = zext i8 %71 to i16
  %72 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %50, align 2
  %or177.i = or i16 %73, %conv174.i
  store i16 %or177.i, ptr %50, align 2
  %call.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext %mr.0.i, ptr noundef nonnull %mb.i) #11
  %max_queue_depth.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 7
  %execution_throttle.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 28, i32 17, i32 %1, i32 11, i32 %3, i32 1
  %74 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 57, ptr %mb.i, align 2
  %75 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i, ptr %48, align 2
  %76 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %max_queue_depth.i, align 2
  %78 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %49, align 2
  %79 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %execution_throttle.i, align 1
  %conv202.i = zext i8 %80 to i16
  %81 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv202.i, ptr %50, align 2
  %call205.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.i = or i32 %call205.i, %call.i
  %82 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 57, ptr %mb.i, align 2
  %conv194.1.i = or i16 %conv.i, 1
  %83 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv194.1.i, ptr %48, align 2
  %84 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %max_queue_depth.i, align 2
  %86 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %49, align 2
  %87 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %execution_throttle.i, align 1
  %conv202.1.i = zext i8 %88 to i16
  %89 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv202.1.i, ptr %50, align 2
  %call205.1.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.1.i = or i32 %or206.i, %call205.1.i
  %90 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 57, ptr %mb.i, align 2
  %conv194.2.i = or i16 %conv.i, 2
  %91 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv194.2.i, ptr %48, align 2
  %92 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %max_queue_depth.i, align 2
  %94 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %49, align 2
  %95 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %execution_throttle.i, align 1
  %conv202.2.i = zext i8 %96 to i16
  %97 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv202.2.i, ptr %50, align 2
  %call205.2.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.2.i = or i32 %or206.1.i, %call205.2.i
  %98 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 57, ptr %mb.i, align 2
  %conv194.3.i = or i16 %conv.i, 3
  %99 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv194.3.i, ptr %48, align 2
  %100 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %max_queue_depth.i, align 2
  %102 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %49, align 2
  %103 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %execution_throttle.i, align 1
  %conv202.3.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv202.3.i, ptr %50, align 2
  %call205.3.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.3.i = or i32 %or206.2.i, %call205.3.i
  %106 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 57, ptr %mb.i, align 2
  %conv194.4.i = or i16 %conv.i, 4
  %107 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv194.4.i, ptr %48, align 2
  %108 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %max_queue_depth.i, align 2
  %110 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %49, align 2
  %111 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %execution_throttle.i, align 1
  %conv202.4.i = zext i8 %112 to i16
  %113 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv202.4.i, ptr %50, align 2
  %call205.4.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.4.i = or i32 %or206.3.i, %call205.4.i
  %114 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 57, ptr %mb.i, align 2
  %conv194.5.i = or i16 %conv.i, 5
  %115 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv194.5.i, ptr %48, align 2
  %116 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %max_queue_depth.i, align 2
  %118 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %49, align 2
  %119 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %execution_throttle.i, align 1
  %conv202.5.i = zext i8 %120 to i16
  %121 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv202.5.i, ptr %50, align 2
  %call205.5.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.5.i = or i32 %or206.4.i, %call205.5.i
  %122 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 57, ptr %mb.i, align 2
  %conv194.6.i = or i16 %conv.i, 6
  %123 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv194.6.i, ptr %48, align 2
  %124 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %max_queue_depth.i, align 2
  %126 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %49, align 2
  %127 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %execution_throttle.i, align 1
  %conv202.6.i = zext i8 %128 to i16
  %129 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv202.6.i, ptr %50, align 2
  %call205.6.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.6.i = or i32 %or206.5.i, %call205.6.i
  %130 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 57, ptr %mb.i, align 2
  %conv194.7.i = or i16 %conv.i, 7
  %131 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv194.7.i, ptr %48, align 2
  %132 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %max_queue_depth.i, align 2
  %134 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %49, align 2
  %135 = ptrtoint ptr %execution_throttle.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %execution_throttle.i, align 1
  %conv202.7.i = zext i8 %136 to i16
  %137 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv202.7.i, ptr %50, align 2
  %call205.7.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  %or206.7.i = or i32 %or206.6.i, %call205.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or206.7.i)
  %tobool207.not.i = icmp eq i32 %or206.7.i, 0
  br i1 %tobool207.not.i, label %if.end.i.qla1280_set_target_parameters.exit_crit_edge, label %do.end.i

if.end.i.qla1280_set_target_parameters.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_set_target_parameters.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 2
  %138 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %host_no.i, align 4
  %call209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %139, i32 noundef %1, i32 noundef %3) #15
  br label %qla1280_set_target_parameters.exit

qla1280_set_target_parameters.exit:               ; preds = %do.end.i, %if.end.i.qla1280_set_target_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i) #11
  br label %if.end148

if.end148:                                        ; preds = %qla1280_set_target_parameters.exit, %do.body129.if.end148_crit_edge
  %status.0 = phi i32 [ %or206.7.i, %qla1280_set_target_parameters.exit ], [ 0, %do.body129.if.end148_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i208) #11
  %140 = getelementptr inbounds [8 x i16], ptr %mb.i208, i32 0, i32 1
  %141 = getelementptr inbounds [8 x i16], ptr %mb.i208, i32 0, i32 3
  %142 = getelementptr inbounds [8 x i16], ptr %mb.i208, i32 0, i32 6
  %143 = getelementptr inbounds i8, ptr %mb.i208, i32 4
  %144 = call ptr @memset(ptr %143, i32 255, i32 12)
  %145 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %channel, align 4
  %147 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %id, align 8
  %lun1.i = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 18
  %149 = ptrtoint ptr %lun1.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %lun1.i, align 8
  %conv.i209 = trunc i64 %150 to i32
  %151 = ptrtoint ptr %mb.i208 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 40, ptr %mb.i208, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i210 = icmp eq i32 %146, 0
  %or.i211 = or i32 %148, 128
  %cond.i212 = select i1 %tobool.not.i210, i32 %148, i32 %or.i211
  %cond.tr.i213 = trunc i32 %cond.i212 to i16
  %conv6.i = shl i16 %cond.tr.i213, 8
  %152 = ptrtoint ptr %140 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv6.i, ptr %140, align 2
  %call.i214 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 79, ptr noundef nonnull %mb.i208) #11
  %host_no.i215 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 2
  %153 = ptrtoint ptr %host_no.i215 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %host_no.i215, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %154, i32 noundef %146, i32 noundef %148, i32 noundef %conv.i209) #15
  %155 = ptrtoint ptr %141 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %141, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %cmp.not.i = icmp eq i16 %156, 0
  br i1 %cmp.not.i, label %if.end148.if.end53.sink.split.i_crit_edge, label %do.end14.i

if.end148.if.end53.sink.split.i_crit_edge:        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.sink.split.i

do.end14.i:                                       ; preds = %if.end148
  %conv10.i = zext i16 %156 to i32
  %and.i = and i32 %conv10.i, 255
  %157 = lshr i32 %conv10.i, 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %and.i, i32 noundef %157) #15
  %158 = ptrtoint ptr %143 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %143, align 2
  %160 = and i16 %159, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool24.not.i = icmp eq i16 %160, 0
  br i1 %tobool24.not.i, label %do.end14.i.if.end.i216_crit_edge, label %do.end28.i

do.end14.i.if.end.i216_crit_edge:                 ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i216

do.end28.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #15
  br label %if.end.i216

if.end.i216:                                      ; preds = %do.end28.i, %do.end14.i.if.end.i216_crit_edge
  %161 = and i16 %159, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool34.not.i = icmp eq i16 %161, 0
  br i1 %tobool34.not.i, label %if.end.i216.if.end53.i_crit_edge, label %land.lhs.true.i

if.end.i216.if.end53.i_crit_edge:                 ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

land.lhs.true.i:                                  ; preds = %if.end.i216
  %162 = ptrtoint ptr %142 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %142, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %163)
  %cmp39.i = icmp ugt i16 %163, 511
  br i1 %cmp39.i, label %land.lhs.true.i.if.end53.sink.split.i_crit_edge, label %land.lhs.true.i.if.end53.i_crit_edge

land.lhs.true.i.if.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

land.lhs.true.i.if.end53.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.sink.split.i

if.end53.sink.split.i:                            ; preds = %land.lhs.true.i.if.end53.sink.split.i_crit_edge, %if.end148.if.end53.sink.split.i_crit_edge
  %.str.147.sink.i = phi ptr [ @.str.147, %land.lhs.true.i.if.end53.sink.split.i_crit_edge ], [ @.str.150, %if.end148.if.end53.sink.split.i_crit_edge ]
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.147.sink.i) #15
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.sink.split.i, %land.lhs.true.i.if.end53.i_crit_edge, %if.end.i216.if.end53.i_crit_edge
  %164 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %164, i32 8)
  %bf.load.i217 = load i64, ptr %tagged_supported, align 4
  %165 = and i64 %bf.load.i217, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %165)
  %tobool54.not.i = icmp eq i64 %165, 0
  br i1 %tobool54.not.i, label %if.end53.i.qla1280_get_target_parameters.exit_crit_edge, label %do.end58.i

if.end53.i.qla1280_get_target_parameters.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_get_target_parameters.exit

do.end58.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 9
  %166 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %queue_depth.i, align 4
  %conv60.i = zext i16 %167 to i32
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %conv60.i) #15
  br label %qla1280_get_target_parameters.exit

qla1280_get_target_parameters.exit:               ; preds = %do.end58.i, %if.end53.i.qla1280_get_target_parameters.exit_crit_edge
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i208) #11
  %168 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hostdata, align 4
  %host_lock150 = getelementptr inbounds %struct.Scsi_Host, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %host_lock150 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %host_lock150, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %171, i32 noundef %call134) #11
  br label %cleanup

cleanup:                                          ; preds = %qla1280_get_target_parameters.exit, %qla1280_check_for_dead_scsi_bus.exit
  %retval.0 = phi i32 [ %status.0, %qla1280_get_target_parameters.exit ], [ 1, %qla1280_check_for_dead_scsi_bus.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qla1280_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %capacity to i32
  %div15 = lshr i32 %conv, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2099199, i32 %conv)
  %cmp = icmp ugt i32 %conv, 2099199
  %div4 = udiv i32 %conv, 16065
  %heads.0 = select i1 %cmp, i32 255, i32 64
  %sectors.0 = select i1 %cmp, i32 63, i32 32
  %cylinders.0 = select i1 %cmp, i32 %div4, i32 %div15
  %0 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %heads.0, ptr %geom, align 4
  %arrayidx5 = getelementptr i32, ptr %geom, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sectors.0, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %geom, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cylinders.0, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla1280_error_action(ptr noundef %cmd, i32 noundef %action) unnamed_addr #6 align 64 {
entry:
  %wait.i.i = alloca %struct.completion, align 4
  %mb.i179 = alloca [8 x i16], align 2
  %mb.i = alloca [8 x i16], align 2
  %wait = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait) #11
  %0 = getelementptr inbounds i8, ptr %wait, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 53
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %channel = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 17
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 16
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %lun4 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 18
  %11 = ptrtoint ptr %lun4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %lun4, align 8
  %conv = trunc i64 %12 to i32
  %13 = load i32, ptr @qla1280_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end13

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %14 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no, align 4
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 23
  %16 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_scribble, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %15, ptr noundef %cmd, ptr noundef %17, i32 noundef %action) #15
  br label %if.end

if.end:                                           ; preds = %do.end13, %entry.if.end_crit_edge
  %outstanding_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 3, i32 0, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0239 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [512 x ptr], ptr %outstanding_cmds, i32 0, i32 %i.0239
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp16 = icmp eq ptr %SCp, %19
  br i1 %cmp16, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0239, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %if.then23, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %wait19 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 3
  %20 = ptrtoint ptr %wait19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wait, ptr %wait19, align 4
  br label %if.end33

if.then23:                                        ; preds = %for.inc
  %21 = load i32, ptr @qla1280_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.then23.if.end33_crit_edge, label %do.end28

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %host_no30 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %22 = ptrtoint ptr %host_no30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_no30, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %23, i32 noundef %8, i32 noundef %10, i32 noundef %conv) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end28, %if.then23.if.end33_crit_edge, %for.end
  %found.0205 = phi i32 [ -1, %do.end28 ], [ -1, %if.then23.if.end33_crit_edge ], [ %i.0239, %for.end ]
  %result.0 = phi i32 [ 8194, %do.end28 ], [ 8194, %if.then23.if.end33_crit_edge ], [ 8195, %for.end ]
  %24 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %action, label %sw.default [
    i32 0, label %do.end36
    i32 1, label %sw.bb42
    i32 2, label %sw.bb57
  ]

do.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found.0205)
  %cmp37 = icmp sgt i32 %found.0205, -1
  br i1 %cmp37, label %if.then39, label %do.end36.if.end101_crit_edge

do.end36.if.end101_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then39:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i) #11
  %25 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 3
  %cmd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 2
  %28 = getelementptr inbounds i8, ptr %mb.i, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 -1, ptr %28, align 2
  %30 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 16
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i, align 8
  %lun5.i = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 18
  %38 = ptrtoint ptr %lun5.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lun5.i, align 8
  %conv.i = trunc i64 %39 to i32
  %flags.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 5
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags.i, align 4
  %42 = or i8 %41, 4
  store i8 %42, ptr %flags.i, align 4
  %43 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 21, ptr %mb.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  %44 = shl i32 %37, 8
  %45 = or i32 %44, 32768
  %shl.i = select i1 %tobool.not.i, i32 %44, i32 %45
  %or9.i = or i32 %shl.i, %conv.i
  %conv10.i = trunc i32 %or9.i to i16
  %46 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv10.i, ptr %25, align 2
  %47 = lshr i32 %found.0205, 16
  %conv12.i = trunc i32 %47 to i16
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv12.i, ptr %26, align 2
  %conv14.i = trunc i32 %found.0205 to i16
  %49 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv14.i, ptr %27, align 2
  %call.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 15, ptr noundef nonnull %mb.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.then39.sw.epilog.thread_crit_edge, label %do.end20.i

if.then39.sw.epilog.thread_crit_edge:             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread

do.end20.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags.i, align 4
  %52 = and i8 %51, -5
  store i8 %52, ptr %flags.i, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end20.i, %if.then39.sw.epilog.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i) #11
  br label %if.then99

sw.bb42:                                          ; preds = %if.end33
  %53 = load i32, ptr @qla1280_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool43.not = icmp eq i32 %53, 0
  br i1 %tobool43.not, label %sw.bb42.if.end51_crit_edge, label %do.end47

sw.bb42.if.end51_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.end47:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %host_no49 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %54 = ptrtoint ptr %host_no49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %host_no49, align 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %55, i32 noundef %8, i32 noundef %10, i32 noundef %conv) #15
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %sw.bb42.if.end51_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i179) #11
  %56 = getelementptr inbounds [8 x i16], ptr %mb.i179, i32 0, i32 1
  %57 = getelementptr inbounds [8 x i16], ptr %mb.i179, i32 0, i32 2
  %58 = getelementptr inbounds i8, ptr %mb.i179, i32 6
  %59 = call ptr @memset(ptr %58, i32 255, i32 10)
  %60 = ptrtoint ptr %mb.i179 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 23, ptr %mb.i179, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i180 = icmp eq i32 %8, 0
  %or.i = or i32 %10, 128
  %cond.i = select i1 %tobool.not.i180, i32 %10, i32 %or.i
  %cond.tr.i = trunc i32 %cond.i to i16
  %conv.i181 = shl i16 %cond.tr.i, 8
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i181, ptr %56, align 2
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %57, align 2
  %call.i182 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %hostdata, i8 noundef zeroext 7, ptr noundef nonnull %mb.i179) #11
  call fastcc void @qla1280_marker(ptr noundef %hostdata, i32 noundef %8, i32 noundef %10, i8 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i179) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp53 = icmp eq i32 %call.i182, 0
  %spec.select = select i1 %cmp53, i32 %8, i32 -1
  %spec.select176 = select i1 %cmp53, i32 %10, i32 -1
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end33
  %63 = load i32, ptr @qla1280_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool58.not = icmp eq i32 %63, 0
  br i1 %tobool58.not, label %sw.bb57.if.end66_crit_edge, label %do.end62

sw.bb57.if.end66_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.end62:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  %host_no64 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %64 = ptrtoint ptr %host_no64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %host_no64, align 4
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %65, i32 noundef %8) #15
  br label %if.end66

if.end66:                                         ; preds = %do.end62, %sw.bb57.if.end66_crit_edge
  %call67 = call fastcc i32 @qla1280_bus_reset(ptr noundef %hostdata, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  %spec.select177 = select i1 %cmp68, i32 %8, i32 -1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end33
  %66 = load i32, ptr @qla1280_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool73.not = icmp eq i32 %66, 0
  br i1 %tobool73.not, label %sw.default.if.end87_crit_edge, label %do.end77

sw.default.if.end87_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.end77:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %host_no79 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %67 = ptrtoint ptr %host_no79 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %host_no79, align 4
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %68) #15
  %69 = ptrtoint ptr %host_no79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %host_no79, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %70) #15
  br label %if.end87

if.end87:                                         ; preds = %do.end77, %sw.default.if.end87_crit_edge
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 50, i32 12, i32 23
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load = load volatile i32, ptr %flags, align 4
  %bf.set = or i32 %bf.load, 268435456
  store volatile i32 %bf.set, ptr %flags, align 4
  %iobase.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 1
  %72 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iobase.i, align 4
  %bf.load.i = load volatile i32, ptr %flags, align 4
  %74 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i184 = icmp eq i32 %74, 0
  br i1 %tobool.not.i184, label %lor.lhs.false.i, label %if.end87._crit_edge

if.end87._crit_edge:                              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %107

lor.lhs.false.i:                                  ; preds = %if.end87
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load2.i = load volatile i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load2.i)
  %tobool4.not.i = icmp sgt i32 %bf.load2.i, -1
  br i1 %tobool4.not.i, label %lor.lhs.false.i._crit_edge, label %if.end.i

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %107

if.end.i:                                         ; preds = %lor.lhs.false.i
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load6.i = load volatile i32, ptr %flags, align 4
  %bf.set.i = or i32 %bf.load6.i, 134217728
  store volatile i32 %bf.set.i, ptr %flags, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iobase.i, align 4
  %ictrl.i.i = getelementptr inbounds %struct.device_reg, ptr %78, i32 0, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i.i, i16 0) #11, !srcloc !337
  %79 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iobase.i, align 4
  %ictrl2.i.i = getelementptr inbounds %struct.device_reg, ptr %80, i32 0, i32 4
  %81 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i.i) #11, !srcloc !338
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  call void @arm_heavy_mb() #11
  %host_cmd.i = getelementptr inbounds %struct.device_reg, ptr %73, i32 0, i32 42
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i, i16 32) #11, !srcloc !337
  %82 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #11, !srcloc !338
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %83 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %host_no.i, align 4
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %84) #15
  %done_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 7
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 50, i32 12, i32 11, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %if.end.i
  %cnt.090.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %if.end21.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 12, i32 %cnt.090.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  %tobool16.not.i = icmp eq ptr %86, null
  br i1 %tobool16.not.i, label %for.body.i.if.end21.i_crit_edge, label %if.then17.i

for.body.i.if.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then17.i:                                      ; preds = %for.body.i
  %cmd18.i = getelementptr inbounds %struct.srb, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %cmd18.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd18.i, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 24
  %89 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 524288, ptr %result.i, align 4
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 23
  %90 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 514 to ptr), ptr %host_scribble.i, align 4
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx.i, align 4
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %86, ptr noundef %93, ptr noundef %done_q.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then17.i.if.end21.i_crit_edge

if.then17.i.if.end21.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end.i.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %86, ptr %prev.i.i, align 4
  %95 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %done_q.i, ptr %86, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %86, ptr %93, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end.i.i.i, %if.then17.i.if.end21.i_crit_edge, %for.body.i.if.end21.i_crit_edge
  %inc.i = add nuw nsw i32 %cnt.090.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end21.i
  call fastcc void @qla1280_done(ptr noundef %hostdata) #11
  %call22.i = call fastcc i32 @qla1280_load_firmware(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %for.end.i.qla1280_abort_isp.exit_crit_edge

for.end.i.qla1280_abort_isp.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_abort_isp.exit

if.end25.i:                                       ; preds = %for.end.i
  call fastcc void @qla1280_nvram_config(ptr noundef %hostdata) #11
  %call27.i = call fastcc i32 @qla1280_init_rings(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %for.cond31.preheader.i, label %if.end25.i.qla1280_abort_isp.exit_crit_edge

if.end25.i.qla1280_abort_isp.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_abort_isp.exit

for.cond31.preheader.i:                           ; preds = %if.end25.i
  %ports.i = getelementptr inbounds %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 8
  %98 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ports.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp3292.not.i = icmp eq i8 %99, 0
  br i1 %cmp3292.not.i, label %for.cond31.preheader.i.for.end38.i_crit_edge, label %for.cond31.preheader.i.for.body34.i_crit_edge

for.cond31.preheader.i.for.body34.i_crit_edge:    ; preds = %for.cond31.preheader.i
  br label %for.body34.i

for.cond31.preheader.i.for.end38.i_crit_edge:     ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.cond31.preheader.i.for.body34.i_crit_edge
  %bus.093.i = phi i32 [ %inc37.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.cond31.preheader.i.for.body34.i_crit_edge ]
  %call35.i = call fastcc i32 @qla1280_bus_reset(ptr noundef %hostdata, i32 noundef %bus.093.i) #11
  %inc37.i = add nuw nsw i32 %bus.093.i, 1
  %100 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ports.i, align 2
  %conv.i185 = zext i8 %101 to i32
  %cmp32.i = icmp ult i32 %inc37.i, %conv.i185
  br i1 %cmp32.i, label %for.body34.i.for.body34.i_crit_edge, label %for.body34.i.for.end38.i_crit_edge

for.body34.i.for.end38.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38.i

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34.i

for.end38.i:                                      ; preds = %for.body34.i.for.end38.i_crit_edge, %for.cond31.preheader.i.for.end38.i_crit_edge
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load40.i = load volatile i32, ptr %flags, align 4
  %bf.clear41.i = and i32 %bf.load40.i, -134217729
  store volatile i32 %bf.clear41.i, ptr %flags, align 4
  br label %107

qla1280_abort_isp.exit:                           ; preds = %if.end25.i.qla1280_abort_isp.exit_crit_edge, %for.end.i.qla1280_abort_isp.exit_crit_edge
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #15
  %103 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iobase.i, align 4
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load.i.i = load volatile i32, ptr %flags, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i, 2147483647
  store volatile i32 %bf.clear.i.i, ptr %flags, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  call void @arm_heavy_mb() #11
  %ictrl.i86.i = getelementptr inbounds %struct.device_reg, ptr %104, i32 0, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i86.i, i16 256) #11, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  call void @arm_heavy_mb() #11
  %host_cmd.i.i = getelementptr inbounds %struct.device_reg, ptr %104, i32 0, i32 42
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i.i, i16 176) #11, !srcloc !337
  %106 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %104) #11, !srcloc !338
  br label %107

107:                                              ; preds = %qla1280_abort_isp.exit, %for.end38.i, %lor.lhs.false.i._crit_edge, %if.end87._crit_edge
  %108 = phi i32 [ 8195, %qla1280_abort_isp.exit ], [ %result.0, %if.end87._crit_edge ], [ %result.0, %for.end38.i ], [ %result.0, %lor.lhs.false.i._crit_edge ]
  %109 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load94 = load volatile i32, ptr %flags, align 4
  %bf.clear95 = and i32 %bf.load94, -268435457
  store volatile i32 %bf.clear95, ptr %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %107, %if.end66, %if.end51
  %wait_for_bus.0 = phi i32 [ -1, %107 ], [ %spec.select, %if.end51 ], [ %spec.select177, %if.end66 ]
  %wait_for_target.0 = phi i32 [ -1, %107 ], [ %spec.select176, %if.end51 ], [ -1, %if.end66 ]
  %result.2 = phi i32 [ %108, %107 ], [ %result.0, %if.end51 ], [ %result.0, %if.end66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found.0205)
  %cmp97 = icmp sgt i32 %found.0205, -1
  br i1 %cmp97, label %sw.epilog.if.then99_crit_edge, label %sw.epilog.if.end101_crit_edge

sw.epilog.if.end101_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

sw.epilog.if.then99_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99

if.then99:                                        ; preds = %sw.epilog.if.then99_crit_edge, %sw.epilog.thread
  %wait_for_target.0216 = phi i32 [ -1, %sw.epilog.thread ], [ %wait_for_target.0, %sw.epilog.if.then99_crit_edge ]
  %wait_for_bus.0214 = phi i32 [ -1, %sw.epilog.thread ], [ %wait_for_bus.0, %sw.epilog.if.then99_crit_edge ]
  %cmd1.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 2
  %110 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmd1.i, align 4
  %112 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hostdata, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %host_lock.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %115) #11
  %call.i186 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %wait, i32 noundef 400) #11
  %116 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hostdata, align 4
  %host_lock3.i = getelementptr inbounds %struct.Scsi_Host, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %host_lock3.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %host_lock3.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %119) #11
  %wait4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 3
  %120 = ptrtoint ptr %wait4.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %wait4.i, align 4
  %host_scribble.i187 = getelementptr inbounds %struct.scsi_cmnd, ptr %111, i32 0, i32 23
  %121 = ptrtoint ptr %host_scribble.i187 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %host_scribble.i187, align 4
  %cmp.i = icmp eq ptr %122, inttoptr (i32 514 to ptr)
  br i1 %cmp.i, label %if.end113.thread, label %if.then99.if.end101_crit_edge

if.then99.if.end101_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.end113.thread:                                 ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  call void @scsi_done(ptr noundef %111) #11
  br label %land.lhs.true116

if.end101:                                        ; preds = %if.then99.if.end101_crit_edge, %sw.epilog.if.end101_crit_edge, %do.end36.if.end101_crit_edge
  %wait_for_target.0215 = phi i32 [ %wait_for_target.0, %sw.epilog.if.end101_crit_edge ], [ %wait_for_target.0216, %if.then99.if.end101_crit_edge ], [ -1, %do.end36.if.end101_crit_edge ]
  %wait_for_bus.0213 = phi i32 [ %wait_for_bus.0, %sw.epilog.if.end101_crit_edge ], [ %wait_for_bus.0214, %if.then99.if.end101_crit_edge ], [ -1, %do.end36.if.end101_crit_edge ]
  %result.3 = phi i32 [ %result.2, %sw.epilog.if.end101_crit_edge ], [ 8195, %if.then99.if.end101_crit_edge ], [ %result.0, %do.end36.if.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp102 = icmp ne i32 %action, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %result.3)
  %cmp104.not = icmp eq i32 %result.3, 8194
  %or.cond = or i1 %cmp102, %cmp104.not
  br i1 %or.cond, label %if.end113, label %do.end109

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %host_no111 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 1, i32 2
  %123 = ptrtoint ptr %host_no111 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %host_no111, align 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %124, i32 noundef %8, i32 noundef %10, i32 noundef %conv) #15
  br label %do.end127

if.end113:                                        ; preds = %if.end101
  br i1 %cmp104.not, label %if.end113.land.lhs.true116_crit_edge, label %if.end113.do.end127_crit_edge

if.end113.do.end127_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

if.end113.land.lhs.true116_crit_edge:             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end113.land.lhs.true116_crit_edge, %if.end113.thread
  %wait_for_target.0215228237 = phi i32 [ %wait_for_target.0216, %if.end113.thread ], [ %wait_for_target.0215, %if.end113.land.lhs.true116_crit_edge ]
  %wait_for_bus.0213229236 = phi i32 [ %wait_for_bus.0214, %if.end113.thread ], [ %wait_for_bus.0213, %if.end113.land.lhs.true116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %wait_for_bus.0213229236)
  %cmp117 = icmp sgt i32 %wait_for_bus.0213229236, -1
  br i1 %cmp117, label %if.then119, label %land.lhs.true116.do.end127_crit_edge

land.lhs.true116.do.end127_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

if.then119:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %wait_for_target.0215228237)
  %cmp5.i = icmp sgt i32 %wait_for_target.0215228237, -1
  %125 = getelementptr inbounds i8, ptr %wait.i.i, i32 4
  br label %for.body.i192

for.body.i192:                                    ; preds = %for.inc.i.for.body.i192_crit_edge, %if.then119
  %cnt.026.i = phi i32 [ 0, %if.then119 ], [ %inc.i200, %for.inc.i.for.body.i192_crit_edge ]
  %arrayidx.i190 = getelementptr %struct.scsi_qla_host, ptr %hostdata, i32 0, i32 12, i32 %cnt.026.i
  %126 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i190, align 4
  %tobool.not.i191 = icmp eq ptr %127, null
  br i1 %tobool.not.i191, label %for.body.i192.for.inc.i_crit_edge, label %if.then.i196

for.body.i192.for.inc.i_crit_edge:                ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i196:                                     ; preds = %for.body.i192
  %cmd1.i193 = getelementptr inbounds %struct.srb, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %cmd1.i193 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cmd1.i193, align 4
  %device.i194 = getelementptr inbounds %struct.scsi_cmnd, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %device.i194 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device.i194, align 4
  %channel.i195 = getelementptr inbounds %struct.scsi_device, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %channel.i195 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %channel.i195, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %wait_for_bus.0213229236)
  %cmp3.not.i = icmp eq i32 %133, %wait_for_bus.0213229236
  br i1 %cmp3.not.i, label %if.end.i197, label %if.then.i196.for.inc.i_crit_edge

if.then.i196.for.inc.i_crit_edge:                 ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i197:                                      ; preds = %if.then.i196
  br i1 %cmp5.i, label %land.lhs.true6.i, label %if.end.i197.if.end10.i_crit_edge

if.end.i197.if.end10.i_crit_edge:                 ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true6.i:                                 ; preds = %if.end.i197
  %id.i198 = getelementptr inbounds %struct.scsi_device, ptr %131, i32 0, i32 16
  %134 = ptrtoint ptr %id.i198 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %id.i198, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %wait_for_target.0215228237)
  %cmp8.not.i = icmp eq i32 %135, %wait_for_target.0215228237
  br i1 %cmp8.not.i, label %land.lhs.true6.i.if.end10.i_crit_edge, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true6.i.if.end10.i_crit_edge, %if.end.i197.if.end10.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait.i.i) #11
  %136 = call ptr @memset(ptr %125, i32 255, i32 52)
  %137 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %wait.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %125, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #11
  %wait1.i.i = getelementptr inbounds %struct.srb, ptr %127, i32 0, i32 2
  %138 = ptrtoint ptr %wait1.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %wait.i.i, ptr %wait1.i.i, align 4
  %139 = ptrtoint ptr %cmd1.i193 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cmd1.i193, align 4
  %141 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hostdata, align 4
  %host_lock.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %host_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %host_lock.i.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %144) #11
  %call.i.i.i199 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %wait.i.i, i32 noundef 400) #11
  %145 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hostdata, align 4
  %host_lock3.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %host_lock3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %host_lock3.i.i.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %148) #11
  %149 = ptrtoint ptr %wait1.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %wait1.i.i, align 4
  %host_scribble.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %140, i32 0, i32 23
  %150 = ptrtoint ptr %host_scribble.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %host_scribble.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %151, inttoptr (i32 514 to ptr)
  br i1 %cmp.i.i.i, label %qla1280_wait_for_single_command.exit.i, label %qla1280_wait_for_single_command.exit.thread.i

qla1280_wait_for_single_command.exit.thread.i:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i.i) #11
  br label %do.end127

qla1280_wait_for_single_command.exit.i:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @scsi_done(ptr noundef %140) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %qla1280_wait_for_single_command.exit.i, %land.lhs.true6.i.for.inc.i_crit_edge, %if.then.i196.for.inc.i_crit_edge, %for.body.i192.for.inc.i_crit_edge
  %inc.i200 = add nuw nsw i32 %cnt.026.i, 1
  %exitcond.not.i201 = icmp eq i32 %inc.i200, 512
  br i1 %exitcond.not.i201, label %for.inc.i.do.end127_crit_edge, label %for.inc.i.for.body.i192_crit_edge

for.inc.i.for.body.i192_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i192

for.inc.i.do.end127_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

do.end127:                                        ; preds = %for.inc.i.do.end127_crit_edge, %qla1280_wait_for_single_command.exit.thread.i, %land.lhs.true116.do.end127_crit_edge, %if.end113.do.end127_crit_edge, %do.end109
  %result.4 = phi i32 [ 8194, %land.lhs.true116.do.end127_crit_edge ], [ %result.3, %if.end113.do.end127_crit_edge ], [ %result.3, %do.end109 ], [ 8195, %qla1280_wait_for_single_command.exit.thread.i ], [ 8194, %for.inc.i.do.end127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait) #11
  ret i32 %result.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla1280_bus_reset(ptr noundef %ha, i32 noundef %bus) unnamed_addr #6 align 64 {
entry:
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #11
  %0 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %mb, i32 6
  %3 = call ptr @memset(ptr %2, i32 255, i32 10)
  %4 = load i32, ptr @qla1280_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %6, i32 noundef %bus) #15
  br label %if.end

if.end:                                           ; preds = %do.end3, %entry.if.end_crit_edge
  %bus_reset_delay = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus, i32 1
  %7 = ptrtoint ptr %bus_reset_delay to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_reset_delay, align 1
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 24, ptr %mb, align 2
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %0, align 2
  %conv6 = trunc i32 %bus to i16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv6, ptr %1, align 2
  %call9 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 7, ptr noundef nonnull %mb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  %failed_reset_count = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus, i32 2
  %12 = ptrtoint ptr %failed_reset_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %failed_reset_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp = icmp ugt i8 %13, 2
  br i1 %cmp, label %if.then16, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %scsi_bus_dead = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus, i32 8
  %14 = ptrtoint ptr %scsi_bus_dead to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %scsi_bus_dead, align 2
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %scsi_bus_dead, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then11.if.end19_crit_edge
  %15 = ptrtoint ptr %failed_reset_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %failed_reset_count, align 2
  %inc = add i8 %16, 1
  store i8 %inc, ptr %failed_reset_count, align 2
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ha, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %20) #11
  %conv23 = zext i8 %8 to i32
  %mul.i = mul nuw nsw i32 %conv23, 1000
  tail call void @msleep(i32 noundef %mul.i) #11
  %21 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ha, align 4
  %host_lock25 = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %host_lock25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_lock25, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %24) #11
  %scsi_bus_dead28 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus, i32 8
  %25 = ptrtoint ptr %scsi_bus_dead28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load29 = load i8, ptr %scsi_bus_dead28, align 2
  %failed_reset_count34 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus, i32 2
  %26 = ptrtoint ptr %failed_reset_count34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %failed_reset_count34, align 2
  %bf.clear38 = and i8 %bf.load29, 95
  store i8 %bf.clear38, ptr %scsi_bus_dead28, align 2
  tail call fastcc void @qla1280_marker(ptr noundef %ha, i32 noundef %bus, i32 noundef 0, i8 noundef zeroext 2)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #11
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext %mr, ptr nocapture noundef %mb) unnamed_addr #6 align 64 {
entry:
  %ret.i = alloca i16, align 2
  %ret2.i = alloca i16, align 2
  %wait = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait) #11
  %2 = getelementptr inbounds i8, ptr %wait, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #11
  %mailbox_wait = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 25
  %5 = ptrtoint ptr %mailbox_wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mailbox_wait, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #15
  br label %if.end

if.end:                                           ; preds = %do.end3, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %mailbox_wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wait, ptr %mailbox_wait, align 4
  %mailbox0 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 33
  %8 = and i8 %mr, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %do.body8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %mb to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mb, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mailbox0, i16 %11) #11, !srcloc !337
  br label %if.end11

if.end11:                                         ; preds = %do.body8, %if.end.if.end11_crit_edge
  %12 = and i8 %mr, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not.1 = icmp eq i8 %12, 0
  br i1 %tobool6.not.1, label %if.end11.if.end11.1_crit_edge, label %do.body8.1

if.end11.if.end11.1_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.1

do.body8.1:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14 = getelementptr i16, ptr %mb, i32 1
  %incdec.ptr = getelementptr %struct.device_reg, ptr %1, i32 0, i32 34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incdec.ptr14, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr, i16 %15) #11, !srcloc !337
  br label %if.end11.1

if.end11.1:                                       ; preds = %do.body8.1, %if.end11.if.end11.1_crit_edge
  %16 = and i8 %mr, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.2 = icmp eq i8 %16, 0
  br i1 %tobool6.not.2, label %if.end11.1.if.end11.2_crit_edge, label %do.body8.2

if.end11.1.if.end11.2_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.2

do.body8.2:                                       ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14.1 = getelementptr i16, ptr %mb, i32 2
  %incdec.ptr.1 = getelementptr %struct.device_reg, ptr %1, i32 0, i32 35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %incdec.ptr14.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %incdec.ptr14.1, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr.1, i16 %19) #11, !srcloc !337
  br label %if.end11.2

if.end11.2:                                       ; preds = %do.body8.2, %if.end11.1.if.end11.2_crit_edge
  %20 = and i8 %mr, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not.3 = icmp eq i8 %20, 0
  br i1 %tobool6.not.3, label %if.end11.2.if.end11.3_crit_edge, label %do.body8.3

if.end11.2.if.end11.3_crit_edge:                  ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.3

do.body8.3:                                       ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14.2 = getelementptr i16, ptr %mb, i32 3
  %incdec.ptr.2 = getelementptr %struct.device_reg, ptr %1, i32 0, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %incdec.ptr14.2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %incdec.ptr14.2, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr.2, i16 %23) #11, !srcloc !337
  br label %if.end11.3

if.end11.3:                                       ; preds = %do.body8.3, %if.end11.2.if.end11.3_crit_edge
  %24 = and i8 %mr, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not.4 = icmp eq i8 %24, 0
  br i1 %tobool6.not.4, label %if.end11.3.if.end11.4_crit_edge, label %do.body8.4

if.end11.3.if.end11.4_crit_edge:                  ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.4

do.body8.4:                                       ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14.3 = getelementptr i16, ptr %mb, i32 4
  %incdec.ptr.3 = getelementptr %struct.device_reg, ptr %1, i32 0, i32 37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %incdec.ptr14.3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr14.3, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr.3, i16 %27) #11, !srcloc !337
  br label %if.end11.4

if.end11.4:                                       ; preds = %do.body8.4, %if.end11.3.if.end11.4_crit_edge
  %28 = and i8 %mr, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool6.not.5 = icmp eq i8 %28, 0
  br i1 %tobool6.not.5, label %if.end11.4.if.end11.5_crit_edge, label %do.body8.5

if.end11.4.if.end11.5_crit_edge:                  ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.5

do.body8.5:                                       ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14.4 = getelementptr i16, ptr %mb, i32 5
  %incdec.ptr.4 = getelementptr %struct.device_reg, ptr %1, i32 0, i32 38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %incdec.ptr14.4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %incdec.ptr14.4, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr.4, i16 %31) #11, !srcloc !337
  br label %if.end11.5

if.end11.5:                                       ; preds = %do.body8.5, %if.end11.4.if.end11.5_crit_edge
  %32 = and i8 %mr, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool6.not.6 = icmp eq i8 %32, 0
  br i1 %tobool6.not.6, label %if.end11.5.if.end11.6_crit_edge, label %do.body8.6

if.end11.5.if.end11.6_crit_edge:                  ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.6

do.body8.6:                                       ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14.5 = getelementptr i16, ptr %mb, i32 6
  %incdec.ptr.5 = getelementptr %struct.device_reg, ptr %1, i32 0, i32 39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %incdec.ptr14.5 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %incdec.ptr14.5, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr.5, i16 %35) #11, !srcloc !337
  br label %if.end11.6

if.end11.6:                                       ; preds = %do.body8.6, %if.end11.5.if.end11.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mr)
  %tobool6.not.7 = icmp sgt i8 %mr, -1
  br i1 %tobool6.not.7, label %if.end11.6.if.end11.7_crit_edge, label %do.body8.7

if.end11.6.if.end11.7_crit_edge:                  ; preds = %if.end11.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.7

do.body8.7:                                       ; preds = %if.end11.6
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr14.6 = getelementptr i16, ptr %mb, i32 7
  %incdec.ptr.6 = getelementptr %struct.device_reg, ptr %1, i32 0, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %incdec.ptr14.6 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %incdec.ptr14.6, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %incdec.ptr.6, i16 %38) #11, !srcloc !337
  br label %if.end11.7

if.end11.7:                                       ; preds = %do.body8.7, %if.end11.6.if.end11.7_crit_edge
  %mailbox_timer = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 26
  call void @init_timer_key(ptr noundef %mailbox_timer, ptr noundef nonnull @qla1280_mailbox_timeout, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @qla1280_mailbox_command.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %39, 2000
  %call19 = call i32 @mod_timer(ptr noundef %mailbox_timer, i32 noundef %add) #11
  %40 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ha, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %43) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  call void @arm_heavy_mb() #11
  %host_cmd = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 42
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd, i16 80) #11, !srcloc !337
  %istatus = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret.i)
  %44 = ptrtoint ptr %ret.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store volatile i16 -1, ptr %ret.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret2.i)
  %45 = ptrtoint ptr %ret2.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store volatile i16 -1, ptr %ret2.i, align 2
  %46 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %47 = call i16 @llvm.bswap.i16(i16 %46) #11
  %48 = ptrtoint ptr %ret.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store volatile i16 %47, ptr %ret.i, align 2
  %49 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %50 = call i16 @llvm.bswap.i16(i16 %49) #11
  %51 = ptrtoint ptr %ret2.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store volatile i16 %50, ptr %ret2.i, align 2
  %52 = ptrtoint ptr %ret.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i = load volatile i16, ptr %ret.i, align 2
  %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i = load volatile i16, ptr %ret2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i, i16 %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i)
  %cmp.i = icmp eq i16 %ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i, %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i
  br i1 %cmp.i, label %if.end11.7.qla1280_debounce_register.exit_crit_edge, label %if.end11.7.do.body.i_crit_edge

if.end11.7.do.body.i_crit_edge:                   ; preds = %if.end11.7
  br label %do.body.i

if.end11.7.qla1280_debounce_register.exit_crit_edge: ; preds = %if.end11.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end11.7.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !342
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !343
  %53 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %54 = call i16 @llvm.bswap.i16(i16 %53) #11
  %55 = ptrtoint ptr %ret.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store volatile i16 %54, ptr %ret.i, align 2
  %56 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %57 = call i16 @llvm.bswap.i16(i16 %56) #11
  %58 = ptrtoint ptr %ret2.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store volatile i16 %57, ptr %ret2.i, align 2
  %59 = ptrtoint ptr %ret.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %ret.i.0.ret.i.0.ret.0.ret.0.ret.0.28.i = load volatile i16, ptr %ret.i, align 2
  %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0.26.i = load volatile i16, ptr %ret2.i, align 2
  %cmp22.not.i = icmp eq i16 %ret.i.0.ret.i.0.ret.0.ret.0.ret.0.28.i, %ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0.26.i
  br i1 %cmp22.not.i, label %do.body.i.qla1280_debounce_register.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i.qla1280_debounce_register.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit

qla1280_debounce_register.exit:                   ; preds = %do.body.i.qla1280_debounce_register.exit_crit_edge, %if.end11.7.qla1280_debounce_register.exit_crit_edge
  %60 = ptrtoint ptr %ret.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %ret.i.0.ret.i.0.ret.0.ret.0.retval.0.i = load volatile i16, ptr %ret.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret2.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret.i)
  call void @wait_for_completion(ptr noundef nonnull %wait) #11
  %call25 = call i32 @del_timer_sync(ptr noundef %mailbox_timer) #11
  %61 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ha, align 4
  %host_lock27 = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %host_lock27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host_lock27, align 4
  call void @_raw_spin_lock_irq(ptr noundef %64) #11
  %65 = ptrtoint ptr %mailbox_wait to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %mailbox_wait, align 4
  %mailbox_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14
  %66 = ptrtoint ptr %mailbox_out to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load volatile i16, ptr %mailbox_out, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %67)
  %cmp30.not = icmp eq i16 %67, 16384
  br i1 %cmp30.not, label %qla1280_debounce_register.exit.if.end90_crit_edge, label %do.end35

qla1280_debounce_register.exit.if.end90_crit_edge: ; preds = %qla1280_debounce_register.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.end35:                                         ; preds = %qla1280_debounce_register.exit
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %mb to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %mb, align 2
  %conv38 = zext i16 %69 to i32
  %70 = ptrtoint ptr %mailbox_out to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load volatile i16, ptr %mailbox_out, align 4
  %conv41 = zext i16 %71 to i32
  %72 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %conv45 = zext i16 %73 to i32
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv45) #15
  %74 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0) #11, !srcloc !338
  %75 = call i16 @llvm.bswap.i16(i16 %74)
  %conv55 = zext i16 %75 to i32
  %mailbox1 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 34
  %76 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox1) #11, !srcloc !338
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %conv59 = zext i16 %77 to i32
  %mailbox2 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 35
  %78 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox2) #11, !srcloc !338
  %79 = call i16 @llvm.bswap.i16(i16 %78)
  %conv63 = zext i16 %79 to i32
  %mailbox3 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 36
  %80 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox3) #11, !srcloc !338
  %81 = call i16 @llvm.bswap.i16(i16 %80)
  %conv67 = zext i16 %81 to i32
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %conv55, i32 noundef %conv59, i32 noundef %conv63, i32 noundef %conv67) #15
  %mailbox4 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 37
  %82 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox4) #11, !srcloc !338
  %83 = call i16 @llvm.bswap.i16(i16 %82)
  %conv76 = zext i16 %83 to i32
  %mailbox5 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 38
  %84 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox5) #11, !srcloc !338
  %85 = call i16 @llvm.bswap.i16(i16 %84)
  %conv80 = zext i16 %85 to i32
  %mailbox6 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 39
  %86 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox6) #11, !srcloc !338
  %87 = call i16 @llvm.bswap.i16(i16 %86)
  %conv84 = zext i16 %87 to i32
  %mailbox7 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 40
  %88 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox7) #11, !srcloc !338
  %89 = call i16 @llvm.bswap.i16(i16 %88)
  %conv88 = zext i16 %89 to i32
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv76, i32 noundef %conv80, i32 noundef %conv84, i32 noundef %conv88) #15
  br label %if.end90

if.end90:                                         ; preds = %do.end35, %qla1280_debounce_register.exit.if.end90_crit_edge
  %status.0 = phi i32 [ 1, %do.end35 ], [ 0, %qla1280_debounce_register.exit.if.end90_crit_edge ]
  %90 = call ptr @memcpy(ptr %mb, ptr %mailbox_out, i32 16)
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load = load volatile i32, ptr %flags, align 4
  %92 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool93.not = icmp eq i32 %92, 0
  br i1 %tobool93.not, label %if.end90.if.end95_crit_edge, label %if.then94

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_rst_aen(ptr noundef %ha)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end90.if.end95_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait) #11
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla1280_mailbox_timeout(ptr noundef %t) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr i8, ptr %t, i32 -2168
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %mailbox0 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 33
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0) #11, !srcloc !338
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %mailbox_out = getelementptr i8, ptr %t, i32 -60
  %4 = ptrtoint ptr %mailbox_out to i32
  call void @__asan_store2_noabort(i32 %4)
  store volatile i16 %3, ptr %mailbox_out, align 4
  %host_no = getelementptr i8, ptr %t, i32 -2160
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %7 = load volatile i16, ptr %mailbox_out, align 4
  %conv = zext i16 %7 to i32
  %ictrl = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl) #11, !srcloc !338
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv8 = zext i16 %9 to i32
  %istatus = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 5
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv12 = zext i16 %11 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %6, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv12) #15
  %mailbox_wait = getelementptr i8, ptr %t, i32 -4
  %12 = ptrtoint ptr %mailbox_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mailbox_wait, align 4
  tail call void @complete(ptr noundef %13) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla1280_rst_aen(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load volatile i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %entry.do.end45_crit_edge, label %land.lhs.true

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load2 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %bf.load2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.do.end45_crit_edge

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load7 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %bf.load7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %if.then, label %land.lhs.true5.do.end45_crit_edge

land.lhs.true5.do.end45_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

if.then:                                          ; preds = %land.lhs.true5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load12 = load volatile i32, ptr %flags, align 4
  %bf.set = or i32 %bf.load12, 268435456
  store volatile i32 %bf.set, ptr %flags, align 4
  %bf.load1565 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %bf.load1565, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not66 = icmp eq i32 %6, 0
  br i1 %tobool18.not66, label %if.then.do.end45_crit_edge, label %while.body.lr.ph

if.then.do.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

while.body.lr.ph:                                 ; preds = %if.then
  %ports = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %iobase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %req_ring_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 18
  %request_ring_ptr10.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 17
  %request_ring.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load20 = load volatile i32, ptr %flags, align 4
  %bf.clear21 = and i32 %bf.load20, -1073741825
  store volatile i32 %bf.clear21, ptr %flags, align 4
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp61.not = icmp eq i8 %9, 0
  br i1 %cmp61.not, label %while.body.for.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  br label %land.rhs

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %while.body.land.rhs_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.land.rhs_crit_edge ], [ 0, %while.body.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load26 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %bf.load26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool29.not, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %reset_marker = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %indvars.iv, i32 8
  %12 = ptrtoint ptr %reset_marker to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load30 = load i8, ptr %reset_marker, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load30)
  %tobool32.not = icmp sgt i8 %bf.load30, -1
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.then33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then33:                                        ; preds = %for.body
  %bf.clear39 = and i8 %bf.load30, 127
  %13 = ptrtoint ptr %reset_marker to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear39, ptr %reset_marker, align 2
  %call.i = tail call fastcc ptr @qla1280_req_pkt(ptr noundef %ha) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then33.for.inc_crit_edge, label %if.then.i

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i:                                        ; preds = %if.then33
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %call.i, align 4
  %lun1.i = getelementptr inbounds %struct.mrk_entry, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %lun1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %lun1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool2.not.i = icmp eq i32 %indvars.iv, 0
  %conv3.i = select i1 %tobool2.not.i, i8 0, i8 -128
  %target.i = getelementptr inbounds %struct.mrk_entry, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %target.i, align 1
  %modifier.i = getelementptr inbounds %struct.mrk_entry, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %modifier.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %modifier.i, align 2
  %entry_status.i = getelementptr inbounds %struct.mrk_entry, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %entry_status.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %entry_status.i, align 1
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %21 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %req_ring_index.i, align 4
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr %req_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 255
  br i1 %cmp.i, label %if.then.i60, label %if.else.i

if.then.i60:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %req_ring_index.i, align 4
  %24 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %request_ring.i, align 4
  br label %qla1280_isp_cmd.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %request_ring_ptr10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %request_ring_ptr10.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %27, i32 1
  br label %qla1280_isp_cmd.exit

qla1280_isp_cmd.exit:                             ; preds = %if.else.i, %if.then.i60
  %storemerge = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %25, %if.then.i60 ]
  %28 = ptrtoint ptr %request_ring_ptr10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %storemerge, ptr %request_ring_ptr10.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %req_ring_index.i, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #11
  %mailbox4.i = getelementptr inbounds %struct.device_reg, ptr %20, i32 0, i32 37
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mailbox4.i, i16 %31) #11, !srcloc !337
  br label %for.inc

for.inc:                                          ; preds = %qla1280_isp_cmd.exit, %if.then33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ports, align 2
  %34 = zext i8 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %while.body.for.end_crit_edge
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load15 = load volatile i32, ptr %flags, align 4
  %36 = and i32 %bf.load15, 1073741824
  %tobool18.not = icmp eq i32 %36, 0
  br i1 %tobool18.not, label %for.end.do.end45_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.end.do.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.end45:                                         ; preds = %for.end.do.end45_crit_edge, %if.then.do.end45_crit_edge, %land.lhs.true5.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %entry.do.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla1280_marker(ptr noundef %ha, i32 noundef %bus, i32 noundef %id, i8 noundef zeroext %type) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %req_q_cnt.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 19
  %mailbox4.i = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 37
  %req_ring_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %entry
  %timer.0.i10 = phi i32 [ 15000000, %entry ], [ %dec27.i, %if.end26.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %req_q_cnt.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req_q_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 0
  br i1 %cmp.not.i, label %for.body.i.if.end26.i_crit_edge, label %if.then.i

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then.i:                                        ; preds = %for.body.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox4.i) #11, !srcloc !338
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #11
  %6 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %req_ring_index.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp4.i = icmp ugt i16 %5, %7
  %.p.v = select i1 %cmp4.i, i16 0, i16 255
  %.p = sub i16 %.p.v, %7
  %8 = add i16 %.p, %5
  %9 = ptrtoint ptr %req_q_cnt.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %req_q_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp20.not.i = icmp eq i16 %8, 0
  br i1 %cmp20.not.i, label %if.then.i.if.end26.i_crit_edge, label %qla1280_req_pkt.exit

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then.i.if.end26.i_crit_edge, %for.body.i.if.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #11
  tail call fastcc void @qla1280_poll(ptr noundef %ha) #11
  %dec27.i = add nsw i32 %timer.0.i10, -1
  %tobool.not.i = icmp eq i32 %dec27.i, 0
  br i1 %tobool.not.i, label %if.end26.i.do.end6_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end26.i.do.end6_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

qla1280_req_pkt.exit:                             ; preds = %if.then.i
  %dec.i = add i16 %8, -1
  %11 = ptrtoint ptr %req_q_cnt.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %dec.i, ptr %req_q_cnt.i, align 2
  %request_ring_ptr.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 17
  %12 = ptrtoint ptr %request_ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request_ring_ptr.i, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 64)
  %15 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %req_ring_index.i, align 4
  %conv25.i = trunc i16 %16 to i8
  %sys_define.i = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %sys_define.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25.i, ptr %sys_define.i, align 2
  %entry_count.i = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %entry_count.i, align 1
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %qla1280_req_pkt.exit.do.end6_crit_edge, label %if.then

qla1280_req_pkt.exit.do.end6_crit_edge:           ; preds = %qla1280_req_pkt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

if.then:                                          ; preds = %qla1280_req_pkt.exit
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %13, align 4
  %lun1 = getelementptr inbounds %struct.mrk_entry, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %lun1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %lun1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus)
  %tobool2.not = icmp eq i32 %bus, 0
  %or = or i32 %id, 128
  %cond = select i1 %tobool2.not, i32 %id, i32 %or
  %conv3 = trunc i32 %cond to i8
  %target = getelementptr inbounds %struct.mrk_entry, ptr %13, i32 0, i32 6
  %21 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3, ptr %target, align 1
  %modifier = getelementptr inbounds %struct.mrk_entry, ptr %13, i32 0, i32 7
  %22 = ptrtoint ptr %modifier to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %type, ptr %modifier, align 2
  %entry_status = getelementptr inbounds %struct.mrk_entry, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %entry_status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %entry_status, align 1
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %26 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %req_ring_index.i, align 4
  %inc.i = add i16 %27, 1
  store i16 %inc.i, ptr %req_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 255
  br i1 %cmp.i, label %if.then.i4, label %if.else.i5

if.then.i4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %req_ring_index.i, align 4
  %request_ring.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 16
  %29 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %request_ring.i, align 4
  br label %qla1280_isp_cmd.exit

if.else.i5:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %request_ring_ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %request_ring_ptr.i, align 4
  %incdec.ptr.i = getelementptr %struct.cmd_a64_entry_t, ptr %32, i32 1
  br label %qla1280_isp_cmd.exit

qla1280_isp_cmd.exit:                             ; preds = %if.else.i5, %if.then.i4
  %storemerge = phi ptr [ %incdec.ptr.i, %if.else.i5 ], [ %30, %if.then.i4 ]
  %33 = ptrtoint ptr %request_ring_ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %storemerge, ptr %request_ring_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %req_ring_index.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %req_ring_index.i, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #11
  %mailbox4.i6 = getelementptr inbounds %struct.device_reg, ptr %25, i32 0, i32 37
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mailbox4.i6, i16 %36) #11, !srcloc !337
  br label %do.end6

do.end6:                                          ; preds = %qla1280_isp_cmd.exit, %qla1280_req_pkt.exit.do.end6_crit_edge, %if.end26.i.do.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qla1280_req_pkt(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  %done_q.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %req_q_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 19
  %mailbox4 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 37
  %req_ring_index = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 18
  %2 = getelementptr inbounds %struct.list_head, ptr %done_q.i, i32 0, i32 1
  %mailbox_wait.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 25
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %qla1280_poll.exit.for.body_crit_edge, %entry
  %timer.057 = phi i32 [ 15000000, %entry ], [ %dec27, %qla1280_poll.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %req_q_cnt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %req_q_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %for.body.if.end26_crit_edge, label %if.then

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then:                                          ; preds = %for.body
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox4) #11, !srcloc !338
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %req_ring_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %req_ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp4 = icmp ugt i16 %6, %8
  %storemerge.p.v = select i1 %cmp4, i16 0, i16 255
  %storemerge.p = sub i16 %storemerge.p.v, %8
  %storemerge = add i16 %storemerge.p, %6
  %9 = ptrtoint ptr %req_q_cnt to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %storemerge, ptr %req_q_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %storemerge)
  %cmp20.not = icmp eq i16 %storemerge, 0
  br i1 %cmp20.not, label %if.then.if.end26_crit_edge, label %if.then22

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i16 %storemerge, -1
  %10 = ptrtoint ptr %req_q_cnt to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %dec, ptr %req_q_cnt, align 2
  %request_ring_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 17
  %11 = ptrtoint ptr %request_ring_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_ring_ptr, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 64)
  %14 = ptrtoint ptr %req_ring_index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %req_ring_index, align 4
  %conv25 = trunc i16 %15 to i8
  %sys_define = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %sys_define to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv25, ptr %sys_define, align 2
  %entry_count = getelementptr inbounds %struct.cmd_a64_entry_t, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %entry_count to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %entry_count, align 1
  br label %for.end

if.end26:                                         ; preds = %if.then.if.end26_crit_edge, %for.body.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #11
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done_q.i) #11
  %21 = ptrtoint ptr %done_q.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %done_q.i, ptr %done_q.i, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %done_q.i, ptr %2, align 4
  %istatus.i = getelementptr inbounds %struct.device_reg, ptr %20, i32 0, i32 5
  %23 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus.i) #11, !srcloc !338
  %24 = and i16 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i, label %if.end26.if.end.i_crit_edge, label %if.then.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_isr(ptr noundef %ha, ptr noundef nonnull %done_q.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end26.if.end.i_crit_edge
  %25 = ptrtoint ptr %mailbox_wait.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mailbox_wait.i, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load volatile i32, ptr %flags.i, align 4
  %28 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then4.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_rst_aen(ptr noundef %ha) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then2.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %29 = ptrtoint ptr %done_q.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %done_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %done_q.i
  br i1 %cmp.i.not.i, label %if.end6.i.qla1280_poll.exit_crit_edge, label %if.then9.i

if.end6.i.qla1280_poll.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_poll.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_done(ptr noundef %ha) #11
  br label %qla1280_poll.exit

qla1280_poll.exit:                                ; preds = %if.then9.i, %if.end6.i.qla1280_poll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done_q.i) #11
  %dec27 = add nsw i32 %timer.057, -1
  %tobool.not = icmp eq i32 %dec27, 0
  br i1 %tobool.not, label %qla1280_poll.exit.for.end_crit_edge, label %qla1280_poll.exit.for.body_crit_edge

qla1280_poll.exit.for.body_crit_edge:             ; preds = %qla1280_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

qla1280_poll.exit.for.end_crit_edge:              ; preds = %qla1280_poll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %qla1280_poll.exit.for.end_crit_edge, %if.then22
  %pkt.0 = phi ptr [ %12, %if.then22 ], [ null, %qla1280_poll.exit.for.end_crit_edge ]
  ret ptr %pkt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla1280_poll(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  %done_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done_q) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %done_q, i32 0, i32 1
  %3 = ptrtoint ptr %done_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %done_q, ptr %done_q, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %done_q, ptr %2, align 4
  %istatus = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 5
  %5 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus) #11, !srcloc !338
  %6 = and i16 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_isr(ptr noundef %ha, ptr noundef nonnull %done_q)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mailbox_wait = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 25
  %7 = ptrtoint ptr %mailbox_wait to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mailbox_wait, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load volatile i32, ptr %flags, align 4
  %10 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then4

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_rst_aen(ptr noundef %ha)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %11 = ptrtoint ptr %done_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %done_q, align 4
  %cmp.i.not = icmp eq ptr %12, %done_q
  br i1 %cmp.i.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla1280_done(ptr noundef %ha)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done_q) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla1280_isr(ptr noundef %ha, ptr noundef %done_q) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %istatus1 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 5
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %istatus1) #11, !srcloc !338
  %3 = and i16 %2, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mailbox5 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 38
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox5) #11, !srcloc !338
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %semaphore = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 6
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %semaphore) #11, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool13.not = icmp eq i16 %7, 0
  br i1 %tobool13.not, label %do.body170, label %if.then14

if.then14:                                        ; preds = %if.end
  %mailbox0 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 33
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0) #11, !srcloc !338
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %mailbox1 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 34
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox1) #11, !srcloc !338
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %mailbox2 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 35
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox2) #11, !srcloc !338
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 8320, i16 %8)
  %cmp.not = icmp eq i16 %8, 8320
  br i1 %cmp.not, label %if.then14.do.body48_crit_edge, label %if.then29

if.then14.do.body48_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

if.then29:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %mailbox3 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 36
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox3) #11, !srcloc !338
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %mailbox4 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 37
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox4) #11, !srcloc !338
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %mailbox6 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 39
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox6) #11, !srcloc !338
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %mailbox7 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 40
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox7) #11, !srcloc !338
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  br label %do.body48

do.body48:                                        ; preds = %if.then29, %if.then14.do.body48_crit_edge
  %mailbox.sroa.29.0 = phi i16 [ -1, %if.then14.do.body48_crit_edge ], [ %21, %if.then29 ]
  %mailbox.sroa.25.0 = phi i16 [ -1, %if.then14.do.body48_crit_edge ], [ %19, %if.then29 ]
  %mailbox.sroa.19.0 = phi i16 [ -1, %if.then14.do.body48_crit_edge ], [ %17, %if.then29 ]
  %mailbox.sroa.16.0 = phi i16 [ -1, %if.then14.do.body48_crit_edge ], [ %15, %if.then29 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %semaphore, i16 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  tail call void @arm_heavy_mb() #11
  %host_cmd = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd, i16 112) #11, !srcloc !337
  %22 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.174)
  switch i16 %9, label %sw.default [
    i16 -32736, label %do.end62
    i16 -32767, label %sw.bb87
    i16 -32766, label %do.end105
    i16 -32765, label %do.end117
    i16 -32764, label %do.end123
    i16 -32763, label %do.body48.if.end174_crit_edge
    i16 -32762, label %do.body48.if.end174_crit_edge357
    i16 -32761, label %do.end137
    i16 -32754, label %do.body48.if.end174_crit_edge358
  ]

do.body48.if.end174_crit_edge358:                 ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

do.body48.if.end174_crit_edge357:                 ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

do.body48.if.end174_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

do.end62:                                         ; preds = %do.body48
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load volatile i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool63.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool63.not, label %do.end62.if.end174_crit_edge, label %if.then64

do.end62.if.end174_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then64:                                        ; preds = %do.end62
  %24 = zext i16 %12 to i32
  %25 = zext i16 %10 to i32
  %26 = shl nuw i32 %25, 16
  %27 = or i32 %26, %24
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %28)
  %cmp69 = icmp ult i32 %28, 512
  br i1 %cmp69, label %if.end73, label %if.then64.do.end82_crit_edge

if.then64.do.end82_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

if.end73:                                         ; preds = %if.then64
  %arrayidx72 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 12, i32 %28
  %29 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx72, align 4
  %tobool74.not = icmp eq ptr %30, null
  br i1 %tobool74.not, label %if.end73.do.end82_crit_edge, label %if.then75

if.end73.do.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

if.then75:                                        ; preds = %if.end73
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx72, align 4
  %cmd = getelementptr inbounds %struct.srb, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %result, align 4
  %35 = load ptr, ptr %cmd, align 4
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 514 to ptr), ptr %host_scribble, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %done_q, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %30, ptr noundef %38, ptr noundef %done_q) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then75.if.end174_crit_edge

if.then75.if.end174_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.end.i.i:                                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %30, ptr %prev.i, align 4
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %done_q, ptr %30, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %30, ptr %38, align 4
  br label %if.end174

do.end82:                                         ; preds = %if.end73.do.end82_crit_edge, %if.then64.do.end82_crit_edge
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #15
  br label %if.end174

sw.bb87:                                          ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %flags88 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %43 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load89 = load volatile i32, ptr %flags88, align 4
  %bf.set = or i32 %bf.load89, 1073741824
  store volatile i32 %bf.set, ptr %flags88, align 4
  %44 = and i16 %mailbox.sroa.25.0, 1
  %and92 = zext i16 %44 to i32
  %reset_marker = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %and92, i32 8
  %45 = ptrtoint ptr %reset_marker to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load94 = load i8, ptr %reset_marker, align 2
  %bf.set96 = or i8 %bf.load94, -128
  store i8 %bf.set96, ptr %reset_marker, align 2
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %and92) #15
  br label %if.end174

do.end105:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %conv108 = zext i16 %11 to i32
  %conv110 = zext i16 %13 to i32
  %conv112 = zext i16 %mailbox.sroa.16.0 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv108, i32 noundef %conv110, i32 noundef %conv112) #15
  br label %if.end174

do.end117:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #15
  br label %if.end174

do.end123:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #15
  br label %if.end174

do.end137:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #15
  %flags140 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %46 = ptrtoint ptr %flags140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load141 = load volatile i32, ptr %flags140, align 4
  %bf.set143 = or i32 %bf.load141, 1073741824
  store volatile i32 %bf.set143, ptr %flags140, align 4
  %47 = and i16 %mailbox.sroa.25.0, 1
  %and146 = zext i16 %47 to i32
  %reset_marker149 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %and146, i32 8
  %48 = ptrtoint ptr %reset_marker149 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load150 = load i8, ptr %reset_marker149, align 2
  %bf.set152 = or i8 %bf.load150, -128
  store i8 %bf.set152, ptr %reset_marker149, align 2
  br label %if.end174

sw.default:                                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp159 = icmp sgt i16 %9, -1
  br i1 %cmp159, label %if.then161, label %sw.default.if.end174_crit_edge

sw.default.if.end174_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then161:                                       ; preds = %sw.default
  %mailbox_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14
  %49 = ptrtoint ptr %mailbox_out to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %9, ptr %mailbox_out, align 4
  %mailbox.sroa.8.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %mailbox.sroa.8.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %11, ptr %mailbox.sroa.8.0.mailbox_out.sroa_idx, align 2
  %mailbox.sroa.12.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 2
  %51 = ptrtoint ptr %mailbox.sroa.12.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %13, ptr %mailbox.sroa.12.0.mailbox_out.sroa_idx, align 4
  %mailbox.sroa.16.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 3
  %52 = ptrtoint ptr %mailbox.sroa.16.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %mailbox.sroa.16.0, ptr %mailbox.sroa.16.0.mailbox_out.sroa_idx, align 2
  %mailbox.sroa.19.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 4
  %53 = ptrtoint ptr %mailbox.sroa.19.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %mailbox.sroa.19.0, ptr %mailbox.sroa.19.0.mailbox_out.sroa_idx, align 4
  %mailbox.sroa.21.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 5
  %54 = ptrtoint ptr %mailbox.sroa.21.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %5, ptr %mailbox.sroa.21.0.mailbox_out.sroa_idx, align 2
  %mailbox.sroa.25.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 6
  %55 = ptrtoint ptr %mailbox.sroa.25.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %mailbox.sroa.25.0, ptr %mailbox.sroa.25.0.mailbox_out.sroa_idx, align 4
  %mailbox.sroa.29.0.mailbox_out.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 14, i32 7
  %56 = ptrtoint ptr %mailbox.sroa.29.0.mailbox_out.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %mailbox.sroa.29.0, ptr %mailbox.sroa.29.0.mailbox_out.sroa_idx, align 2
  %mailbox_wait = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 25
  %57 = ptrtoint ptr %mailbox_wait to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mailbox_wait, align 4
  %cmp163.not = icmp eq ptr %58, null
  br i1 %cmp163.not, label %if.then161.if.end174_crit_edge, label %if.then165

if.then161.if.end174_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then165:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef nonnull %58) #11
  br label %if.end174

do.body170:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  tail call void @arm_heavy_mb() #11
  %host_cmd173 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd173, i16 112) #11, !srcloc !337
  br label %if.end174

if.end174:                                        ; preds = %do.body170, %if.then165, %if.then161.if.end174_crit_edge, %sw.default.if.end174_crit_edge, %do.end137, %do.end123, %do.end117, %do.end105, %sw.bb87, %do.end82, %if.end.i.i, %if.then75.if.end174_crit_edge, %do.end62.if.end174_crit_edge, %do.body48.if.end174_crit_edge, %do.body48.if.end174_crit_edge357, %do.body48.if.end174_crit_edge358
  %flags175 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %59 = ptrtoint ptr %flags175 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load176 = load volatile i32, ptr %flags175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load176)
  %tobool178.not = icmp sgt i32 %bf.load176, -1
  br i1 %tobool178.not, label %if.end174.cleanup_crit_edge, label %land.lhs.true

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end174
  %mailbox_wait179 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 25
  %60 = ptrtoint ptr %mailbox_wait179 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mailbox_wait179, align 4
  %tobool180.not = icmp ne ptr %61, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %5)
  %cmp188 = icmp ugt i16 %5, 62
  %or.cond = select i1 %tobool180.not, i1 true, i1 %cmp188
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %while.cond.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %land.lhs.true
  %rsp_ring_index = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 23
  %62 = ptrtoint ptr %rsp_ring_index to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rsp_ring_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %5)
  %cmp195.not356 = icmp eq i16 %63, %5
  br i1 %cmp195.not356, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %response_ring_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 22
  %prev.i.i345 = getelementptr inbounds %struct.list_head, ptr %done_q, i32 0, i32 1
  %response_ring = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %if.end270.while.body_crit_edge, %while.body.lr.ph
  %64 = ptrtoint ptr %response_ring_ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %response_ring_ptr, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp236 = icmp eq i8 %67, 3
  br i1 %cmp236, label %if.then250, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %while.body
  %entry_status239 = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 3
  %68 = ptrtoint ptr %entry_status239 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %entry_status239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool241.not = icmp eq i8 %69, 0
  br i1 %tobool241.not, label %lor.lhs.false238.if.end270_crit_edge, label %if.else251

lor.lhs.false238.if.end270_crit_edge:             ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

if.then250:                                       ; preds = %while.body
  %handle1.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 4
  %70 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %handle1.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  %scsi_status2.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 5
  %73 = ptrtoint ptr %scsi_status2.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %scsi_status2.i, align 4
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #11
  %comp_status3.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 6
  %76 = ptrtoint ptr %comp_status3.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %comp_status3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %72)
  %cmp.i = icmp ult i32 %72, 512
  br i1 %cmp.i, label %if.end.i, label %if.then250.do.end7.i_crit_edge

if.then250.do.end7.i_crit_edge:                   ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.end.i:                                         ; preds = %if.then250
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 12, i32 %72
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %if.end.i.do.end7.i_crit_edge, label %if.end8.i

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i.do.end7.i_crit_edge, %if.then250.do.end7.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #15
  br label %if.end252

if.end8.i:                                        ; preds = %if.end.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx.i, align 4
  %cmd11.i = getelementptr inbounds %struct.srb, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %cmd11.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd11.i, align 4
  %conv20.i = zext i16 %75 to i32
  %trunc.i = trunc i16 %75 to i8
  %83 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %trunc.i, label %if.else31.i [
    i8 40, label %if.end8.i.if.then28.i_crit_edge
    i8 8, label %if.end8.i.if.then28.i_crit_edge359
  ]

if.end8.i.if.then28.i_crit_edge359:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28.i

if.end8.i.if.then28.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28.i

if.then28.i:                                      ; preds = %if.end8.i.if.then28.i_crit_edge, %if.end8.i.if.then28.i_crit_edge359
  %and.i = and i32 %conv20.i, 255
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 24
  %84 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and.i, ptr %result.i, align 4
  br label %if.end63.i

if.else31.i:                                      ; preds = %if.end8.i
  %85 = ptrtoint ptr %comp_status3.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %comp_status3.i, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #11
  %residual_length3.i.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 11
  %88 = ptrtoint ptr %residual_length3.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %residual_length3.i.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #11
  %91 = ptrtoint ptr %scsi_status2.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %scsi_status2.i, align 4
  %93 = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %87, label %sw.default.i.i [
    i16 0, label %if.else31.i.qla1280_return_status.exit.i_crit_edge
    i16 1, label %sw.bb5.i.i
    i16 4, label %sw.bb36.i.i
    i16 5, label %sw.bb37.i.i
    i16 6, label %sw.bb38.i.i
    i16 7, label %do.end48.i.i
    i16 21, label %sw.bb49.i.i
  ]

if.else31.i.qla1280_return_status.exit.i_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

sw.bb5.i.i:                                       ; preds = %if.else31.i
  %state_flags2.i.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 7
  %94 = ptrtoint ptr %state_flags2.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %state_flags2.i.i, align 4
  %96 = tail call i16 @llvm.bswap.i16(i16 %95) #11
  %conv6.i.i = zext i16 %96 to i32
  %and.i.i = and i32 %conv6.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb5.i.i.qla1280_return_status.exit.i_crit_edge, label %if.else.i.i

sw.bb5.i.i.qla1280_return_status.exit.i_crit_edge: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

if.else.i.i:                                      ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and8.i.i = and i32 %conv6.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %spec.select.i.i = select i1 %tobool9.not.i.i, i32 262144, i32 458752
  br label %qla1280_return_status.exit.i

sw.bb36.i.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

sw.bb37.i.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

sw.bb38.i.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

do.end48.i.i:                                     ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

sw.bb49.i.i:                                      ; preds = %if.else31.i
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 17, i32 1
  %97 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %length.i.i.i, align 4
  %sub.i.i = sub i32 %98, %90
  %underflow.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 19
  %99 = ptrtoint ptr %underflow.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %underflow.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %100)
  %cmp.i.i = icmp ult i32 %sub.i.i, %100
  br i1 %cmp.i.i, label %do.end54.i.i, label %if.else56.i.i

do.end54.i.i:                                     ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #15
  br label %qla1280_return_status.exit.i

if.else56.i.i:                                    ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resid_len.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %82, i32 0, i32 5
  %101 = ptrtoint ptr %resid_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %90, ptr %resid_len.i.i.i, align 4
  br label %qla1280_return_status.exit.i

sw.default.i.i:                                   ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_return_status.exit.i

qla1280_return_status.exit.i:                     ; preds = %sw.default.i.i, %if.else56.i.i, %do.end54.i.i, %do.end48.i.i, %sw.bb38.i.i, %sw.bb37.i.i, %sw.bb36.i.i, %if.else.i.i, %sw.bb5.i.i.qla1280_return_status.exit.i_crit_edge, %if.else31.i.qla1280_return_status.exit.i_crit_edge
  %host_status.0.i.i = phi i32 [ 458752, %sw.default.i.i ], [ 458752, %do.end54.i.i ], [ 0, %if.else56.i.i ], [ 458752, %do.end48.i.i ], [ 196608, %sw.bb38.i.i ], [ 327680, %sw.bb37.i.i ], [ 524288, %sw.bb36.i.i ], [ 0, %if.else31.i.qla1280_return_status.exit.i_crit_edge ], [ 65536, %sw.bb5.i.i.qla1280_return_status.exit.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i ]
  %102 = lshr i16 %92, 8
  %conv61.i.i = zext i16 %102 to i32
  %or.i.i = or i32 %host_status.0.i.i, %conv61.i.i
  %result33.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 24
  %103 = ptrtoint ptr %result33.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i.i, ptr %result33.i, align 4
  %and35.i = and i32 %conv20.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %qla1280_return_status.exit.i.if.end63.i_crit_edge, label %if.then37.i

qla1280_return_status.exit.i.if.end63.i_crit_edge: ; preds = %qla1280_return_status.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then37.i:                                      ; preds = %qla1280_return_status.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 7680, i16 %77)
  %cmp39.not.i = icmp eq i16 %77, 7680
  br i1 %cmp39.not.i, label %if.then37.i.if.end51.i_crit_edge, label %if.then41.i

if.then37.i.if.end51.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then41.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  %req_sense_length42.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 10
  %104 = ptrtoint ptr %req_sense_length42.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %req_sense_length42.i, align 2
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #11
  %107 = tail call i16 @llvm.umin.i16(i16 %106, i16 95) #11
  %108 = zext i16 %107 to i32
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 21
  %109 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sense_buffer.i, align 4
  %req_sense_data.i = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 13
  %111 = call ptr @memcpy(ptr %110, ptr %req_sense_data.i, i32 %108)
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then41.i, %if.then37.i.if.end51.i_crit_edge
  %sense_sz.1.i = phi i32 [ %108, %if.then41.i ], [ 0, %if.then37.i.if.end51.i_crit_edge ]
  %sense_buffer52.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 21
  %112 = ptrtoint ptr %sense_buffer52.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sense_buffer52.i, align 4
  %add.ptr.i = getelementptr i8, ptr %113, i32 %sense_sz.1.i
  %sub.i = sub nuw nsw i32 96, %sense_sz.1.i
  %114 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end51.i, %qla1280_return_status.exit.i.if.end63.i_crit_edge, %if.then28.i
  %115 = ptrtoint ptr %cmd11.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cmd11.i, align 4
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %116, i32 0, i32 23
  %117 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 514 to ptr), ptr %host_scribble.i, align 4
  %118 = ptrtoint ptr %prev.i.i345 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i345, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %79, ptr noundef %119, ptr noundef %done_q) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end63.i.if.end252_crit_edge

if.end63.i.if.end252_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.end.i.i.i:                                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %prev.i.i345 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %79, ptr %prev.i.i345, align 4
  %121 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %done_q, ptr %79, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev3.i.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %79, ptr %119, align 4
  br label %if.end252

if.else251:                                       ; preds = %lor.lhs.false238
  %handle1.i340 = getelementptr inbounds %struct.response, ptr %65, i32 0, i32 4
  %124 = ptrtoint ptr %handle1.i340 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %handle1.i340, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %126)
  %cmp.i341 = icmp ult i32 %126, 512
  br i1 %cmp.i341, label %if.end31.i, label %if.else251.if.end252_crit_edge

if.else251.if.end252_crit_edge:                   ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.end31.i:                                       ; preds = %if.else251
  %arrayidx.i342 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 12, i32 %126
  %127 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i342, align 4
  %tobool32.not.i = icmp eq ptr %128, null
  br i1 %tobool32.not.i, label %if.end31.i.if.end252_crit_edge, label %if.then33.i

if.end31.i.if.end252_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.then33.i:                                      ; preds = %if.end31.i
  %129 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %arrayidx.i342, align 4
  %130 = ptrtoint ptr %entry_status239 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %entry_status239, align 1
  %conv37.i = zext i8 %131 to i32
  %and38.i = and i32 %conv37.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.else41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  %cmd.i = getelementptr inbounds %struct.srb, ptr %128, i32 0, i32 1
  %132 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cmd.i, align 4
  %result.i343 = getelementptr inbounds %struct.scsi_cmnd, ptr %133, i32 0, i32 24
  %134 = ptrtoint ptr %result.i343 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 458752, ptr %result.i343, align 4
  br label %if.end53.i

if.else41.i:                                      ; preds = %if.then33.i
  %and44.i = and i32 %conv37.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %cmd50.i = getelementptr inbounds %struct.srb, ptr %128, i32 0, i32 1
  %135 = ptrtoint ptr %cmd50.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cmd50.i, align 4
  %result51.i = getelementptr inbounds %struct.scsi_cmnd, ptr %136, i32 0, i32 24
  br i1 %tobool45.not.i, label %if.else49.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %result51.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 131072, ptr %result51.i, align 4
  br label %if.end53.i

if.else49.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %result51.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 458752, ptr %result51.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else49.i, %if.then46.i, %if.then40.i
  %cmd54.i = getelementptr inbounds %struct.srb, ptr %128, i32 0, i32 1
  %139 = ptrtoint ptr %cmd54.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cmd54.i, align 4
  %host_scribble.i344 = getelementptr inbounds %struct.scsi_cmnd, ptr %140, i32 0, i32 23
  %141 = ptrtoint ptr %host_scribble.i344 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 514 to ptr), ptr %host_scribble.i344, align 4
  %142 = ptrtoint ptr %prev.i.i345 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i345, align 4
  %call.i.i.i346 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %128, ptr noundef %143, ptr noundef %done_q) #11
  br i1 %call.i.i.i346, label %if.end.i.i.i348, label %if.end53.i.if.end252_crit_edge

if.end53.i.if.end252_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.end.i.i.i348:                                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %prev.i.i345 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %128, ptr %prev.i.i345, align 4
  %145 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %done_q, ptr %128, align 4
  %prev3.i.i.i347 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %146 = ptrtoint ptr %prev3.i.i.i347 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev3.i.i.i347, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %128, ptr %143, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.end.i.i.i348, %if.end53.i.if.end252_crit_edge, %if.end31.i.if.end252_crit_edge, %if.else251.if.end252_crit_edge, %if.end.i.i.i, %if.end63.i.if.end252_crit_edge, %do.end7.i
  %148 = ptrtoint ptr %rsp_ring_index to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %rsp_ring_index, align 4
  %inc = add i16 %149, 1
  store i16 %inc, ptr %rsp_ring_index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %inc)
  %cmp256 = icmp eq i16 %inc, 63
  br i1 %cmp256, label %if.then258, label %if.else261

if.then258:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %rsp_ring_index to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %rsp_ring_index, align 4
  %151 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %response_ring, align 4
  br label %do.body265

if.else261:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %response_ring_ptr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %response_ring_ptr, align 4
  %incdec.ptr263 = getelementptr %struct.response, ptr %154, i32 1
  br label %do.body265

do.body265:                                       ; preds = %if.else261, %if.then258
  %storemerge = phi ptr [ %incdec.ptr263, %if.else261 ], [ %152, %if.then258 ]
  %155 = ptrtoint ptr %response_ring_ptr to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %storemerge, ptr %response_ring_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %156 = ptrtoint ptr %rsp_ring_index to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %rsp_ring_index, align 4
  %158 = tail call i16 @llvm.bswap.i16(i16 %157)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mailbox5, i16 %158) #11, !srcloc !337
  br label %if.end270

if.end270:                                        ; preds = %do.body265, %lor.lhs.false238.if.end270_crit_edge
  %159 = ptrtoint ptr %rsp_ring_index to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %rsp_ring_index, align 4
  %cmp195.not = icmp eq i16 %160, %5
  br i1 %cmp195.not, label %if.end270.cleanup_crit_edge, label %if.end270.while.body_crit_edge

if.end270.while.body_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end270.cleanup_crit_edge:                      ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end270.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end174.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla1280_done(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %done_q1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 24
  %0 = ptrtoint ptr %done_q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %done_q1, align 4
  %cmp.i.not31 = icmp eq ptr %1, %done_q1
  br i1 %cmp.i.not31, label %entry.do.end17_crit_edge, label %while.body.lr.ph

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

while.body.lr.ph:                                 ; preds = %entry
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %actthreads = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %33, %if.end14.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd2 = getelementptr inbounds %struct.srb, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd2, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 16
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 24
  %19 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result, align 4
  %shr = ashr i32 %20, 16
  %21 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %shr, label %list_del.exit.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 5, label %sw.bb5
  ]

list_del.exit.sw.epilog_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %list_del.exit
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load volatile i32, ptr %flags, align 4
  %23 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not = icmp eq i32 %23, 0
  br i1 %tobool4.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @qla1280_marker(ptr noundef %ha, i32 noundef %16, i32 noundef %18, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb5:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %flags6 = getelementptr inbounds %struct.srb, ptr %2, i32 0, i32 4
  %24 = ptrtoint ptr %flags6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags6, align 4
  %26 = and i8 %25, -13
  %27 = or i8 %26, 8
  store i8 %27, ptr %flags6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.then, %sw.bb.sw.epilog_crit_edge, %list_del.exit.sw.epilog_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %12) #11
  %28 = ptrtoint ptr %actthreads to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actthreads, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %actthreads, align 4
  %wait = getelementptr inbounds %struct.srb, ptr %2, i32 0, i32 2
  %30 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wait, align 4
  %cmp = icmp eq ptr %31, null
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_done(ptr noundef %12) #11
  br label %if.end14

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef nonnull %31) #11
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %32 = ptrtoint ptr %done_q1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %done_q1, align 4
  %cmp.i.not = icmp eq ptr %33, %done_q1
  br i1 %cmp.i.not, label %if.end14.do.end17_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end14.do.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.end17:                                         ; preds = %if.end14.do.end17_crit_edge, %entry.do.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla1280_load_firmware(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  %mb.i38 = alloca [8 x i16], align 2
  %mb.i21 = alloca [8 x i16], align 2
  %mb.i16 = alloca [8 x i16], align 2
  %ret.i196.i = alloca i16, align 2
  %ret2.i197.i = alloca i16, align 2
  %ret.i.i = alloca i16, align 2
  %ret2.i.i = alloca i16, align 2
  %mb.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i) #11
  %0 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 7
  %iobase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %7 = call ptr @memset(ptr %mb.i, i32 255, i32 16)
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  %ictrl.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i, i16 256) #11, !srcloc !337
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret.i.i)
  %11 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store volatile i16 -1, ptr %ret.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret2.i.i)
  %12 = ptrtoint ptr %ret2.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store volatile i16 -1, ptr %ret2.i.i, align 2
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl.i) #11, !srcloc !338
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #11
  %15 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store volatile i16 %14, ptr %ret.i.i, align 2
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl.i) #11, !srcloc !338
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #11
  %18 = ptrtoint ptr %ret2.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store volatile i16 %17, ptr %ret2.i.i, align 2
  %19 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i.i = load volatile i16, ptr %ret.i.i, align 2
  %ret2.i.i.0.ret2.i.i.0.ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i.i = load volatile i16, ptr %ret2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i.i, i16 %ret2.i.i.0.ret2.i.i.0.ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i.i)
  %cmp.i.i = icmp eq i16 %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.ret.0..i.i, %ret2.i.i.0.ret2.i.i.0.ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0..i.i
  br i1 %cmp.i.i, label %entry.qla1280_debounce_register.exit.i_crit_edge, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  br label %do.body.i.i

entry.qla1280_debounce_register.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !343
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl.i) #11, !srcloc !338
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #11
  %22 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store volatile i16 %21, ptr %ret.i.i, align 2
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl.i) #11, !srcloc !338
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #11
  %25 = ptrtoint ptr %ret2.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store volatile i16 %24, ptr %ret2.i.i, align 2
  %26 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.ret.0.28.i.i = load volatile i16, ptr %ret.i.i, align 2
  %ret2.i.i.0.ret2.i.i.0.ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0.26.i.i = load volatile i16, ptr %ret2.i.i, align 2
  %cmp22.not.i.i = icmp eq i16 %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.ret.0.28.i.i, %ret2.i.i.0.ret2.i.i.0.ret2.i.0.ret2.i.0.ret2.0.ret2.0.ret2.0.26.i.i
  br i1 %cmp22.not.i.i, label %do.body.i.i.qla1280_debounce_register.exit.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.body.i.i.qla1280_debounce_register.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit.i

qla1280_debounce_register.exit.i:                 ; preds = %do.body.i.i.qla1280_debounce_register.exit.i_crit_edge, %entry.qla1280_debounce_register.exit.i_crit_edge
  %27 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.retval.0.i.i = load volatile i16, ptr %ret.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret2.i.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret.i.i)
  %28 = and i16 %ret.i.i.0.ret.i.i.0.ret.i.0.ret.i.0.ret.0.ret.0.retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool8.not207.i = icmp eq i16 %28, 0
  br i1 %tobool8.not207.i, label %qla1280_debounce_register.exit.i.do.body15.i_crit_edge, label %qla1280_debounce_register.exit.i.for.body.i_crit_edge

qla1280_debounce_register.exit.i.for.body.i_crit_edge: ; preds = %qla1280_debounce_register.exit.i
  br label %for.body.i

qla1280_debounce_register.exit.i.do.body15.i_crit_edge: ; preds = %qla1280_debounce_register.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %qla1280_debounce_register.exit.i.for.body.i_crit_edge
  %cnt.0208.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 1000000, %qla1280_debounce_register.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #11
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl.i) #11, !srcloc !338
  %dec.i = add nsw i32 %cnt.0208.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %31 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool8.not.i = icmp eq i16 %31, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool.not.i, label %for.end.i.if.end_crit_edge, label %for.end.i.do.body15.i_crit_edge

for.end.i.do.body15.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body15.i:                                      ; preds = %for.end.i.do.body15.i_crit_edge, %qla1280_debounce_register.exit.i.do.body15.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @arm_heavy_mb() #11
  %cfg_1.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cfg_1.i, i16 0) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  tail call void @arm_heavy_mb() #11
  %host_cmd.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_cmd.i, i16 176) #11, !srcloc !337
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #11, !srcloc !338
  %mailbox0.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret.i196.i)
  %33 = ptrtoint ptr %ret.i196.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store volatile i16 -1, ptr %ret.i196.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ret2.i197.i)
  %34 = ptrtoint ptr %ret2.i197.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store volatile i16 -1, ptr %ret2.i197.i, align 2
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0.i) #11, !srcloc !338
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #11
  %37 = ptrtoint ptr %ret.i196.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store volatile i16 %36, ptr %ret.i196.i, align 2
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0.i) #11, !srcloc !338
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #11
  %40 = ptrtoint ptr %ret2.i197.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store volatile i16 %39, ptr %ret2.i197.i, align 2
  %41 = ptrtoint ptr %ret.i196.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.ret.0..i198.i = load volatile i16, ptr %ret.i196.i, align 2
  %ret2.i197.i.0.ret2.i197.i.0.ret2.i197.0.ret2.i197.0.ret2.0.ret2.0.ret2.0..i199.i = load volatile i16, ptr %ret2.i197.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.ret.0..i198.i, i16 %ret2.i197.i.0.ret2.i197.i.0.ret2.i197.0.ret2.i197.0.ret2.0.ret2.0.ret2.0..i199.i)
  %cmp.i200.i = icmp eq i16 %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.ret.0..i198.i, %ret2.i197.i.0.ret2.i197.i.0.ret2.i197.0.ret2.i197.0.ret2.0.ret2.0.ret2.0..i199.i
  br i1 %cmp.i200.i, label %do.body15.i.qla1280_debounce_register.exit206.i_crit_edge, label %do.body15.i.do.body.i204.i_crit_edge

do.body15.i.do.body.i204.i_crit_edge:             ; preds = %do.body15.i
  br label %do.body.i204.i

do.body15.i.qla1280_debounce_register.exit206.i_crit_edge: ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit206.i

do.body.i204.i:                                   ; preds = %do.body.i204.i.do.body.i204.i_crit_edge, %do.body15.i.do.body.i204.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !343
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0.i) #11, !srcloc !338
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #11
  %44 = ptrtoint ptr %ret.i196.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store volatile i16 %43, ptr %ret.i196.i, align 2
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0.i) #11, !srcloc !338
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #11
  %47 = ptrtoint ptr %ret2.i197.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store volatile i16 %46, ptr %ret2.i197.i, align 2
  %48 = ptrtoint ptr %ret.i196.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.ret.0.28.i201.i = load volatile i16, ptr %ret.i196.i, align 2
  %ret2.i197.i.0.ret2.i197.i.0.ret2.i197.0.ret2.i197.0.ret2.0.ret2.0.ret2.0.26.i202.i = load volatile i16, ptr %ret2.i197.i, align 2
  %cmp22.not.i203.i = icmp eq i16 %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.ret.0.28.i201.i, %ret2.i197.i.0.ret2.i197.i.0.ret2.i197.0.ret2.i197.0.ret2.0.ret2.0.ret2.0.26.i202.i
  br i1 %cmp22.not.i203.i, label %do.body.i204.i.qla1280_debounce_register.exit206.i_crit_edge, label %do.body.i204.i.do.body.i204.i_crit_edge

do.body.i204.i.do.body.i204.i_crit_edge:          ; preds = %do.body.i204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i204.i

do.body.i204.i.qla1280_debounce_register.exit206.i_crit_edge: ; preds = %do.body.i204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_debounce_register.exit206.i

qla1280_debounce_register.exit206.i:              ; preds = %do.body.i204.i.qla1280_debounce_register.exit206.i_crit_edge, %do.body15.i.qla1280_debounce_register.exit206.i_crit_edge
  %49 = ptrtoint ptr %ret.i196.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.retval.0.i205.i = load volatile i16, ptr %ret.i196.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret2.i197.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ret.i196.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.retval.0.i205.i)
  %cmp209.i = icmp eq i16 %ret.i196.i.0.ret.i196.i.0.ret.i196.0.ret.i196.0.ret.0.ret.0.retval.0.i205.i, 4
  br i1 %cmp209.i, label %qla1280_debounce_register.exit206.i.for.body31.i_crit_edge, label %qla1280_debounce_register.exit206.i.do.end44.i_crit_edge

qla1280_debounce_register.exit206.i.do.end44.i_crit_edge: ; preds = %qla1280_debounce_register.exit206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44.i

qla1280_debounce_register.exit206.i.for.body31.i_crit_edge: ; preds = %qla1280_debounce_register.exit206.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %qla1280_debounce_register.exit206.i.for.body31.i_crit_edge
  %cnt.1210.i = phi i32 [ %dec37.i, %for.body31.i.for.body31.i_crit_edge ], [ 1000000, %qla1280_debounce_register.exit206.i.for.body31.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 1073740) #11
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox0.i) #11, !srcloc !338
  %dec37.i = add i32 %cnt.1210.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37.i)
  %tobool26.not.i = icmp eq i32 %dec37.i, 0
  %tobool26.not.not.i = xor i1 %tobool26.not.i, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %51)
  %cmp.i = icmp eq i16 %51, 1024
  %or.cond195.i = select i1 %tobool26.not.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond195.i, label %for.body31.i.for.body31.i_crit_edge, label %for.end38.i

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31.i

for.end38.i:                                      ; preds = %for.body31.i
  br i1 %tobool26.not.i, label %for.end38.i.if.end_crit_edge, label %for.end38.i.do.end44.i_crit_edge

for.end38.i.do.end44.i_crit_edge:                 ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44.i

for.end38.i.if.end_crit_edge:                     ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end44.i:                                       ; preds = %for.end38.i.do.end44.i_crit_edge, %qla1280_debounce_register.exit206.i.do.end44.i_crit_edge
  %mailbox1.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 34
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox1.i) #11, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp2(i16 21321, i16 %52)
  %cmp49.not.i = icmp eq i16 %52, 21321
  br i1 %cmp49.not.i, label %lor.lhs.false.i, label %do.end44.i.do.end81.i_crit_edge

do.end44.i.do.end81.i_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81.i

lor.lhs.false.i:                                  ; preds = %do.end44.i
  %mailbox2.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 35
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox2.i) #11, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp55.not.i = icmp eq i16 %53, 0
  br i1 %cmp55.not.i, label %lor.lhs.false.i.lor.lhs.false64.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false64.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false64.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox2.i) #11, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %54)
  %cmp62.not.i = icmp eq i16 %54, 8272
  br i1 %cmp62.not.i, label %land.lhs.true.i.lor.lhs.false64.i_crit_edge, label %land.lhs.true.i.do.end81.i_crit_edge

land.lhs.true.i.do.end81.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81.i

land.lhs.true.i.lor.lhs.false64.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false64.i

lor.lhs.false64.i:                                ; preds = %land.lhs.true.i.lor.lhs.false64.i_crit_edge, %lor.lhs.false.i.lor.lhs.false64.i_crit_edge
  %mailbox3.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 36
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox3.i) #11, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp2(i16 8224, i16 %55)
  %cmp69.not.i = icmp eq i16 %55, 8224
  br i1 %cmp69.not.i, label %lor.lhs.false71.i, label %lor.lhs.false64.i.do.end81.i_crit_edge

lor.lhs.false64.i.do.end81.i_crit_edge:           ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81.i

lor.lhs.false71.i:                                ; preds = %lor.lhs.false64.i
  %mailbox4.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 37
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox4.i) #11, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %56)
  %cmp76.not.i = icmp eq i16 %56, 256
  br i1 %cmp76.not.i, label %if.end104.i, label %lor.lhs.false71.i.do.end81.i_crit_edge

lor.lhs.false71.i.do.end81.i_crit_edge:           ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81.i

do.end81.i:                                       ; preds = %lor.lhs.false71.i.do.end81.i_crit_edge, %lor.lhs.false64.i.do.end81.i_crit_edge, %land.lhs.true.i.do.end81.i_crit_edge, %do.end44.i.do.end81.i_crit_edge
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox1.i) #11, !srcloc !338
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #11
  %conv87.i = zext i16 %58 to i32
  %mailbox289.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 35
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox289.i) #11, !srcloc !338
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #11
  %conv92.i = zext i16 %60 to i32
  %mailbox394.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 36
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox394.i) #11, !srcloc !338
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #11
  %conv97.i = zext i16 %62 to i32
  %mailbox499.i = getelementptr inbounds %struct.device_reg, ptr %9, i32 0, i32 37
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mailbox499.i) #11, !srcloc !338
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #11
  %conv102.i = zext i16 %64 to i32
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv87.i, i32 noundef %conv92.i, i32 noundef %conv97.i, i32 noundef %conv102.i) #15
  br label %if.end

if.end104.i:                                      ; preds = %lor.lhs.false71.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iobase.i, align 4
  %ictrl.i.i = getelementptr inbounds %struct.device_reg, ptr %66, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ictrl.i.i, i16 1536) #11, !srcloc !337
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i, align 4
  %ictrl2.i.i = getelementptr inbounds %struct.device_reg, ptr %68, i32 0, i32 4
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ictrl2.i.i) #11, !srcloc !338
  %70 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 6, ptr %mb.i, align 2
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -21846, ptr %0, align 2
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 21845, ptr %1, align 2
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -21931, ptr %2, align 2
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 21930, ptr %3, align 2
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -23131, ptr %4, align 2
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 23130, ptr %5, align 2
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 9509, ptr %6, align 2
  %call115.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext -1, ptr noundef nonnull %mb.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.end118.i, label %qla1280_chip_diag.exit

if.end118.i:                                      ; preds = %if.end104.i
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21846, i16 %79)
  %cmp121.not.i = icmp eq i16 %79, -21846
  br i1 %cmp121.not.i, label %lor.lhs.false123.i, label %if.end118.i.do.end156.i_crit_edge

if.end118.i.do.end156.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false123.i:                               ; preds = %if.end118.i
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21845, i16 %81)
  %cmp126.not.i = icmp eq i16 %81, 21845
  br i1 %cmp126.not.i, label %lor.lhs.false128.i, label %lor.lhs.false123.i.do.end156.i_crit_edge

lor.lhs.false123.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false128.i:                               ; preds = %lor.lhs.false123.i
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %83)
  %cmp131.not.i = icmp eq i16 %83, -21931
  br i1 %cmp131.not.i, label %lor.lhs.false133.i, label %lor.lhs.false128.i.do.end156.i_crit_edge

lor.lhs.false128.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false133.i:                               ; preds = %lor.lhs.false128.i
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %85)
  %cmp136.not.i = icmp eq i16 %85, 21930
  br i1 %cmp136.not.i, label %lor.lhs.false138.i, label %lor.lhs.false133.i.do.end156.i_crit_edge

lor.lhs.false133.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false138.i:                               ; preds = %lor.lhs.false133.i
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %87)
  %cmp141.not.i = icmp eq i16 %87, -23131
  br i1 %cmp141.not.i, label %lor.lhs.false143.i, label %lor.lhs.false138.i.do.end156.i_crit_edge

lor.lhs.false138.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false143.i:                               ; preds = %lor.lhs.false138.i
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23130, i16 %89)
  %cmp146.not.i = icmp eq i16 %89, 23130
  br i1 %cmp146.not.i, label %lor.lhs.false148.i, label %lor.lhs.false143.i.do.end156.i_crit_edge

lor.lhs.false143.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false148.i:                               ; preds = %lor.lhs.false143.i
  %90 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9509, i16 %91)
  %cmp151.not.i = icmp eq i16 %91, 9509
  br i1 %cmp151.not.i, label %lor.lhs.false148.i.if.end_crit_edge, label %lor.lhs.false148.i.do.end156.i_crit_edge

lor.lhs.false148.i.do.end156.i_crit_edge:         ; preds = %lor.lhs.false148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i

lor.lhs.false148.i.if.end_crit_edge:              ; preds = %lor.lhs.false148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end156.i:                                      ; preds = %lor.lhs.false148.i.do.end156.i_crit_edge, %lor.lhs.false143.i.do.end156.i_crit_edge, %lor.lhs.false138.i.do.end156.i_crit_edge, %lor.lhs.false133.i.do.end156.i_crit_edge, %lor.lhs.false128.i.do.end156.i_crit_edge, %lor.lhs.false123.i.do.end156.i_crit_edge, %if.end118.i.do.end156.i_crit_edge
  %call158.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #15
  br label %if.end

qla1280_chip_diag.exit:                           ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i) #11
  br label %out

if.end:                                           ; preds = %do.end156.i, %lor.lhs.false148.i.if.end_crit_edge, %do.end81.i, %for.end38.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i) #11
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 5
  %92 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4128, i16 %95)
  %cmp = icmp eq i16 %95, 4128
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i16) #11
  %96 = getelementptr inbounds [8 x i16], ptr %mb.i16, i32 0, i32 1
  %97 = getelementptr inbounds [8 x i16], ptr %mb.i16, i32 0, i32 2
  %98 = getelementptr inbounds i8, ptr %mb.i16, i32 6
  %99 = call ptr @memset(ptr %98, i32 255, i32 10)
  %call.i = tail call fastcc ptr @qla1280_request_firmware(ptr noundef %ha) #11
  %cmp.i.i17 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i17, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %call.i to i32
  br label %qla1280_load_firmware_pio.exit

if.end.i:                                         ; preds = %if.then2
  %data.i = getelementptr inbounds %struct.firmware, ptr %call.i, i32 0, i32 1
  %101 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i, align 4
  %arrayidx3.i = getelementptr i16, ptr %102, i32 2
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx3.i, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #11
  %fwstart.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 30
  %106 = ptrtoint ptr %fwstart.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %fwstart.i, align 4
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %108, i32 6
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %call.i, align 4
  %sub.i = add i32 %110, 131066
  %div40.i = lshr i32 %sub.i, 1
  %conv8.i = and i32 %div40.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %cmp41.not.i = icmp eq i32 %conv8.i, 0
  br i1 %cmp41.not.i, label %if.end.i.qla1280_load_firmware_pio.exit_crit_edge, label %if.end.i.for.body.i19_crit_edge

if.end.i.for.body.i19_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i19

if.end.i.qla1280_load_firmware_pio.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_load_firmware_pio.exit

for.cond.i:                                       ; preds = %for.body.i19
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv8.i
  br i1 %exitcond.not.i, label %for.cond.i.qla1280_load_firmware_pio.exit_crit_edge, label %for.cond.i.for.body.i19_crit_edge

for.cond.i.for.body.i19_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i19

for.cond.i.qla1280_load_firmware_pio.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_load_firmware_pio.exit

for.body.i19:                                     ; preds = %for.cond.i.for.body.i19_crit_edge, %if.end.i.for.body.i19_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i19_crit_edge ], [ 0, %if.end.i.for.body.i19_crit_edge ]
  %111 = ptrtoint ptr %mb.i16 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 4, ptr %mb.i16, align 2
  %112 = trunc i32 %indvars.iv.i to i16
  %add.i = add i16 %105, %112
  %113 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %add.i, ptr %96, align 2
  %arrayidx15.i = getelementptr i16, ptr %arrayidx6.i, i32 %indvars.iv.i
  %114 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx15.i, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #11
  %117 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %97, align 2
  %call17.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 7, ptr noundef nonnull %mb.i16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i18 = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i18, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %118 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %host_no.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %119) #15
  br label %qla1280_load_firmware_pio.exit

qla1280_load_firmware_pio.exit:                   ; preds = %do.end.i, %for.cond.i.qla1280_load_firmware_pio.exit_crit_edge, %if.end.i.qla1280_load_firmware_pio.exit_crit_edge, %if.then.i
  %retval.0.i20 = phi i32 [ %100, %if.then.i ], [ 1, %do.end.i ], [ 0, %if.end.i.qla1280_load_firmware_pio.exit_crit_edge ], [ 0, %for.cond.i.qla1280_load_firmware_pio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i16) #11
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i21) #11
  %120 = getelementptr inbounds [8 x i16], ptr %mb.i21, i32 0, i32 1
  %121 = getelementptr inbounds [8 x i16], ptr %mb.i21, i32 0, i32 2
  %122 = getelementptr inbounds [8 x i16], ptr %mb.i21, i32 0, i32 3
  %123 = getelementptr inbounds [8 x i16], ptr %mb.i21, i32 0, i32 4
  %124 = getelementptr inbounds [8 x i16], ptr %mb.i21, i32 0, i32 6
  %125 = getelementptr inbounds [8 x i16], ptr %mb.i21, i32 0, i32 7
  %126 = getelementptr inbounds i8, ptr %mb.i21, i32 10
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %126, align 2
  %call.i22 = tail call fastcc ptr @qla1280_request_firmware(ptr noundef %ha) #11
  %cmp.i.i23 = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i23, label %if.then.i24, label %if.end.i29

if.then.i24:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %call.i22 to i32
  br label %qla1280_load_firmware_dma.exit

if.end.i29:                                       ; preds = %if.else
  %data.i25 = getelementptr inbounds %struct.firmware, ptr %call.i22, i32 0, i32 1
  %129 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data.i25, align 4
  %arrayidx3.i26 = getelementptr i16, ptr %130, i32 2
  %131 = ptrtoint ptr %arrayidx3.i26 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx3.i26, align 2
  %133 = tail call i16 @llvm.bswap.i16(i16 %132) #11
  %fwstart.i27 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 30
  %134 = ptrtoint ptr %fwstart.i27 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %fwstart.i27, align 4
  %135 = ptrtoint ptr %call.i22 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %call.i22, align 4
  %sub.i28 = add i32 %136, 131066
  %div100.i = lshr i32 %sub.i28, 1
  %conv.i = trunc i32 %div100.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp.not109.i = icmp eq i16 %conv.i, 0
  br i1 %cmp.not109.i, label %if.end.i29.qla1280_load_firmware_dma.exit_crit_edge, label %while.body.lr.ph.i

if.end.i29.qla1280_load_firmware_dma.exit_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_load_firmware_dma.exit

while.body.lr.ph.i:                               ; preds = %if.end.i29
  %137 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i25, align 4
  %arrayidx6.i30 = getelementptr i8, ptr %138, i32 6
  %request_ring.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 16
  %request_dma.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %risc_code_size.0112.i = phi i16 [ %conv.i, %while.body.lr.ph.i ], [ %sub59.i, %cleanup.i.while.body.i_crit_edge ]
  %risc_address.0111.i = phi i16 [ %133, %while.body.lr.ph.i ], [ %add.i36, %cleanup.i.while.body.i_crit_edge ]
  %fw_data.0110.i = phi ptr [ %arrayidx6.i30, %while.body.lr.ph.i ], [ %add.ptr.i, %cleanup.i.while.body.i_crit_edge ]
  %139 = tail call i16 @llvm.umin.i16(i16 %risc_code_size.0112.i, i16 1000) #11
  %conv18.i = zext i16 %139 to i32
  br label %for.body.i32

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %while.body.i
  %i.0108.i = phi i32 [ %inc.i, %for.body.i32.for.body.i32_crit_edge ], [ 0, %while.body.i ]
  %arrayidx21.i = getelementptr i16, ptr %fw_data.0110.i, i32 %i.0108.i
  %140 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx21.i, align 2
  %142 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %request_ring.i, align 4
  %arrayidx22.i = getelementptr i16, ptr %143, i32 %i.0108.i
  %144 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %141, ptr %arrayidx22.i, align 2
  %inc.i = add nuw nsw i32 %i.0108.i, 1
  %exitcond.not.i31 = icmp eq i32 %inc.i, %conv18.i
  br i1 %exitcond.not.i31, label %for.end.i34, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i32

for.end.i34:                                      ; preds = %for.body.i32
  %145 = ptrtoint ptr %mb.i21 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %mb.i21, align 2
  %146 = ptrtoint ptr %120 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %risc_address.0111.i, ptr %120, align 2
  %147 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %139, ptr %123, align 2
  %148 = ptrtoint ptr %request_dma.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %request_dma.i, align 4
  %conv26.i = trunc i32 %149 to i16
  %150 = ptrtoint ptr %122 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv26.i, ptr %122, align 2
  %shr.i = lshr i32 %149, 16
  %conv30.i = trunc i32 %shr.i to i16
  %151 = ptrtoint ptr %121 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv30.i, ptr %121, align 2
  %152 = ptrtoint ptr %125 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %125, align 2
  %153 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %124, align 2
  %call47.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 31, ptr noundef nonnull %mb.i21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool.not.i33 = icmp eq i32 %call47.i, 0
  br i1 %tobool.not.i33, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i35 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %154 = ptrtoint ptr %host_no.i35 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %host_no.i35, align 4
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %155) #15
  br label %qla1280_load_firmware_dma.exit

cleanup.i:                                        ; preds = %for.end.i34
  %add.i36 = add i16 %139, %risc_address.0111.i
  %sub59.i = sub i16 %risc_code_size.0112.i, %139
  %add.ptr.i = getelementptr i16, ptr %fw_data.0110.i, i32 %conv18.i
  %cmp.not.i = icmp eq i16 %sub59.i, 0
  br i1 %cmp.not.i, label %cleanup.i.qla1280_load_firmware_dma.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.qla1280_load_firmware_dma.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_load_firmware_dma.exit

qla1280_load_firmware_dma.exit:                   ; preds = %cleanup.i.qla1280_load_firmware_dma.exit_crit_edge, %cleanup.thread.i, %if.end.i29.qla1280_load_firmware_dma.exit_crit_edge, %if.then.i24
  %retval.0.i37 = phi i32 [ %128, %if.then.i24 ], [ %call47.i, %cleanup.thread.i ], [ 0, %if.end.i29.qla1280_load_firmware_dma.exit_crit_edge ], [ 0, %cleanup.i.qla1280_load_firmware_dma.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i21) #11
  br label %if.end5

if.end5:                                          ; preds = %qla1280_load_firmware_dma.exit, %qla1280_load_firmware_pio.exit
  %err.0 = phi i32 [ %retval.0.i20, %qla1280_load_firmware_pio.exit ], [ %retval.0.i37, %qla1280_load_firmware_dma.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool6.not = icmp eq i32 %err.0, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i38) #11
  %156 = getelementptr inbounds [8 x i16], ptr %mb.i38, i32 0, i32 1
  %157 = getelementptr inbounds i8, ptr %mb.i38, i32 4
  %158 = call ptr @memset(ptr %157, i32 255, i32 12)
  %159 = ptrtoint ptr %mb.i38 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 7, ptr %mb.i38, align 2
  %fwstart.i39 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 30
  %160 = ptrtoint ptr %fwstart.i39 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %fwstart.i39, align 4
  %162 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %156, align 2
  %call.i40 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb.i38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %do.end8.i, label %if.end8.cleanup.sink.split.i_crit_edge

if.end8.cleanup.sink.split.i_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.end8.i:                                        ; preds = %if.end8
  %163 = ptrtoint ptr %mb.i38 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 2, ptr %mb.i38, align 2
  %164 = ptrtoint ptr %fwstart.i39 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %fwstart.i39, align 4
  %166 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %156, align 2
  %call13.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb.i38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.end8.i.qla1280_start_firmware.exit_crit_edge, label %do.end8.i.cleanup.sink.split.i_crit_edge

do.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.end8.i.qla1280_start_firmware.exit_crit_edge:  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_start_firmware.exit

cleanup.sink.split.i:                             ; preds = %do.end8.i.cleanup.sink.split.i_crit_edge, %if.end8.cleanup.sink.split.i_crit_edge
  %.str.134.sink.i = phi ptr [ @.str.131, %if.end8.cleanup.sink.split.i_crit_edge ], [ @.str.134, %do.end8.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 1, %if.end8.cleanup.sink.split.i_crit_edge ], [ %call13.i, %do.end8.i.cleanup.sink.split.i_crit_edge ]
  %host_no20.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %167 = ptrtoint ptr %host_no20.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %host_no20.i, align 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.134.sink.i, i32 noundef %168) #15
  br label %qla1280_start_firmware.exit

qla1280_start_firmware.exit:                      ; preds = %cleanup.sink.split.i, %do.end8.i.qla1280_start_firmware.exit_crit_edge
  %retval.0.i42 = phi i32 [ 0, %do.end8.i.qla1280_start_firmware.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i38) #11
  br label %out

out:                                              ; preds = %qla1280_start_firmware.exit, %if.end5.out_crit_edge, %qla1280_chip_diag.exit
  %err.1 = phi i32 [ %call115.i, %qla1280_chip_diag.exit ], [ %err.0, %if.end5.out_crit_edge ], [ %retval.0.i42, %qla1280_start_firmware.exit ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla1280_nvram_config(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  %mb.i.i = alloca [8 x i16], align 2
  %mb.i = alloca [8 x i16], align 2
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #11
  %2 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 6
  %5 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 7
  %nvram_valid = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 29
  %6 = call ptr @memset(ptr %mb, i32 255, i32 16)
  %7 = ptrtoint ptr %nvram_valid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nvram_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %for.cond1.preheader.preheader

for.cond1.preheader.preheader:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 0
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %arrayidx6, align 2
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %arrayidx6, align 2
  %arrayidx6.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.1 = load i8, ptr %arrayidx6.1, align 2
  %bf.set.1 = or i8 %bf.load.1, 32
  store i8 %bf.set.1, ptr %arrayidx6.1, align 2
  %arrayidx6.2 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.2 = load i8, ptr %arrayidx6.2, align 2
  %bf.set.2 = or i8 %bf.load.2, 32
  store i8 %bf.set.2, ptr %arrayidx6.2, align 2
  %arrayidx6.3 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.3 = load i8, ptr %arrayidx6.3, align 2
  %bf.set.3 = or i8 %bf.load.3, 32
  store i8 %bf.set.3, ptr %arrayidx6.3, align 2
  %arrayidx6.4 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 4
  %13 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.4 = load i8, ptr %arrayidx6.4, align 2
  %bf.set.4 = or i8 %bf.load.4, 32
  store i8 %bf.set.4, ptr %arrayidx6.4, align 2
  %arrayidx6.5 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 5
  %14 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.5 = load i8, ptr %arrayidx6.5, align 2
  %bf.set.5 = or i8 %bf.load.5, 32
  store i8 %bf.set.5, ptr %arrayidx6.5, align 2
  %arrayidx6.6 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 6
  %15 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.6 = load i8, ptr %arrayidx6.6, align 2
  %bf.set.6 = or i8 %bf.load.6, 32
  store i8 %bf.set.6, ptr %arrayidx6.6, align 2
  %arrayidx6.7 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 7
  %16 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.7 = load i8, ptr %arrayidx6.7, align 2
  %bf.set.7 = or i8 %bf.load.7, 32
  store i8 %bf.set.7, ptr %arrayidx6.7, align 2
  %arrayidx6.8 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 8
  %17 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.8 = load i8, ptr %arrayidx6.8, align 2
  %bf.set.8 = or i8 %bf.load.8, 32
  store i8 %bf.set.8, ptr %arrayidx6.8, align 2
  %arrayidx6.9 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 9
  %18 = ptrtoint ptr %arrayidx6.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.9 = load i8, ptr %arrayidx6.9, align 2
  %bf.set.9 = or i8 %bf.load.9, 32
  store i8 %bf.set.9, ptr %arrayidx6.9, align 2
  %arrayidx6.10 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 10
  %19 = ptrtoint ptr %arrayidx6.10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.10 = load i8, ptr %arrayidx6.10, align 2
  %bf.set.10 = or i8 %bf.load.10, 32
  store i8 %bf.set.10, ptr %arrayidx6.10, align 2
  %arrayidx6.11 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 11
  %20 = ptrtoint ptr %arrayidx6.11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.11 = load i8, ptr %arrayidx6.11, align 2
  %bf.set.11 = or i8 %bf.load.11, 32
  store i8 %bf.set.11, ptr %arrayidx6.11, align 2
  %arrayidx6.12 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 12
  %21 = ptrtoint ptr %arrayidx6.12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.12 = load i8, ptr %arrayidx6.12, align 2
  %bf.set.12 = or i8 %bf.load.12, 32
  store i8 %bf.set.12, ptr %arrayidx6.12, align 2
  %arrayidx6.13 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 13
  %22 = ptrtoint ptr %arrayidx6.13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.13 = load i8, ptr %arrayidx6.13, align 2
  %bf.set.13 = or i8 %bf.load.13, 32
  store i8 %bf.set.13, ptr %arrayidx6.13, align 2
  %arrayidx6.14 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 14
  %23 = ptrtoint ptr %arrayidx6.14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.14 = load i8, ptr %arrayidx6.14, align 2
  %bf.set.14 = or i8 %bf.load.14, 32
  store i8 %bf.set.14, ptr %arrayidx6.14, align 2
  %arrayidx6.15 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 15
  %24 = ptrtoint ptr %arrayidx6.15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.15 = load i8, ptr %arrayidx6.15, align 2
  %bf.set.15 = or i8 %bf.load.15, 32
  store i8 %bf.set.15, ptr %arrayidx6.15, align 2
  %arrayidx6.125 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 0
  %25 = ptrtoint ptr %arrayidx6.125 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.126 = load i8, ptr %arrayidx6.125, align 2
  %bf.set.127 = or i8 %bf.load.126, 32
  store i8 %bf.set.127, ptr %arrayidx6.125, align 2
  %arrayidx6.1.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx6.1.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.1.1 = load i8, ptr %arrayidx6.1.1, align 2
  %bf.set.1.1 = or i8 %bf.load.1.1, 32
  store i8 %bf.set.1.1, ptr %arrayidx6.1.1, align 2
  %arrayidx6.2.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 2
  %27 = ptrtoint ptr %arrayidx6.2.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.2.1 = load i8, ptr %arrayidx6.2.1, align 2
  %bf.set.2.1 = or i8 %bf.load.2.1, 32
  store i8 %bf.set.2.1, ptr %arrayidx6.2.1, align 2
  %arrayidx6.3.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 3
  %28 = ptrtoint ptr %arrayidx6.3.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.3.1 = load i8, ptr %arrayidx6.3.1, align 2
  %bf.set.3.1 = or i8 %bf.load.3.1, 32
  store i8 %bf.set.3.1, ptr %arrayidx6.3.1, align 2
  %arrayidx6.4.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 4
  %29 = ptrtoint ptr %arrayidx6.4.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.4.1 = load i8, ptr %arrayidx6.4.1, align 2
  %bf.set.4.1 = or i8 %bf.load.4.1, 32
  store i8 %bf.set.4.1, ptr %arrayidx6.4.1, align 2
  %arrayidx6.5.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 5
  %30 = ptrtoint ptr %arrayidx6.5.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.5.1 = load i8, ptr %arrayidx6.5.1, align 2
  %bf.set.5.1 = or i8 %bf.load.5.1, 32
  store i8 %bf.set.5.1, ptr %arrayidx6.5.1, align 2
  %arrayidx6.6.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 6
  %31 = ptrtoint ptr %arrayidx6.6.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.6.1 = load i8, ptr %arrayidx6.6.1, align 2
  %bf.set.6.1 = or i8 %bf.load.6.1, 32
  store i8 %bf.set.6.1, ptr %arrayidx6.6.1, align 2
  %arrayidx6.7.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 7
  %32 = ptrtoint ptr %arrayidx6.7.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.7.1 = load i8, ptr %arrayidx6.7.1, align 2
  %bf.set.7.1 = or i8 %bf.load.7.1, 32
  store i8 %bf.set.7.1, ptr %arrayidx6.7.1, align 2
  %arrayidx6.8.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 8
  %33 = ptrtoint ptr %arrayidx6.8.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.8.1 = load i8, ptr %arrayidx6.8.1, align 2
  %bf.set.8.1 = or i8 %bf.load.8.1, 32
  store i8 %bf.set.8.1, ptr %arrayidx6.8.1, align 2
  %arrayidx6.9.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 9
  %34 = ptrtoint ptr %arrayidx6.9.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.9.1 = load i8, ptr %arrayidx6.9.1, align 2
  %bf.set.9.1 = or i8 %bf.load.9.1, 32
  store i8 %bf.set.9.1, ptr %arrayidx6.9.1, align 2
  %arrayidx6.10.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 10
  %35 = ptrtoint ptr %arrayidx6.10.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.10.1 = load i8, ptr %arrayidx6.10.1, align 2
  %bf.set.10.1 = or i8 %bf.load.10.1, 32
  store i8 %bf.set.10.1, ptr %arrayidx6.10.1, align 2
  %arrayidx6.11.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 11
  %36 = ptrtoint ptr %arrayidx6.11.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.11.1 = load i8, ptr %arrayidx6.11.1, align 2
  %bf.set.11.1 = or i8 %bf.load.11.1, 32
  store i8 %bf.set.11.1, ptr %arrayidx6.11.1, align 2
  %arrayidx6.12.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 12
  %37 = ptrtoint ptr %arrayidx6.12.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.12.1 = load i8, ptr %arrayidx6.12.1, align 2
  %bf.set.12.1 = or i8 %bf.load.12.1, 32
  store i8 %bf.set.12.1, ptr %arrayidx6.12.1, align 2
  %arrayidx6.13.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 13
  %38 = ptrtoint ptr %arrayidx6.13.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.13.1 = load i8, ptr %arrayidx6.13.1, align 2
  %bf.set.13.1 = or i8 %bf.load.13.1, 32
  store i8 %bf.set.13.1, ptr %arrayidx6.13.1, align 2
  %arrayidx6.14.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 14
  %39 = ptrtoint ptr %arrayidx6.14.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.14.1 = load i8, ptr %arrayidx6.14.1, align 2
  %bf.set.14.1 = or i8 %bf.load.14.1, 32
  store i8 %bf.set.14.1, ptr %arrayidx6.14.1, align 2
  %arrayidx6.15.1 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 15
  %40 = ptrtoint ptr %arrayidx6.15.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.15.1 = load i8, ptr %arrayidx6.15.1, align 2
  %bf.set.15.1 = or i8 %bf.load.15.1, 32
  store i8 %bf.set.15.1, ptr %arrayidx6.15.1, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %nvram.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28
  %41 = call ptr @memset(ptr %nvram.i, i32 0, i32 256)
  %firmware_feature.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 15
  %42 = ptrtoint ptr %firmware_feature.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -31744, ptr %firmware_feature.i, align 2
  %termination.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 13
  %43 = ptrtoint ptr %termination.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -15, ptr %termination.i, align 1
  %isp_config.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 12
  %44 = ptrtoint ptr %isp_config.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %isp_config.i, align 2
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 5
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4128, i16 %48)
  %cmp.i = icmp eq i16 %48, 4128
  %spec.select.i = select i1 %cmp.i, i8 35, i8 36
  %49 = ptrtoint ptr %isp_config.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select.i, ptr %isp_config.i, align 2
  %50 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device.i, align 2
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %51, label %if.else.if.end49.i_crit_edge [
    i16 4118, label %if.else.if.then48.i_crit_edge
    i16 4630, label %if.else.if.then48.i_crit_edge28
  ]

if.else.if.then48.i_crit_edge28:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i

if.else.if.then48.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48.i

if.else.if.end49.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.else.if.then48.i_crit_edge, %if.else.if.then48.i_crit_edge28
  %isp_parameter.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 14
  %53 = ptrtoint ptr %isp_parameter.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %isp_parameter.i, align 2
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.else.if.end49.i_crit_edge
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load53.i = load i8, ptr %arrayidx.i, align 2
  %bf.clear54.i = and i8 %bf.load53.i, 15
  %bf.set55.i = or i8 %bf.clear54.i, 112
  store i8 %bf.set55.i, ptr %arrayidx.i, align 2
  %config_2.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 4
  %55 = ptrtoint ptr %config_2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load58.i = load i8, ptr %config_2.i, align 2
  %bf.set66.i = or i8 %bf.load58.i, 12
  store i8 %bf.set66.i, ptr %config_2.i, align 2
  %selection_timeout.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 6
  %56 = ptrtoint ptr %selection_timeout.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 250, ptr %selection_timeout.i, align 2
  %max_queue_depth.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 7
  %57 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 32, ptr %max_queue_depth.i, align 2
  %58 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4128, i16 %59)
  %cmp74.i = icmp eq i16 %59, 4128
  %bus_reset_delay.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 1
  br i1 %cmp74.i, label %if.then76.i, label %if.else87.i

if.then76.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %bus_reset_delay.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %bus_reset_delay.i, align 1
  %bf.clear83.i = and i8 %bf.set66.i, 15
  %bf.set84.i = or i8 %bf.clear83.i, 96
  %61 = ptrtoint ptr %config_2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %bf.set84.i, ptr %config_2.i, align 2
  %retry_delay.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 3
  %62 = ptrtoint ptr %retry_delay.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %retry_delay.i, align 1
  br label %for.body101.i.preheader

if.else87.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %bus_reset_delay.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %bus_reset_delay.i, align 1
  %bf.clear95.i = and i8 %bf.set66.i, 15
  %bf.set96.i = or i8 %bf.clear95.i, -128
  %64 = ptrtoint ptr %config_2.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.set96.i, ptr %config_2.i, align 2
  br label %for.body101.i.preheader

for.body101.i.preheader:                          ; preds = %if.else87.i, %if.then76.i
  br label %for.body101.i

for.body101.i:                                    ; preds = %qla1280_set_target_defaults.exit.i.for.body101.i_crit_edge, %for.body101.i.preheader
  %target.0143.i = phi i32 [ %inc.i, %qla1280_set_target_defaults.exit.i.for.body101.i_crit_edge ], [ 0, %for.body101.i.preheader ]
  %arrayidx3.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i
  %65 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i = load i8, ptr %arrayidx3.i.i, align 2
  %bf.set35.i.i = or i8 %bf.load.i.i, -68
  store i8 %bf.set35.i.i, ptr %arrayidx3.i.i, align 2
  %66 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_queue_depth.i, align 2
  %conv.i.i = trunc i16 %67 to i8
  %sub.i.i = add i8 %conv.i.i, -1
  %execution_throttle.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i, i32 1
  %68 = ptrtoint ptr %execution_throttle.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %sub.i.i, ptr %execution_throttle.i.i, align 1
  %bf.set58.i.i = or i8 %bf.load.i.i, -65
  store i8 %bf.set58.i.i, ptr %arrayidx3.i.i, align 2
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %device.i.i, align 2
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.179)
  switch i16 %72, label %if.else.i.i [
    i16 4118, label %for.body101.i.if.then.i.i_crit_edge
    i16 4630, label %for.body101.i.if.then.i.i_crit_edge29
  ]

for.body101.i.if.then.i.i_crit_edge29:            ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.body101.i.if.then.i.i_crit_edge:              ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body101.i.if.then.i.i_crit_edge, %for.body101.i.if.then.i.i_crit_edge29
  %flags.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i, i32 3
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load70.i.i = load i8, ptr %flags.i.i, align 1
  %bf.set72.i.i = and i8 %bf.load70.i.i, 3
  %bf.set80.i.i = or i8 %bf.set72.i.i, 116
  store i8 %bf.set80.i.i, ptr %flags.i.i, align 1
  %sync_period.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i, i32 2
  %75 = ptrtoint ptr %sync_period.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 9, ptr %sync_period.i.i, align 2
  %ppr_1x160.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i, i32 4
  %76 = ptrtoint ptr %ppr_1x160.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load89.i.i = load i8, ptr %ppr_1x160.i.i, align 2
  %bf.set91.i.i = and i8 %bf.load89.i.i, 2
  %bf.set107.i.i = or i8 %bf.set91.i.i, 37
  store i8 %bf.set107.i.i, ptr %ppr_1x160.i.i, align 2
  br label %qla1280_set_target_defaults.exit.i

if.else.i.i:                                      ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags112.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i, i32 3
  %77 = ptrtoint ptr %flags112.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load113.i.i = load i8, ptr %flags112.i.i, align 1
  %bf.set115.i.i = and i8 %bf.load113.i.i, 7
  %bf.set123.i.i = or i8 %bf.set115.i.i, -56
  store i8 %bf.set123.i.i, ptr %flags112.i.i, align 1
  %sync_period128.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 11, i32 %target.0143.i, i32 2
  %78 = ptrtoint ptr %sync_period128.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 10, ptr %sync_period128.i.i, align 2
  br label %qla1280_set_target_defaults.exit.i

qla1280_set_target_defaults.exit.i:               ; preds = %if.else.i.i, %if.then.i.i
  %inc.i = add nuw nsw i32 %target.0143.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc102.i, label %qla1280_set_target_defaults.exit.i.for.body101.i_crit_edge

qla1280_set_target_defaults.exit.i.for.body101.i_crit_edge: ; preds = %qla1280_set_target_defaults.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body101.i

for.inc102.i:                                     ; preds = %qla1280_set_target_defaults.exit.i
  %arrayidx.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1
  %79 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load53.1.i = load i8, ptr %arrayidx.1.i, align 2
  %bf.clear54.1.i = and i8 %bf.load53.1.i, 15
  %bf.set55.1.i = or i8 %bf.clear54.1.i, 112
  store i8 %bf.set55.1.i, ptr %arrayidx.1.i, align 2
  %config_2.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 4
  %80 = ptrtoint ptr %config_2.1.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load58.1.i = load i8, ptr %config_2.1.i, align 2
  %bf.set66.1.i = or i8 %bf.load58.1.i, 12
  store i8 %bf.set66.1.i, ptr %config_2.1.i, align 2
  %selection_timeout.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 6
  %81 = ptrtoint ptr %selection_timeout.1.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 250, ptr %selection_timeout.1.i, align 2
  %max_queue_depth.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 7
  %82 = ptrtoint ptr %max_queue_depth.1.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 32, ptr %max_queue_depth.1.i, align 2
  %83 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i, align 4
  %device72.1.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %device72.1.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %device72.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4128, i16 %86)
  %cmp74.1.i = icmp eq i16 %86, 4128
  %bus_reset_delay.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 1
  br i1 %cmp74.1.i, label %if.then76.1.i, label %if.else87.1.i

if.else87.1.i:                                    ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %bus_reset_delay.1.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 5, ptr %bus_reset_delay.1.i, align 1
  %bf.clear95.1.i = and i8 %bf.set66.1.i, 15
  %bf.set96.1.i = or i8 %bf.clear95.1.i, -128
  %88 = ptrtoint ptr %config_2.1.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %bf.set96.1.i, ptr %config_2.1.i, align 2
  br label %for.body101.1.i.preheader

if.then76.1.i:                                    ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %bus_reset_delay.1.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 3, ptr %bus_reset_delay.1.i, align 1
  %bf.clear83.1.i = and i8 %bf.set66.1.i, 15
  %bf.set84.1.i = or i8 %bf.clear83.1.i, 96
  %90 = ptrtoint ptr %config_2.1.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %bf.set84.1.i, ptr %config_2.1.i, align 2
  %retry_delay.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 3
  %91 = ptrtoint ptr %retry_delay.1.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %retry_delay.1.i, align 1
  br label %for.body101.1.i.preheader

for.body101.1.i.preheader:                        ; preds = %if.then76.1.i, %if.else87.1.i
  br label %for.body101.1.i

for.body101.1.i:                                  ; preds = %qla1280_set_target_defaults.exit.1.i.for.body101.1.i_crit_edge, %for.body101.1.i.preheader
  %target.0143.1.i = phi i32 [ %inc.1.i, %qla1280_set_target_defaults.exit.1.i.for.body101.1.i_crit_edge ], [ 0, %for.body101.1.i.preheader ]
  %arrayidx3.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i
  %92 = ptrtoint ptr %arrayidx3.i.1.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.1.i = load i8, ptr %arrayidx3.i.1.i, align 2
  %bf.set35.i.1.i = or i8 %bf.load.i.1.i, -68
  store i8 %bf.set35.i.1.i, ptr %arrayidx3.i.1.i, align 2
  %93 = ptrtoint ptr %max_queue_depth.1.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %max_queue_depth.1.i, align 2
  %conv.i.1.i = trunc i16 %94 to i8
  %sub.i.1.i = add i8 %conv.i.1.i, -1
  %execution_throttle.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i, i32 1
  %95 = ptrtoint ptr %execution_throttle.i.1.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %sub.i.1.i, ptr %execution_throttle.i.1.i, align 1
  %bf.set58.i.1.i = or i8 %bf.load.i.1.i, -65
  store i8 %bf.set58.i.1.i, ptr %arrayidx3.i.1.i, align 2
  %96 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev.i, align 4
  %device.i.1.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %device.i.1.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %device.i.1.i, align 2
  %100 = zext i16 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.180)
  switch i16 %99, label %if.else.i.1.i [
    i16 4118, label %for.body101.1.i.if.then.i.1.i_crit_edge
    i16 4630, label %for.body101.1.i.if.then.i.1.i_crit_edge30
  ]

for.body101.1.i.if.then.i.1.i_crit_edge30:        ; preds = %for.body101.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.1.i

for.body101.1.i.if.then.i.1.i_crit_edge:          ; preds = %for.body101.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.1.i

if.then.i.1.i:                                    ; preds = %for.body101.1.i.if.then.i.1.i_crit_edge, %for.body101.1.i.if.then.i.1.i_crit_edge30
  %flags.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i, i32 3
  %101 = ptrtoint ptr %flags.i.1.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load70.i.1.i = load i8, ptr %flags.i.1.i, align 1
  %bf.set72.i.1.i = and i8 %bf.load70.i.1.i, 3
  %bf.set80.i.1.i = or i8 %bf.set72.i.1.i, 116
  store i8 %bf.set80.i.1.i, ptr %flags.i.1.i, align 1
  %sync_period.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i, i32 2
  %102 = ptrtoint ptr %sync_period.i.1.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 9, ptr %sync_period.i.1.i, align 2
  %ppr_1x160.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i, i32 4
  %103 = ptrtoint ptr %ppr_1x160.i.1.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load89.i.1.i = load i8, ptr %ppr_1x160.i.1.i, align 2
  %bf.set91.i.1.i = and i8 %bf.load89.i.1.i, 2
  %bf.set107.i.1.i = or i8 %bf.set91.i.1.i, 37
  store i8 %bf.set107.i.1.i, ptr %ppr_1x160.i.1.i, align 2
  br label %qla1280_set_target_defaults.exit.1.i

if.else.i.1.i:                                    ; preds = %for.body101.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags112.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i, i32 3
  %104 = ptrtoint ptr %flags112.i.1.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load113.i.1.i = load i8, ptr %flags112.i.1.i, align 1
  %bf.set115.i.1.i = and i8 %bf.load113.i.1.i, 7
  %bf.set123.i.1.i = or i8 %bf.set115.i.1.i, -56
  store i8 %bf.set123.i.1.i, ptr %flags112.i.1.i, align 1
  %sync_period128.i.1.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 11, i32 %target.0143.1.i, i32 2
  %105 = ptrtoint ptr %sync_period128.i.1.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 10, ptr %sync_period128.i.1.i, align 2
  br label %qla1280_set_target_defaults.exit.1.i

qla1280_set_target_defaults.exit.1.i:             ; preds = %if.else.i.1.i, %if.then.i.1.i
  %inc.1.i = add nuw nsw i32 %target.0143.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 16
  br i1 %exitcond.1.not.i, label %qla1280_set_target_defaults.exit.1.i.if.end_crit_edge, label %qla1280_set_target_defaults.exit.1.i.for.body101.1.i_crit_edge

qla1280_set_target_defaults.exit.1.i.for.body101.1.i_crit_edge: ; preds = %qla1280_set_target_defaults.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body101.1.i

qla1280_set_target_defaults.exit.1.i.if.end_crit_edge: ; preds = %qla1280_set_target_defaults.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %qla1280_set_target_defaults.exit.1.i.if.end_crit_edge, %for.cond1.preheader.preheader
  %cntr_flags_1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 5
  %106 = ptrtoint ptr %cntr_flags_1 to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load10 = load i8, ptr %cntr_flags_1, align 1
  %bf.lshr = lshr i8 %bf.load10, 2
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 27
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load12 = load volatile i32, ptr %flags, align 4
  %108 = and i8 %bf.lshr, 1
  %bf.value = zext i8 %108 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 26
  %bf.clear13 = and i32 %bf.load12, -67108865
  %bf.set14 = or i32 %bf.shl, %bf.clear13
  store volatile i32 %bf.set14, ptr %flags, align 4
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 5
  %109 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4128, i16 %112)
  %cmp16 = icmp eq i16 %112, 4128
  br i1 %cmp16, label %if.then18, label %if.else66

if.then18:                                        ; preds = %if.end
  %cfg_0 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 2
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_0) #11, !srcloc !338
  %cfg_1 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 3
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_1) #11, !srcloc !338
  %115 = and i16 %114, -28673
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %cdma_cfg = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 11
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cdma_cfg) #11, !srcloc !338
  %118 = and i16 %113, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %118)
  %cmp31.not = icmp eq i16 %118, 2048
  br i1 %cmp31.not, label %if.then18.if.end39_crit_edge, label %if.then33

if.then18.if.end39_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then33:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %isp_config = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 12
  %119 = ptrtoint ptr %isp_config to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load34 = load i8, ptr %isp_config, align 2
  %120 = shl i8 %bf.load34, 4
  %shl = zext i8 %120 to i16
  %or = or i16 %116, %shl
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then18.if.end39_crit_edge
  %cfg1.0 = phi i16 [ %or, %if.then33 ], [ %116, %if.then18.if.end39_crit_edge ]
  %isp_config40 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 12
  %121 = ptrtoint ptr %isp_config40 to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load41 = load i8, ptr %isp_config40, align 2
  %122 = lshr i8 %bf.load41, 3
  %123 = and i8 %122, 4
  %shl45 = zext i8 %123 to i16
  %or47 = or i16 %cfg1.0, %shl45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  tail call void @arm_heavy_mb() #11
  %124 = tail call i16 @llvm.bswap.i16(i16 %or47)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cfg_1, i16 %124) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  tail call void @arm_heavy_mb() #11
  %125 = or i16 %117, 512
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cdma_cfg, i16 %125) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @arm_heavy_mb() #11
  %ddma_cfg = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ddma_cfg, i16 %125) #11, !srcloc !337
  br label %if.end124

if.else66:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %isp_config68 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 12
  %126 = ptrtoint ptr %isp_config68 to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load69 = load i8, ptr %isp_config68, align 2
  %127 = shl i8 %bf.load69, 4
  %128 = lshr i8 %bf.load69, 3
  %129 = and i8 %128, 4
  %or811 = or i8 %129, %127
  %conv82 = zext i8 %or811 to i16
  %ports = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %130 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %131)
  %cmp84 = icmp ugt i8 %131, 1
  %or88 = or i16 %conv82, 8192
  %cfg167.0 = select i1 %cmp84, i16 %or88, i16 %conv82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  tail call void @arm_heavy_mb() #11
  %132 = tail call i16 @llvm.bswap.i16(i16 %cfg167.0)
  %cfg_194 = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %cfg_194, i16 %132) #11, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  %gpio_enable = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 45
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %gpio_enable, i16 -28928) #11, !srcloc !337
  %termination = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 13
  %133 = ptrtoint ptr %termination to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load98 = load i8, ptr %termination, align 1
  %bf.lshr99 = lshr i8 %bf.load98, 6
  %134 = lshr i8 %bf.load98, 2
  %135 = and i8 %134, 12
  %or1082 = or i8 %bf.lshr99, %135
  %136 = shl i8 %bf.load98, 7
  %or1163 = or i8 %or1082, %136
  %conv117 = zext i8 %or1163 to i16
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  tail call void @arm_heavy_mb() #11
  %138 = shl nuw i16 %conv117, 8
  %gpio_data = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %gpio_data, i16 %138) #11, !srcloc !337
  br label %if.end124

if.end124:                                        ; preds = %if.else66, %if.end39
  %139 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !338
  %140 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 69, ptr %mb, align 2
  %isp_parameter = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 14
  %141 = ptrtoint ptr %isp_parameter to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %isp_parameter, align 2
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %2, align 2
  %call132 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb)
  %144 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev, align 4
  %device135 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %device135 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %device135, align 2
  %148 = zext i16 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %147, label %if.end124.if.end149_crit_edge [
    i16 4128, label %if.end124.if.then144_crit_edge
    i16 4672, label %if.end124.if.then144_crit_edge31
  ]

if.end124.if.then144_crit_edge31:                 ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then144

if.end124.if.then144_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then144

if.end124.if.end149_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

if.then144:                                       ; preds = %if.end124.if.then144_crit_edge, %if.end124.if.then144_crit_edge31
  %149 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 52, ptr %mb, align 2
  %150 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 40, ptr %2, align 2
  %call147 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb)
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %if.end124.if.end149_crit_edge
  %151 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 74, ptr %mb, align 2
  %firmware_feature = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 15
  %152 = ptrtoint ptr %firmware_feature to i32
  call void @__asan_load2_noabort(i32 %152)
  %bf.load151 = load i16, ptr %firmware_feature, align 2
  %bf.lshr152 = lshr i16 %bf.load151, 15
  %153 = lshr i16 %bf.load151, 13
  %154 = and i16 %153, 2
  %or1624 = or i16 %154, %bf.lshr152
  %155 = lshr i16 %bf.load151, 5
  %156 = and i16 %155, 32
  %or1725 = or i16 %or1624, %156
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %or1725, ptr %2, align 2
  %call175 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb)
  %158 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 50, ptr %mb, align 2
  %retry_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 2
  %159 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %retry_count, align 2
  %conv180 = zext i8 %160 to i16
  %161 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv180, ptr %2, align 2
  %retry_delay = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 3
  %162 = ptrtoint ptr %retry_delay to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %retry_delay, align 1
  %conv184 = zext i8 %163 to i16
  %164 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv184, ptr %3, align 2
  %retry_count188 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 2
  %165 = ptrtoint ptr %retry_count188 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %retry_count188, align 2
  %conv189 = zext i8 %166 to i16
  %167 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv189, ptr %4, align 2
  %retry_delay193 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 3
  %168 = ptrtoint ptr %retry_delay193 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %retry_delay193, align 1
  %conv194 = zext i8 %169 to i16
  %170 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv194, ptr %5, align 2
  %call197 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext -57, ptr noundef nonnull %mb)
  %171 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 54, ptr %mb, align 2
  %config_2 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 4
  %172 = ptrtoint ptr %config_2 to i32
  call void @__asan_load1_noabort(i32 %172)
  %bf.load202 = load i8, ptr %config_2, align 2
  %bf.lshr203 = lshr i8 %bf.load202, 4
  %conv204 = zext i8 %bf.lshr203 to i16
  %173 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv204, ptr %2, align 2
  %config_2208 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 4
  %174 = ptrtoint ptr %config_2208 to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load209 = load i8, ptr %config_2208, align 2
  %bf.lshr210 = lshr i8 %bf.load209, 4
  %conv211 = zext i8 %bf.lshr210 to i16
  %175 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv211, ptr %3, align 2
  %call214 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 7, ptr noundef nonnull %mb)
  %176 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 53, ptr %mb, align 2
  %177 = ptrtoint ptr %config_2 to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load221 = load i8, ptr %config_2, align 2
  %178 = shl i8 %bf.load221, 2
  %179 = and i8 %178, 48
  %180 = zext i8 %179 to i16
  %181 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %2, align 2
  %182 = ptrtoint ptr %config_2208 to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load248 = load i8, ptr %config_2208, align 2
  %183 = shl i8 %bf.load248, 2
  %184 = and i8 %183, 48
  %185 = zext i8 %184 to i16
  %186 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %3, align 2
  %call272 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 7, ptr noundef nonnull %mb)
  %187 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 90, ptr %mb, align 2
  %188 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 2, ptr %2, align 2
  %call277 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb)
  %189 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 55, ptr %mb, align 2
  %190 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 2, ptr %2, align 2
  %191 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 2, ptr %3, align 2
  %call283 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 7, ptr noundef nonnull %mb)
  %192 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 51, ptr %mb, align 2
  %193 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 8, ptr %2, align 2
  %call288 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb)
  %194 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 49, ptr %mb, align 2
  %selection_timeout = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 0, i32 6
  %195 = ptrtoint ptr %selection_timeout to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %selection_timeout, align 2
  %197 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %2, align 2
  %selection_timeout296 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 1, i32 6
  %198 = ptrtoint ptr %selection_timeout296 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %selection_timeout296, align 2
  %200 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %3, align 2
  %call299 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 7, ptr noundef nonnull %mb)
  %ports302 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %201 = ptrtoint ptr %ports302 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %ports302, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %cmp30422.not = icmp eq i8 %202, 0
  br i1 %cmp30422.not, label %if.end149.for.end311_crit_edge, label %for.body306.lr.ph

if.end149.for.end311_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end311

for.body306.lr.ph:                                ; preds = %if.end149
  %203 = getelementptr inbounds [8 x i16], ptr %mb.i, i32 0, i32 1
  %204 = getelementptr inbounds i8, ptr %mb.i, i32 4
  %205 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 1
  %206 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 2
  %207 = getelementptr inbounds [8 x i16], ptr %mb.i.i, i32 0, i32 3
  %208 = getelementptr inbounds i8, ptr %mb.i.i, i32 8
  br label %for.body306

for.body306:                                      ; preds = %qla1280_config_bus.exit.for.body306_crit_edge, %for.body306.lr.ph
  %bus.123 = phi i32 [ 0, %for.body306.lr.ph ], [ %inc310, %qla1280_config_bus.exit.for.body306_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i) #11
  %arrayidx.i7 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123
  %209 = call ptr @memset(ptr %204, i32 255, i32 12)
  %210 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %210)
  %bf.load.i = load i8, ptr %arrayidx.i7, align 2
  %arrayidx2.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123
  %disable_scsi_reset.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123, i32 8
  %211 = ptrtoint ptr %disable_scsi_reset.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %bf.load3.i = load i8, ptr %disable_scsi_reset.i, align 2
  %212 = shl i8 %bf.load.i, 3
  %bf.shl.i = and i8 %212, 64
  %bf.clear4.i = and i8 %bf.load3.i, -65
  %bf.set.i = or i8 %bf.clear4.i, %bf.shl.i
  store i8 %bf.set.i, ptr %disable_scsi_reset.i, align 2
  %bf.load8.i = load i8, ptr %arrayidx.i7, align 2
  %bf.lshr9.i = lshr i8 %bf.load8.i, 4
  %213 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %bf.lshr9.i, ptr %arrayidx2.i, align 2
  %214 = ptrtoint ptr %mb.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 48, ptr %mb.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus.123)
  %tobool.not.i = icmp eq i32 %bus.123, 0
  %215 = or i8 %bf.lshr9.i, -128
  %spec.select.i8 = select i1 %tobool.not.i, i8 %bf.lshr9.i, i8 %215
  %cond.i = zext i8 %spec.select.i8 to i16
  %216 = ptrtoint ptr %203 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %cond.i, ptr %203, align 2
  %call.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, ptr noundef nonnull %mb.i) #11
  %bus_reset_delay.i9 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123, i32 1
  %217 = ptrtoint ptr %bus_reset_delay.i9 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %bus_reset_delay.i9, align 1
  %bus_reset_delay27.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123, i32 1
  %219 = ptrtoint ptr %bus_reset_delay27.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %bus_reset_delay27.i, align 1
  %max_queue_depth.i10 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123, i32 7
  %220 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %max_queue_depth.i10, align 2
  %sub.i = add i16 %221, -1
  %hiwat.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123, i32 7
  %222 = ptrtoint ptr %hiwat.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %sub.i, ptr %hiwat.i, align 2
  %qtag_enables.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123, i32 6
  %device_enables.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123, i32 4
  %lun_disables120.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 13, i32 %bus.123, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %qla1280_config_target.exit.i.for.body.i_crit_edge, %for.body306
  %target.062.i = phi i32 [ 0, %for.body306 ], [ %inc.i15, %qla1280_config_target.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb.i.i) #11
  %223 = ptrtoint ptr %208 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 8)
  store i64 -1, ptr %208, align 2
  %224 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 56, ptr %mb.i.i, align 2
  %or.i.i = or i32 %target.062.i, 128
  %cond.i.i = select i1 %tobool.not.i, i32 %target.062.i, i32 %or.i.i
  %cond.tr.i.i = trunc i32 %cond.i.i to i16
  %conv.i.i11 = shl i16 %cond.tr.i.i, 8
  %225 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i.i11, ptr %205, align 2
  %226 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 -4864, ptr %206, align 2
  %227 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pdev, align 4
  %device.i.i12 = getelementptr inbounds %struct.pci_dev, ptr %228, i32 0, i32 8
  %229 = ptrtoint ptr %device.i.i12 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %device.i.i12, align 2
  %231 = add i16 %230, -4118
  %switch.and.i.i = and i16 %231, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i16 %switch.and.i.i, 0
  %232 = select i1 %switch.selectcmp.i.i, i8 3, i8 4
  %flags22.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123, i32 11, i32 %target.062.i, i32 3
  %233 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load23.i.i = load i8, ptr %flags22.i.i, align 1
  %bf.lshr24.i.i = lshr i8 %bf.load23.i.i, %232
  %storemerge.in.i.i = zext i8 %bf.lshr24.i.i to i16
  %storemerge.i.i = shl nuw nsw i16 %storemerge.in.i.i, 8
  %arrayidx32.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123, i32 11, i32 %target.062.i
  %sync_period.i.i13 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123, i32 11, i32 %target.062.i, i32 2
  %234 = ptrtoint ptr %sync_period.i.i13 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %sync_period.i.i13, align 2
  %conv33.i.i = zext i8 %235 to i16
  %or36.i.i = or i16 %storemerge.i.i, %conv33.i.i
  %236 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %or36.i.i, ptr %207, align 2
  %call.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %shl38.i.i = shl nuw nsw i32 1, %target.062.i
  %237 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %bf.load44.i.i = load i8, ptr %arrayidx32.i.i, align 2
  %238 = and i8 %bf.load44.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool46.not.i.i = icmp eq i8 %238, 0
  br i1 %tobool46.not.i.i, label %for.body.i.if.end53.i.i_crit_edge, label %if.then47.i.i

for.body.i.if.end53.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i.i

if.then47.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %239 = ptrtoint ptr %qtag_enables.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %qtag_enables.i.i, align 2
  %241 = trunc i32 %shl38.i.i to i16
  %conv52.i.i = or i16 %240, %241
  store i16 %conv52.i.i, ptr %qtag_enables.i.i, align 2
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then47.i.i, %for.body.i.if.end53.i.i_crit_edge
  %242 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdev, align 4
  %device55.i.i = getelementptr inbounds %struct.pci_dev, ptr %243, i32 0, i32 8
  %244 = ptrtoint ptr %device55.i.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %device55.i.i, align 2
  %246 = zext i16 %245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.182)
  switch i16 %245, label %if.else88.i.i [
    i16 4118, label %if.end53.i.i.if.then65.i.i_crit_edge
    i16 4630, label %if.end53.i.i.if.then65.i.i_crit_edge32
  ]

if.end53.i.i.if.then65.i.i_crit_edge32:           ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65.i.i

if.end53.i.i.if.then65.i.i_crit_edge:             ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65.i.i

if.then65.i.i:                                    ; preds = %if.end53.i.i.if.then65.i.i_crit_edge, %if.end53.i.i.if.then65.i.i_crit_edge32
  %247 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %bf.load71.i.i = load i8, ptr %flags22.i.i, align 1
  %248 = and i8 %bf.load71.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool74.not.i.i = icmp eq i8 %248, 0
  br i1 %tobool74.not.i.i, label %if.then65.i.i.qla1280_config_target.exit.i_crit_edge, label %if.then65.i.i.if.end125.sink.split.i.i_crit_edge

if.then65.i.i.if.end125.sink.split.i.i_crit_edge: ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.sink.split.i.i

if.then65.i.i.qla1280_config_target.exit.i_crit_edge: ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_config_target.exit.i

if.else88.i.i:                                    ; preds = %if.end53.i.i
  %249 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load94.i.i = load i8, ptr %flags22.i.i, align 1
  %250 = and i8 %bf.load94.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool97.not.i.i = icmp eq i8 %250, 0
  br i1 %tobool97.not.i.i, label %if.else88.i.i.if.end106.i.i_crit_edge, label %if.then98.i.i

if.else88.i.i.if.end106.i.i_crit_edge:            ; preds = %if.else88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i.i

if.then98.i.i:                                    ; preds = %if.else88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %251 = ptrtoint ptr %device_enables.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %device_enables.i.i, align 2
  %253 = trunc i32 %shl38.i.i to i16
  %conv105.i.i = or i16 %252, %253
  store i16 %conv105.i.i, ptr %device_enables.i.i, align 2
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.then98.i.i, %if.else88.i.i.if.end106.i.i_crit_edge
  %254 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %bf.load112.i.i = load i8, ptr %flags22.i.i, align 1
  %255 = and i8 %bf.load112.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool115.not.i.i = icmp eq i8 %255, 0
  br i1 %tobool115.not.i.i, label %if.end106.i.i.qla1280_config_target.exit.i_crit_edge, label %if.end106.i.i.if.end125.sink.split.i.i_crit_edge

if.end106.i.i.if.end125.sink.split.i.i_crit_edge: ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.sink.split.i.i

if.end106.i.i.qla1280_config_target.exit.i_crit_edge: ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla1280_config_target.exit.i

if.end125.sink.split.i.i:                         ; preds = %if.end106.i.i.if.end125.sink.split.i.i_crit_edge, %if.then65.i.i.if.end125.sink.split.i.i_crit_edge
  %device_enables.sink210.i.i = phi ptr [ %device_enables.i.i, %if.then65.i.i.if.end125.sink.split.i.i_crit_edge ], [ %lun_disables120.i.i, %if.end106.i.i.if.end125.sink.split.i.i_crit_edge ]
  %256 = ptrtoint ptr %device_enables.sink210.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %device_enables.sink210.i.i, align 2
  %258 = trunc i32 %shl38.i.i to i16
  %conv81.i.i = or i16 %257, %258
  store i16 %conv81.i.i, ptr %device_enables.sink210.i.i, align 2
  br label %qla1280_config_target.exit.i

qla1280_config_target.exit.i:                     ; preds = %if.end125.sink.split.i.i, %if.end106.i.i.qla1280_config_target.exit.i_crit_edge, %if.then65.i.i.qla1280_config_target.exit.i_crit_edge
  %execution_throttle.i.i14 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 28, i32 17, i32 %bus.123, i32 11, i32 %target.062.i, i32 1
  %259 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 57, ptr %mb.i.i, align 2
  %260 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv.i.i11, ptr %205, align 2
  %261 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %max_queue_depth.i10, align 2
  %263 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %262, ptr %206, align 2
  %264 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.i.i = zext i8 %265 to i16
  %266 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv149.i.i, ptr %207, align 2
  %call152.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %267 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.1.i.i = or i16 %conv.i.i11, 1
  %268 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %conv141.1.i.i, ptr %205, align 2
  %269 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %max_queue_depth.i10, align 2
  %271 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %270, ptr %206, align 2
  %272 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.1.i.i = zext i8 %273 to i16
  %274 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %conv149.1.i.i, ptr %207, align 2
  %call152.1.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %275 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.2.i.i = or i16 %conv.i.i11, 2
  %276 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv141.2.i.i, ptr %205, align 2
  %277 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %max_queue_depth.i10, align 2
  %279 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %278, ptr %206, align 2
  %280 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.2.i.i = zext i8 %281 to i16
  %282 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %conv149.2.i.i, ptr %207, align 2
  %call152.2.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %283 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.3.i.i = or i16 %conv.i.i11, 3
  %284 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv141.3.i.i, ptr %205, align 2
  %285 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %max_queue_depth.i10, align 2
  %287 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %286, ptr %206, align 2
  %288 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.3.i.i = zext i8 %289 to i16
  %290 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %conv149.3.i.i, ptr %207, align 2
  %call152.3.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %291 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.4.i.i = or i16 %conv.i.i11, 4
  %292 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %conv141.4.i.i, ptr %205, align 2
  %293 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %max_queue_depth.i10, align 2
  %295 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %294, ptr %206, align 2
  %296 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.4.i.i = zext i8 %297 to i16
  %298 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv149.4.i.i, ptr %207, align 2
  %call152.4.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %299 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.5.i.i = or i16 %conv.i.i11, 5
  %300 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %conv141.5.i.i, ptr %205, align 2
  %301 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %max_queue_depth.i10, align 2
  %303 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %206, align 2
  %304 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.5.i.i = zext i8 %305 to i16
  %306 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %conv149.5.i.i, ptr %207, align 2
  %call152.5.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %307 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.6.i.i = or i16 %conv.i.i11, 6
  %308 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %conv141.6.i.i, ptr %205, align 2
  %309 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %max_queue_depth.i10, align 2
  %311 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %310, ptr %206, align 2
  %312 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.6.i.i = zext i8 %313 to i16
  %314 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 %conv149.6.i.i, ptr %207, align 2
  %call152.6.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  %315 = ptrtoint ptr %mb.i.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 57, ptr %mb.i.i, align 2
  %conv141.7.i.i = or i16 %conv.i.i11, 7
  %316 = ptrtoint ptr %205 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %conv141.7.i.i, ptr %205, align 2
  %317 = ptrtoint ptr %max_queue_depth.i10 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %max_queue_depth.i10, align 2
  %319 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %318, ptr %206, align 2
  %320 = ptrtoint ptr %execution_throttle.i.i14 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %execution_throttle.i.i14, align 1
  %conv149.7.i.i = zext i8 %321 to i16
  %322 = ptrtoint ptr %207 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv149.7.i.i, ptr %207, align 2
  %call152.7.i.i = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext 15, ptr noundef nonnull %mb.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i.i) #11
  %inc.i15 = add nuw nsw i32 %target.062.i, 1
  %exitcond.not.i16 = icmp eq i32 %inc.i15, 16
  br i1 %exitcond.not.i16, label %qla1280_config_bus.exit, label %qla1280_config_target.exit.i.for.body.i_crit_edge

qla1280_config_target.exit.i.for.body.i_crit_edge: ; preds = %qla1280_config_target.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

qla1280_config_bus.exit:                          ; preds = %qla1280_config_target.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb.i) #11
  %inc310 = add nuw nsw i32 %bus.123, 1
  %323 = ptrtoint ptr %ports302 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %ports302, align 2
  %conv303 = zext i8 %324 to i32
  %cmp304 = icmp ult i32 %inc310, %conv303
  br i1 %cmp304, label %qla1280_config_bus.exit.for.body306_crit_edge, label %qla1280_config_bus.exit.for.end311_crit_edge

qla1280_config_bus.exit.for.end311_crit_edge:     ; preds = %qla1280_config_bus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end311

qla1280_config_bus.exit.for.body306_crit_edge:    ; preds = %qla1280_config_bus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body306

for.end311:                                       ; preds = %qla1280_config_bus.exit.for.end311_crit_edge, %if.end149.for.end311_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla1280_init_rings(ptr noundef %ha) unnamed_addr #6 align 64 {
entry:
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #11
  %0 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 6
  %5 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 7
  %outstanding_cmds = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %6 = getelementptr inbounds i8, ptr %mb, i32 10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2
  %8 = call ptr @memset(ptr %outstanding_cmds, i32 0, i32 2048)
  %request_ring = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 16
  %9 = ptrtoint ptr %request_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %request_ring, align 4
  %request_ring_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 17
  %11 = ptrtoint ptr %request_ring_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %request_ring_ptr, align 4
  %req_ring_index = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 18
  %12 = ptrtoint ptr %req_ring_index to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %req_ring_index, align 4
  %req_q_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 19
  %13 = ptrtoint ptr %req_q_cnt to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 255, ptr %req_q_cnt, align 2
  %14 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 82, ptr %mb, align 2
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 255, ptr %0, align 2
  %request_dma = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %16 = ptrtoint ptr %request_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %request_dma, align 4
  %conv = trunc i32 %17 to i16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %2, align 2
  %shr = lshr i32 %17, 16
  %conv5 = trunc i32 %shr to i16
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv5, ptr %1, align 2
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %3, align 2
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %5, align 2
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %4, align 2
  %call = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext -33, ptr noundef nonnull %mb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %23 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 5
  %response_ring = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 21
  %24 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %response_ring, align 4
  %response_ring_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 22
  %26 = ptrtoint ptr %response_ring_ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %response_ring_ptr, align 4
  %rsp_ring_index = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 23
  %27 = ptrtoint ptr %rsp_ring_index to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %rsp_ring_index, align 4
  %28 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 83, ptr %mb, align 2
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 63, ptr %0, align 2
  %response_dma = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 20
  %30 = ptrtoint ptr %response_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %response_dma, align 4
  %conv24 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv24, ptr %2, align 2
  %shr27 = lshr i32 %31, 16
  %conv29 = trunc i32 %shr27 to i16
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv29, ptr %1, align 2
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %23, align 2
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %5, align 2
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %4, align 2
  %call45 = call fastcc i32 @qla1280_mailbox_command(ptr noundef %ha, i8 noundef zeroext -17, ptr noundef nonnull %mb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ %call45, %if.then ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qla1280_request_firmware(ptr nocapture noundef %ha) unnamed_addr #6 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @qla1280_firmware_mutex, i32 noundef 0) #11
  %devnum = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 6
  %4 = ptrtoint ptr %devnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %devnum, align 4
  %idxprom = zext i8 %5 to i32
  %fw_index = getelementptr [7 x %struct.qla_boards], ptr @ql1280_board_tbl, i32 0, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %fw_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_index, align 4
  %fw2 = getelementptr [3 x %struct.qla_fw], ptr @qla1280_fw_tbl, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw2, align 4
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %fw, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr [3 x %struct.qla_fw], ptr @qla1280_fw_tbl, i32 0, i32 %7
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1, align 4
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 5
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %12, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %12, i32 noundef %call) #15
  %15 = inttoptr i32 %call to ptr
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %fw, align 4
  br label %unlock

if.end9:                                          ; preds = %if.end
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %rem = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp = icmp ult i32 %20, 6
  %or.cond = or i1 %cmp, %tobool10.not
  br i1 %or.cond, label %do.end15, label %if.end20

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %20, ptr noundef %12) #15
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %22) #11
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -22 to ptr), ptr %fw, align 4
  br label %unlock

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %fw2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %fw2, align 4
  br label %out

out:                                              ; preds = %if.end20, %entry.out_crit_edge
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %fwver1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 31
  %31 = ptrtoint ptr %fwver1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fwver1, align 2
  %32 = load ptr, ptr %data, align 4
  %arrayidx25 = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx25, align 1
  %fwver2 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 32
  %35 = ptrtoint ptr %fwver2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %fwver2, align 1
  %36 = load ptr, ptr %data, align 4
  %arrayidx27 = getelementptr i8, ptr %36, i32 2
  %37 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx27, align 1
  %fwver3 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 33
  %39 = ptrtoint ptr %fwver3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %fwver3, align 4
  br label %unlock

unlock:                                           ; preds = %out, %do.end15, %do.end
  call void @mutex_unlock(ptr noundef nonnull @qla1280_firmware_mutex) #11
  %40 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ha, align 4
  %host_lock29 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %host_lock29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host_lock29, align 4
  call void @_raw_spin_lock_irq(ptr noundef %43) #11
  %44 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @qla1280_get_nvram_word(ptr nocapture noundef readonly %ha, i32 noundef %address) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %address, 21
  %or = or i32 %shl, -1073741824
  %iobase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %if.end.i
  %nvram.i = getelementptr inbounds %struct.device_reg, ptr %1, i32 0, i32 7
  br label %do.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %nv_cmd.addr.055.i = phi i32 [ %or, %entry ], [ %shl1.i, %if.end.i.for.body.i_crit_edge ]
  %cnt.054.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nv_cmd.addr.055.i)
  %tobool.not.i = icmp sgt i32 %nv_cmd.addr.055.i, -1
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %nvram.i53.i = getelementptr inbounds %struct.device_reg, ptr %3, i32 0, i32 7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i53.i, i16 1536) #11, !srcloc !337
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 107374000) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i53.i, i16 1792) #11, !srcloc !337
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 107374000) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i53.i, i16 1536) #11, !srcloc !337
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #11, !srcloc !338
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i53.i, i16 512) #11, !srcloc !337
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 107374000) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i53.i, i16 768) #11, !srcloc !337
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 107374000) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i53.i, i16 512) #11, !srcloc !337
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #11, !srcloc !338
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 107374000) #11
  %shl1.i = shl i32 %nv_cmd.addr.055.i, 1
  %inc.i = add nuw nsw i32 %cnt.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %for.cond2.preheader.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond2.preheader.i
  %cnt.157.i = phi i32 [ 0, %for.cond2.preheader.i ], [ %inc27.i, %do.body.i.do.body.i_crit_edge ]
  %data.056.i = phi i16 [ 0, %for.cond2.preheader.i ], [ %20, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 768) #11, !srcloc !337
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 107374000) #11
  %shl5.i = shl i16 %data.056.i, 1
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #11, !srcloc !338
  %18 = lshr i16 %17, 11
  %19 = and i16 %18, 1
  %20 = or i16 %19, %shl5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 512) #11, !srcloc !337
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 107374000) #11
  %inc27.i = add nuw nsw i32 %cnt.157.i, 1
  %exitcond58.not.i = icmp eq i32 %inc27.i, 16
  br i1 %exitcond58.not.i, label %qla1280_nvram_request.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

qla1280_nvram_request.exit:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 0) #11, !srcloc !337
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 107374000) #11
  %25 = tail call i16 @llvm.bswap.i16(i16 %20)
  ret i16 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #9

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !320, !322, !324}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !{ptr @__setup_qla1280_setup, !1, !"__setup_qla1280_setup", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla1280.c", i32 476, i32 1}
!2 = !{ptr @__initcall__kmod_qla1280__287_4393_qla1280_init6, !3, !"__initcall__kmod_qla1280__287_4393_qla1280_init6", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla1280.c", i32 4393, i32 1}
!4 = !{ptr @__exitcall_qla1280_exit, !5, !"__exitcall_qla1280_exit", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla1280.c", i32 4394, i32 1}
!6 = !{ptr @__UNIQUE_ID_author288, !7, !"__UNIQUE_ID_author288", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla1280.c", i32 4396, i32 1}
!8 = !{ptr @__UNIQUE_ID_description289, !9, !"__UNIQUE_ID_description289", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla1280.c", i32 4397, i32 1}
!10 = !{ptr @__UNIQUE_ID_file290, !11, !"__UNIQUE_ID_file290", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla1280.c", i32 4398, i32 1}
!12 = !{ptr @__UNIQUE_ID_license291, !11, !"__UNIQUE_ID_license291", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_firmware292, !14, !"__UNIQUE_ID_firmware292", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qla1280.c", i32 4399, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware293, !16, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qla1280.c", i32 4400, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware294, !18, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!18 = !{!"../drivers/scsi/qla1280.c", i32 4401, i32 1}
!19 = !{ptr @__UNIQUE_ID_version295, !20, !"__UNIQUE_ID_version295", i1 false, i1 false}
!20 = !{!"../drivers/scsi/qla1280.c", i32 4402, i32 1}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !20, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @__setup_str_qla1280_setup, !1, !"__setup_str_qla1280_setup", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla1280.c", i32 4054, i32 20}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla1280.c", i32 4057, i32 27}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla1280.c", i32 4090, i32 4}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qla1280_setup._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @qla1280_setup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla1280.c", i32 4028, i32 4}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla1280.c", i32 4029, i32 4}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla1280.c", i32 4030, i32 4}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla1280.c", i32 4031, i32 4}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla1280.c", i32 4032, i32 4}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla1280.c", i32 4033, i32 4}
!48 = !{ptr @setup_token, !49, !"setup_token", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla1280.c", i32 4026, i32 28}
!50 = distinct !{null, !51, !"driver_setup", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla1280.c", i32 435, i32 32}
!52 = !{ptr @qla1280_verbose, !53, !"qla1280_verbose", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla1280.c", i32 554, i32 12}
!54 = !{ptr @qla1280_pci_driver, !55, !"qla1280_pci_driver", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla1280.c", i32 4344, i32 26}
!56 = !{ptr @qla1280_pci_tbl, !57, !"qla1280_pci_tbl", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla1280.c", i32 511, i32 29}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla1280.c", i32 4156, i32 3}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qla1280_probe_one._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @qla1280_probe_one._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla1280.c", i32 4161, i32 2}
!65 = !{ptr @qla1280_probe_one._entry.16, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @qla1280_probe_one._entry_ptr.18, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/qla1280.c", i32 4165, i32 3}
!69 = !{ptr @qla1280_probe_one._entry.19, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @qla1280_probe_one._entry_ptr.21, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla1280.c", i32 4175, i32 3}
!73 = !{ptr @qla1280_probe_one._entry.22, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qla1280_probe_one._entry_ptr.24, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qla1280.c", i32 4199, i32 3}
!77 = !{ptr @qla1280_probe_one._entry.25, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qla1280_probe_one._entry_ptr.27, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla1280.c", i32 4210, i32 3}
!81 = !{ptr @qla1280_probe_one._entry.28, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qla1280_probe_one._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/qla1280.c", i32 4218, i32 3}
!85 = !{ptr @qla1280_probe_one._entry.31, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @qla1280_probe_one._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qla1280.c", i32 4239, i32 3}
!89 = !{ptr @qla1280_probe_one._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @qla1280_probe_one._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/qla1280.c", i32 4264, i32 3}
!93 = !{ptr @qla1280_probe_one._entry.37, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qla1280_probe_one._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qla1280.c", i32 4271, i32 3}
!97 = !{ptr @qla1280_probe_one._entry.40, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @qla1280_probe_one._entry_ptr.42, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/qla1280.c", i32 545, i32 11}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla1280.c", i32 546, i32 11}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qla1280.c", i32 547, i32 11}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qla1280.c", i32 548, i32 11}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qla1280.c", i32 549, i32 11}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qla1280.c", i32 550, i32 11}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qla1280.c", i32 551, i32 11}
!113 = !{ptr @ql1280_board_tbl, !114, !"ql1280_board_tbl", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qla1280.c", i32 544, i32 26}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qla1280.c", i32 4130, i32 12}
!117 = !{ptr @qla1280_driver_template, !118, !"qla1280_driver_template", i1 false, i1 false}
!118 = !{!"../drivers/scsi/qla1280.c", i32 4127, i32 34}
!119 = !{ptr @qla1280_info.qla1280_scsi_name_buffer, !120, !"qla1280_scsi_name_buffer", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla1280.c", i32 663, i32 14}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qla1280.c", i32 674, i32 4}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qla1280.c", i32 844, i32 3}
!125 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qla1280_error_action._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @qla1280_error_action._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla1280.c", i32 866, i32 4}
!130 = !{ptr @qla1280_error_action._entry.54, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qla1280_error_action._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla1280.c", i32 888, i32 4}
!134 = !{ptr @qla1280_error_action._entry.57, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @qla1280_error_action._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla1280.c", i32 900, i32 4}
!138 = !{ptr @qla1280_error_action._entry.60, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @qla1280_error_action._entry_ptr.62, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla1280.c", i32 911, i32 4}
!142 = !{ptr @qla1280_error_action._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @qla1280_error_action._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla1280.c", i32 914, i32 4}
!146 = !{ptr @qla1280_error_action._entry.66, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @qla1280_error_action._entry_ptr.68, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla1280.c", i32 939, i32 3}
!150 = !{ptr @qla1280_error_action._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @qla1280_error_action._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @init_completion.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../include/linux/completion.h", i32 87, i32 2}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/qla1280.c", i32 2430, i32 3}
!157 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @qla1280_mailbox_command._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @qla1280_mailbox_command._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @qla1280_mailbox_command.__key, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla1280.c", i32 2454, i32 2}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qla1280.c", i32 2470, i32 3}
!165 = !{ptr @qla1280_mailbox_command._entry.76, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @qla1280_mailbox_command._entry_ptr.78, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/qla1280.c", i32 2474, i32 3}
!169 = !{ptr @qla1280_mailbox_command._entry.79, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @qla1280_mailbox_command._entry_ptr.81, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qla1280.c", i32 2477, i32 3}
!173 = !{ptr @qla1280_mailbox_command._entry.82, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @qla1280_mailbox_command._entry_ptr.84, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qla1280.c", i32 737, i32 2}
!177 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @qla1280_mailbox_timeout._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @qla1280_mailbox_timeout._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla1280.c", i32 3419, i32 6}
!182 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @qla1280_isr._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @qla1280_isr._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla1280.c", i32 3430, i32 4}
!187 = !{ptr @qla1280_isr._entry.89, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @qla1280_isr._entry_ptr.91, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qla1280.c", i32 3435, i32 4}
!191 = !{ptr @qla1280_isr._entry.92, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @qla1280_isr._entry_ptr.94, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qla1280.c", i32 3442, i32 4}
!195 = !{ptr @qla1280_isr._entry.95, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @qla1280_isr._entry_ptr.97, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qla1280.c", i32 3447, i32 4}
!199 = !{ptr @qla1280_isr._entry.98, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @qla1280_isr._entry_ptr.100, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/qla1280.c", i32 3461, i32 4}
!203 = !{ptr @qla1280_isr._entry.101, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @qla1280_isr._entry_ptr.103, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qla1280.c", i32 3617, i32 3}
!207 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @qla1280_status_entry._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @qla1280_status_entry._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla1280.c", i32 1362, i32 4}
!212 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @qla1280_return_status._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @qla1280_return_status._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/qla1280.c", i32 2553, i32 3}
!217 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @qla1280_bus_reset._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @qla1280_bus_reset._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla1280.c", i32 3775, i32 2}
!222 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @qla1280_abort_isp._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @qla1280_abort_isp._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/qla1280.c", i32 3810, i32 3}
!227 = !{ptr @qla1280_abort_isp._entry.112, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @qla1280_abort_isp._entry_ptr.114, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/qla1280.c", i32 1616, i32 3}
!231 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @qla1280_chip_diag._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @qla1280_chip_diag._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla1280.c", i32 1648, i32 3}
!236 = !{ptr @qla1280_chip_diag._entry.117, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @qla1280_chip_diag._entry_ptr.119, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla1280.c", i32 1689, i32 4}
!240 = !{ptr @.str.121, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @qla1280_load_firmware_pio._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @qla1280_load_firmware_pio._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/qla1280.c", i32 1514, i32 3}
!245 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @qla1280_request_firmware._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @qla1280_request_firmware._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla1280.c", i32 1520, i32 3}
!250 = !{ptr @qla1280_request_firmware._entry.124, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @qla1280_request_firmware._entry_ptr.126, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qla1280.c", i32 528, i32 8}
!254 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @qla1280_firmware_mutex, !253, !"qla1280_firmware_mutex", i1 false, i1 false}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qla1280.c", i32 1770, i32 4}
!258 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @qla1280_load_firmware_dma._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @qla1280_load_firmware_dma._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/qla1280.c", i32 1831, i32 3}
!263 = !{ptr @.str.132, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @qla1280_start_firmware._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @qla1280_start_firmware._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.134, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla1280.c", i32 1841, i32 3}
!268 = !{ptr @qla1280_start_firmware._entry.133, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @qla1280_start_firmware._entry_ptr.135, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.136, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla1280.c", i32 1159, i32 3}
!272 = !{ptr @.str.137, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @qla1280_set_target_parameters._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @qla1280_set_target_parameters._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.138, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/qla1280.c", i32 3903, i32 2}
!277 = !{ptr @.str.139, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @qla1280_get_target_parameters._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @qla1280_get_target_parameters._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.141, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/qla1280.c", i32 3906, i32 3}
!282 = !{ptr @qla1280_get_target_parameters._entry.140, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @qla1280_get_target_parameters._entry_ptr.142, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.144, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/qla1280.c", i32 3909, i32 4}
!286 = !{ptr @qla1280_get_target_parameters._entry.143, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @qla1280_get_target_parameters._entry_ptr.145, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.147, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla1280.c", i32 3911, i32 4}
!290 = !{ptr @qla1280_get_target_parameters._entry.146, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @qla1280_get_target_parameters._entry_ptr.148, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.150, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla1280.c", i32 3913, i32 3}
!294 = !{ptr @qla1280_get_target_parameters._entry.149, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @qla1280_get_target_parameters._entry_ptr.151, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.153, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla1280.c", i32 3916, i32 3}
!298 = !{ptr @qla1280_get_target_parameters._entry.152, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @qla1280_get_target_parameters._entry_ptr.154, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.156, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qla1280.c", i32 3917, i32 2}
!302 = !{ptr @qla1280_get_target_parameters._entry.155, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @qla1280_get_target_parameters._entry_ptr.157, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.158, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla1280.c", i32 1445, i32 3}
!306 = !{ptr @.str.159, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @qla1280_initialize_adapter._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @qla1280_initialize_adapter._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.160, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/qla1280.c", i32 589, i32 2}
!311 = !{ptr @.str.161, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @qla1280_read_nvram._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @qla1280_read_nvram._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.163, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla1280.c", i32 621, i32 4}
!316 = !{ptr @qla1280_read_nvram._entry.162, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @qla1280_read_nvram._entry_ptr.164, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.165, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla1280.c", i32 538, i32 3}
!320 = !{ptr @.str.166, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/qla1280.c", i32 539, i32 3}
!322 = !{ptr @.str.167, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla1280.c", i32 540, i32 3}
!324 = !{ptr @qla1280_fw_tbl, !325, !"qla1280_fw_tbl", i1 false, i1 false}
!325 = !{!"../drivers/scsi/qla1280.c", i32 537, i32 22}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 1, !"min_enum_size", i32 4}
!328 = !{i32 8, !"branch-target-enforcement", i32 0}
!329 = !{i32 8, !"sign-return-address", i32 0}
!330 = !{i32 8, !"sign-return-address-all", i32 0}
!331 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"uwtable", i32 1}
!333 = !{i32 7, !"frame-pointer", i32 2}
!334 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!335 = !{!"auto-init"}
!336 = !{i64 2155188595}
!337 = !{i64 5109916}
!338 = !{i64 5110116}
!339 = !{i64 2155197204}
!340 = !{i64 2155197633}
!341 = !{i64 2155198076}
!342 = !{i64 2155280866}
!343 = !{i64 2155280708}
!344 = !{i64 2155189594}
!345 = !{i64 2155255023}
!346 = !{i64 2155281742}
!347 = !{i64 2155282514}
!348 = !{i64 2155283324}
!349 = !{i64 2155283776}
!350 = !{i64 2155276147}
!351 = !{i64 2155250887}
!352 = !{i64 2155251368}
!353 = !{i64 2155238423}
!354 = !{i64 2155239173}
!355 = !{i64 2155256740}
!356 = !{i64 2155258332}
!357 = !{i64 2155261019}
!358 = !{i64 2155261448}
!359 = !{i64 2155271583}
!360 = !{i64 2155272321}
!361 = !{i64 2155204045}
!362 = !{i64 2155205889}
!363 = !{i64 2155206364}
!364 = !{i64 2155224161}
!365 = !{i64 2155224616}
!366 = !{i64 2155225107}
!367 = !{i64 2155225567}
!368 = !{i64 2155226065}
!369 = !{i64 2155226899}
!370 = !{i64 2155234036}
!371 = !{i64 2155235402}
!372 = !{i64 2155228352}
!373 = !{i64 2155230044}
!374 = !{i64 2155231345}
