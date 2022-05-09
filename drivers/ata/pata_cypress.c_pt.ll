; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_cypress.c_pt.bc'
source_filename = "../drivers/ata/pata_cypress.c"
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
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__param_str_enable_dma = internal constant [24 x i8] c"pata_cypress.enable_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_dma = internal constant %struct.kernel_param { ptr @__param_str_enable_dma, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @enable_dma } }, section "__param", align 4
@__UNIQUE_ID_enable_dmatype289 = internal constant [38 x i8] c"pata_cypress.parmtype=enable_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_dma290 = internal constant [62 x i8] c"pata_cypress.parm=enable_dma:Enable bus master DMA operations\00", section ".modinfo", align 1
@__initcall__kmod_pata_cypress__315_167_cy82c693_pci_driver_init6 = internal global ptr @cy82c693_pci_driver_init, section ".initcall6.init", align 4
@cy82c693_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cy82c693, ptr @cy82c693_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cy82c693_pci_driver_exit = internal global ptr @cy82c693_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author316 = internal constant [29 x i8] c"pata_cypress.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [75 x i8] c"pata_cypress.description=low-level driver for the CY82C693 PATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [43 x i8] c"pata_cypress.file=drivers/ata/pata_cypress\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [25 x i8] c"pata_cypress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version320 = internal constant [27 x i8] c"pata_cypress.version=0.1.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_cypress\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.5\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@cy82c693 = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4224, i32 50835, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cy82c693_init_one.info = internal global { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 0, ptr @cy82c693_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@cy82c693_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @cy82c693_set_piomode, ptr @cy82c693_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_dummy_port_info = external dso_local constant %struct.ata_port_info, align 4
@__const.cy82c693_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @cy82c693_init_one.info, ptr @ata_dummy_port_info], align 8
@cy82c693_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@cy82c693_set_piomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ata%u.%02u: pata_cypress: mome computation failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cy82c693_set_piomode\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ata/pata_cypress.c\00", [37 x i8] zeroinitializer }, align 32
@cy82c693_set_piomode._entry_ptr = internal global ptr @cy82c693_set_piomode._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"enable_dma\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 44, i32 13 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"cy82c693_pci_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 156, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 173, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"cy82c693\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 150, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 131, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"cy82c693_port_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 122, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"cy82c693_sht\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 118, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [30 x i8] c"../drivers/ata/pata_cypress.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 65, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_enable_dma290, ptr @__UNIQUE_ID_enable_dmatype289, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__UNIQUE_ID_version320, ptr @__exitcall_cy82c693_pci_driver_exit, ptr @__initcall__kmod_pata_cypress__315_167_cy82c693_pci_driver_init6, ptr @__modver_attr, ptr @__param_enable_dma, ptr @cy82c693_pci_driver_exit, ptr @cy82c693_set_piomode._entry, ptr @cy82c693_set_piomode._entry_ptr, ptr @enable_dma, ptr @cy82c693_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cy82c693, ptr @cy82c693_init_one.info, ptr @cy82c693_port_ops, ptr @cy82c693_sht, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy82c693_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy82c693 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy82c693_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy82c693_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy82c693_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy82c693_set_piomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cy82c693_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cy82c693_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cy82c693_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @cy82c693_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy82c693_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = load i64, ptr @__const.cy82c693_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %2 = load i8, ptr @enable_dma, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 7, ptr getelementptr inbounds (%struct.ata_port_info, ptr @cy82c693_init_one.info, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %and = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @cy82c693_sht, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end2 ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cy82c693_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %t = alloca %struct.ata_timing, align 2
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #6
  %4 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 1
  %5 = call ptr @memset(ptr %t, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %addr, align 4, !annotation !50
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %7 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %8 to i16
  %call = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %t, i32 noundef 30303, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 128
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %17 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devno, align 4
  %add = add i32 %18, %16
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %add) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %20 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %21 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 3
  %22 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 2
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp8 = icmp ugt i16 %24, 1
  %conv6 = zext i16 %24 to i32
  %25 = call i32 @llvm.smin.i32(i32 %conv6, i32 16)
  %26 = add nsw i32 %25, -1
  %27 = select i1 %cmp8, i32 %26, i32 0
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp20 = icmp ugt i16 %29, 1
  %conv17 = zext i16 %29 to i32
  %30 = call i32 @llvm.smin.i32(i32 %conv17, i32 16)
  %31 = shl nuw nsw i32 %30, 4
  %.op = add nsw i32 %31, -16
  %shl = select i1 %cmp20, i32 %.op, i32 0
  %or = or i32 %shl, %27
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp37 = icmp ugt i16 %33, 1
  %conv34 = zext i16 %33 to i32
  %34 = call i32 @llvm.smin.i32(i32 %conv34, i32 16)
  %35 = add nsw i32 %34, -1
  %36 = select i1 %cmp37, i32 %35, i32 0
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp53 = icmp ugt i16 %38, 1
  %conv50 = zext i16 %38 to i32
  %39 = call i32 @llvm.smin.i32(i32 %conv50, i32 16)
  %40 = shl nuw nsw i32 %39, 4
  %.op174 = add nsw i32 %40, -16
  %shl66 = select i1 %cmp53, i32 %.op174, i32 0
  %or67 = or i32 %shl66, %36
  %devno69 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %41 = ptrtoint ptr %devno69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %devno69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp70 = icmp eq i32 %42, 0
  %call73 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %addr) #6
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr, align 4
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %44, -16
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %46)
  %cmp77 = icmp ugt i16 %46, 1
  %conv74 = zext i16 %46 to i32
  %47 = call i32 @llvm.smin.i32(i32 %conv74, i32 16)
  %48 = add nsw i32 %47, -1
  %49 = select i1 %cmp77, i32 %48, i32 0
  %or90 = or i32 %49, %and
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or90, ptr %addr, align 4
  %call91 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 72, i32 noundef %or90) #6
  %conv92 = trunc i32 %or to i8
  %call93 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 76, i8 noundef zeroext %conv92) #6
  %call95 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 77, i8 noundef zeroext %conv92) #6
  %conv96 = trunc i32 %or67 to i8
  %call97 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 80, i8 noundef zeroext %conv96) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and99 = and i32 %44, -241
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %52)
  %cmp104 = icmp ugt i16 %52, 1
  %conv101 = zext i16 %52 to i32
  %53 = call i32 @llvm.smin.i32(i32 %conv101, i32 16)
  %54 = shl nuw nsw i32 %53, 4
  %.op175 = add nsw i32 %54, -16
  %shl117 = select i1 %cmp104, i32 %.op175, i32 0
  %or118 = or i32 %shl117, %and99
  %55 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or118, ptr %addr, align 4
  %call119 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 72, i32 noundef %or118) #6
  %conv120 = trunc i32 %or to i8
  %call121 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 78, i8 noundef zeroext %conv120) #6
  %call123 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 79, i8 noundef zeroext %conv120) #6
  %conv124 = trunc i32 %or67 to i8
  %call125 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 81, i8 noundef zeroext %conv124) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then72, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cy82c693_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %0 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_no, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %2 = trunc i32 %1 to i8
  %conv = add i8 %2, 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874334 to ptr), i8 %conv) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %3 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dma_mode, align 1
  %sub = add i8 %4, -32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874333 to ptr), i8 %sub) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874334 to ptr), i8 50) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874333 to ptr), i8 80) #6, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__param_enable_dma, !1, !"__param_enable_dma", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_cypress.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_dmatype289, !1, !"__UNIQUE_ID_enable_dmatype289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_dma290, !4, !"__UNIQUE_ID_enable_dma290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_cypress.c", i32 46, i32 1}
!5 = !{ptr @__initcall__kmod_pata_cypress__315_167_cy82c693_pci_driver_init6, !6, !"__initcall__kmod_pata_cypress__315_167_cy82c693_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_cypress.c", i32 167, i32 1}
!7 = !{ptr @__exitcall_cy82c693_pci_driver_exit, !6, !"__exitcall_cy82c693_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author316, !9, !"__UNIQUE_ID_author316", i1 false, i1 false}
!9 = !{!"../drivers/ata/pata_cypress.c", i32 169, i32 1}
!10 = !{ptr @__UNIQUE_ID_description317, !11, !"__UNIQUE_ID_description317", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_cypress.c", i32 170, i32 1}
!12 = !{ptr @__UNIQUE_ID_file318, !13, !"__UNIQUE_ID_file318", i1 false, i1 false}
!13 = !{!"../drivers/ata/pata_cypress.c", i32 171, i32 1}
!14 = !{ptr @__UNIQUE_ID_license319, !13, !"__UNIQUE_ID_license319", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version320, !16, !"__UNIQUE_ID_version320", i1 false, i1 false}
!16 = !{!"../drivers/ata/pata_cypress.c", i32 173, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__param_str_enable_dma, !1, !"__param_str_enable_dma", i1 false, i1 false}
!22 = !{ptr @enable_dma, !23, !"enable_dma", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_cypress.c", i32 44, i32 13}
!24 = !{ptr @cy82c693_pci_driver, !25, !"cy82c693_pci_driver", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_cypress.c", i32 156, i32 26}
!26 = !{ptr @cy82c693, !27, !"cy82c693", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_cypress.c", i32 150, i32 35}
!28 = !{ptr @cy82c693_init_one.info, !29, !"info", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_cypress.c", i32 131, i32 30}
!30 = !{ptr @cy82c693_port_ops, !31, !"cy82c693_port_ops", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_cypress.c", i32 122, i32 35}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_cypress.c", i32 65, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cy82c693_set_piomode._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @cy82c693_set_piomode._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cy82c693_sht, !39, !"cy82c693_sht", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_cypress.c", i32 118, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{!"auto-init"}
!51 = !{i64 2155790847}
!52 = !{i64 4982265}
!53 = !{i64 2155791192}
!54 = !{i64 2155791525}
!55 = !{i64 2155791844}
