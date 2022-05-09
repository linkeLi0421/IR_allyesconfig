; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_hpt3x2n.c_pt.bc'
source_filename = "../drivers/ata/pata_hpt3x2n.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hpt_clock = type { i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_hpt3x2n__289_622_hpt3x2n_pci_driver_init6 = internal global ptr @hpt3x2n_pci_driver_init, section ".initcall6.init", align 4
@hpt3x2n_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @hpt3x2n, ptr @hpt3x2n_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hpt3x2n_pci_driver_exit = internal global ptr @hpt3x2n_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [29 x i8] c"pata_hpt3x2n.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [68 x i8] c"pata_hpt3x2n.description=low-level driver for the Highpoint HPT3xxN\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"pata_hpt3x2n.file=drivers/ata/pata_hpt3x2n\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"pata_hpt3x2n.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [28 x i8] c"pata_hpt3x2n.version=0.3.15\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_hpt3x2n\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.3.15\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@hpt3x2n = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4355, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hpt3x2n_init_one.info_hpt372n = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @hpt372n_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt372n_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt372n_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt3xxn_port_ops }, [44 x i8] zeroinitializer }, align 32
@hpt3x2n_init_one.info_hpt3xxn = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @hpt3xxn_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt3xxn_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @hpt3x2n_qc_defer, ptr null, ptr null, ptr @hpt3x2n_qc_issue, ptr null, ptr @hpt3x2n_cable_detect, ptr null, ptr @hpt3x2n_set_piomode, ptr @hpt3x2n_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt3x2n_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt3x2n_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.hpt3x2n_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @hpt3x2n_init_one.info_hpt3xxn, ptr null], align 8
@hpt3x2n_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 531, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PCI table is bogus, please report (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hpt3x2n_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ata/pata_hpt3x2n.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hpt3x2n_init_one._entry_ptr = internal global ptr @hpt3x2n_init_one._entry, section ".printk_index", align 4
@hpt3x2n_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 580, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DPLL did not stabilize!\0A\00", [39 x i8] zeroinitializer }, align 32
@hpt3x2n_init_one._entry_ptr.10 = internal global ptr @hpt3x2n_init_one._entry.8, section ".printk_index", align 4
@hpt3x2n_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 584, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bus clock %dMHz, using 66MHz DPLL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hpt3x2n_init_one._entry_ptr.14 = internal global ptr @hpt3x2n_init_one._entry.11, section ".printk_index", align 4
@hpt3x2n_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hpt3x2n_clocks = internal constant { [16 x %struct.hpt_clock], [32 x i8] } { [16 x %struct.hpt_clock] [%struct.hpt_clock { i8 71, i32 478583906 }, %struct.hpt_clock { i8 70, i32 478583906 }, %struct.hpt_clock { i8 69, i32 478846050 }, %struct.hpt_clock { i8 68, i32 478846050 }, %struct.hpt_clock { i8 67, i32 479108194 }, %struct.hpt_clock { i8 66, i32 479370338 }, %struct.hpt_clock { i8 65, i32 479894626 }, %struct.hpt_clock { i8 64, i32 478321762 }, %struct.hpt_clock { i8 34, i32 746757218 }, %struct.hpt_clock { i8 33, i32 746757222 }, %struct.hpt_clock { i8 32, i32 746757422 }, %struct.hpt_clock { i8 12, i32 209886306 }, %struct.hpt_clock { i8 11, i32 209886340 }, %struct.hpt_clock { i8 10, i32 209886374 }, %struct.hpt_clock { i8 9, i32 218275110 }, %struct.hpt_clock { i8 8, i32 218275166 }], [32 x i8] zeroinitializer }, align 32
@hpt3x2n_pci_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 420, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BIOS clock data not set\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hpt3x2n_pci_clock\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hpt3x2n_pci_clock._entry_ptr = internal global ptr @hpt3x2n_pci_clock._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 4, i64 5, i64 6, i64 7, i64 9]
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"hpt3x2n_pci_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 615, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 628, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"hpt3x2n\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 605, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"info_hpt372n\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 475, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"hpt372n_port_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 368, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"info_hpt3xxn\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 483, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"hpt3xxn_port_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 350, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 530, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 580, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 584, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"hpt3x2n_sht\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 342, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"hpt3x2n_clocks\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 69, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [30 x i8] c"../drivers/ata/pata_hpt3x2n.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 420, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_hpt3x2n_pci_driver_exit, ptr @__initcall__kmod_pata_hpt3x2n__289_622_hpt3x2n_pci_driver_init6, ptr @__modver_attr, ptr @hpt3x2n_init_one._entry, ptr @hpt3x2n_init_one._entry.11, ptr @hpt3x2n_init_one._entry.8, ptr @hpt3x2n_init_one._entry_ptr, ptr @hpt3x2n_init_one._entry_ptr.10, ptr @hpt3x2n_init_one._entry_ptr.14, ptr @hpt3x2n_pci_clock._entry, ptr @hpt3x2n_pci_clock._entry_ptr, ptr @hpt3x2n_pci_driver_exit, ptr @hpt3x2n_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hpt3x2n, ptr @hpt3x2n_init_one.info_hpt372n, ptr @hpt372n_port_ops, ptr @hpt3x2n_init_one.info_hpt3xxn, ptr @hpt3xxn_port_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @hpt3x2n_sht, ptr @hpt3x2n_clocks, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_init_one.info_hpt372n to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt372n_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_init_one.info_hpt3xxn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3xxn_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_clocks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt3x2n_pci_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt3x2n_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hpt3x2n_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hpt3x2n_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @hpt3x2n_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt3x2n_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg5b.i = alloca i8, align 1
  %reg5c.i = alloca i32, align 4
  %sr.i = alloca i16, align 2
  %ppi = alloca [2 x ptr], align 8
  %irqmask = alloca i8, align 1
  %mcr1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %0 = load i64, ptr @__const.hpt3x2n_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irqmask) #7
  %4 = ptrtoint ptr %irqmask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %irqmask, align 1, !annotation !64
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %do.end [
    i16 4, label %sw.bb
    i16 7, label %sw.bb5
    i16 5, label %sw.bb11
    i16 6, label %sw.bb17
    i16 9, label %if.end.hpt372n_crit_edge
  ]

if.end.hpt372n_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt372n

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp ult i8 %3, 6
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.hpt372n_crit_edge

sw.bb.hpt372n_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt372n

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp7 = icmp ult i8 %3, 2
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp13 = icmp ult i8 %3, 2
  br i1 %cmp13, label %sw.bb11.cleanup_crit_edge, label %sw.bb11.hpt372n_crit_edge

sw.bb11.hpt372n_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt372n

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp19 = icmp ult i8 %3, 2
  br i1 %cmp19, label %sw.bb17.cleanup_crit_edge, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

hpt372n:                                          ; preds = %sw.bb11.hpt372n_crit_edge, %sw.bb.hpt372n_crit_edge, %if.end.hpt372n_crit_edge
  %10 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hpt3x2n_init_one.info_hpt372n, ptr %ppi, align 8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %8 to i32
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.3, i32 noundef %conv) #10
  br label %cleanup

sw.epilog:                                        ; preds = %hpt372n, %sw.bb17.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge
  %call28 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 12, i8 noundef zeroext 32) #7
  %call29 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 13, i8 noundef zeroext 120) #7
  %call30 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 62, i8 noundef zeroext 8) #7
  %call31 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 63, i8 noundef zeroext 8) #7
  %call32 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 90, ptr noundef nonnull %irqmask) #7
  %11 = ptrtoint ptr %irqmask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irqmask, align 1
  %13 = and i8 %12, -17
  store i8 %13, ptr %irqmask, align 1
  %call35 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 90, i8 noundef zeroext %13) #7
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %15)
  %cmp38 = icmp eq i16 %15, 7
  br i1 %cmp38, label %if.then40, label %sw.epilog.if.end46_crit_edge

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then40:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mcr1) #7
  %16 = ptrtoint ptr %mcr1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %mcr1, align 1, !annotation !64
  %call41 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 80, ptr noundef nonnull %mcr1) #7
  %17 = ptrtoint ptr %mcr1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mcr1, align 1
  %19 = and i8 %18, -5
  store i8 %19, ptr %mcr1, align 1
  %call45 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 80, i8 noundef zeroext %19) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mcr1) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %sw.epilog.if.end46_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 8
  %add.i = add i32 %21, 144
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #7, !srcloc !65
  %24 = call i32 @llvm.bswap.i32(i32 %23) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %shr.mask.i = and i32 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1412571136, i32 %shr.mask.i)
  %cmp.not.i = icmp eq i32 %shr.mask.i, -1412571136
  br i1 %cmp.not.i, label %if.end46.if.end.i_crit_edge, label %if.then.i

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sr.i) #7
  %25 = ptrtoint ptr %sr.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %sr.i, align 2, !annotation !64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %total.033.i = phi i32 [ 0, %if.then.i ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %i.032.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call4.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 120, ptr noundef nonnull %sr.i) #7
  %26 = ptrtoint ptr %sr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sr.i, align 2
  %28 = and i16 %27, 511
  %and5.i = zext i16 %28 to i32
  %add6.i = add i32 %total.033.i, %and5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 3221220) #7
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %div31.i = lshr i32 %add6.i, 7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sr.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %if.end46.if.end.i_crit_edge
  %fcnt.0.i = phi i32 [ %div31.i, %for.end.i ], [ %24, %if.end46.if.end.i_crit_edge ]
  %and7.i = and i32 %fcnt.0.i, 511
  %mul.i = mul nuw nsw i32 %and7.i, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %mul.i)
  %cmp9.i = icmp ult i32 %mul.i, 7680
  br i1 %cmp9.i, label %if.end.i.hpt3x2n_pci_clock.exit_crit_edge, label %if.end12.i

if.end.i.hpt3x2n_pci_clock.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt3x2n_pci_clock.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8640, i32 %mul.i)
  %cmp13.i = icmp ult i32 %mul.i, 8640
  br i1 %cmp13.i, label %if.end12.i.hpt3x2n_pci_clock.exit_crit_edge, label %if.end16.i

if.end12.i.hpt3x2n_pci_clock.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt3x2n_pci_clock.exit

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10560, i32 %mul.i)
  %cmp17.i = icmp ult i32 %mul.i, 10560
  %..i = select i1 %cmp17.i, i32 50, i32 66
  br label %hpt3x2n_pci_clock.exit

hpt3x2n_pci_clock.exit:                           ; preds = %if.end16.i, %if.end12.i.hpt3x2n_pci_clock.exit_crit_edge, %if.end.i.hpt3x2n_pci_clock.exit_crit_edge
  %retval.0.i = phi i32 [ 33, %if.end.i.hpt3x2n_pci_clock.exit_crit_edge ], [ 40, %if.end12.i.hpt3x2n_pci_clock.exit_crit_edge ], [ %..i, %if.end16.i ]
  %30 = trunc i32 %retval.0.i to i16
  %div.lhs.trunc = mul nuw nsw i16 %30, 48
  %div149 = udiv i16 %div.lhs.trunc, 66
  %div.zext = zext i16 %div149 to i32
  %add = shl nuw nsw i32 %div.zext, 16
  %shl = add nuw nsw i32 %add, 131072
  %or = or i32 %shl, %div.zext
  %or48 = or i32 %or, 256
  %call49 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 92, i32 noundef %or48) #7
  %call50 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 91, i8 noundef zeroext 33) #7
  br label %for.body

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %hpt3x2n_pci_clock.exit
  %adjust.0153 = phi i32 [ 0, %hpt3x2n_pci_clock.exit ], [ %inc, %if.end56.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg5b.i) #7
  %31 = ptrtoint ptr %reg5b.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %reg5b.i, align 1, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg5c.i) #7
  %32 = ptrtoint ptr %reg5c.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %reg5c.i, align 4, !annotation !64
  br label %for.body.i143

for.cond.i:                                       ; preds = %for.body.i143
  %inc16.i = add nuw nsw i32 %tries.027.i, 1
  %exitcond.not.i142 = icmp eq i32 %inc16.i, 20480
  br i1 %exitcond.not.i142, label %for.cond.i.if.end56_crit_edge, label %for.cond.i.for.body.i143_crit_edge

for.cond.i.for.body.i143_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i143

for.cond.i.if.end56_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

for.body.i143:                                    ; preds = %for.cond.i.for.body.i143_crit_edge, %for.body
  %tries.027.i = phi i32 [ 0, %for.body ], [ %inc16.i, %for.cond.i.for.body.i143_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 10737400) #7
  %call.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 91, ptr noundef nonnull %reg5b.i) #7
  %34 = ptrtoint ptr %reg5b.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reg5b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool.not.i = icmp sgt i8 %35, -1
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i143.for.body4.i_crit_edge

for.body.i143.for.body4.i_crit_edge:              ; preds = %for.body.i143
  br label %for.body4.i

for.cond1.i:                                      ; preds = %for.body4.i
  %inc.i144 = add nuw nsw i32 %tries.128.i, 1
  %exitcond30.not.i = icmp eq i32 %inc.i144, 4096
  br i1 %exitcond30.not.i, label %for.end, label %for.cond1.i.for.body4.i_crit_edge

for.cond1.i.for.body4.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.cond1.i.for.body4.i_crit_edge, %for.body.i143.for.body4.i_crit_edge
  %tries.128.i = phi i32 [ %inc.i144, %for.cond1.i.for.body4.i_crit_edge ], [ 0, %for.body.i143.for.body4.i_crit_edge ]
  %call5.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 91, ptr noundef nonnull %reg5b.i) #7
  %36 = ptrtoint ptr %reg5b.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg5b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp8.i = icmp sgt i8 %37, -1
  br i1 %cmp8.i, label %for.body4.i.if.end56_crit_edge, label %for.cond1.i

for.body4.i.if.end56_crit_edge:                   ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end56:                                         ; preds = %for.body4.i.if.end56_crit_edge, %for.cond.i.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg5c.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg5b.i) #7
  %call59 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 92, i32 noundef %or) #7
  %inc = add nuw nsw i32 %adjust.0153, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end56.do.end65_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end56.do.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

for.end:                                          ; preds = %for.cond1.i
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 92, ptr noundef nonnull %reg5c.i) #7
  %38 = ptrtoint ptr %reg5c.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg5c.i, align 4
  %and12.i = and i32 %39, -257
  %call13.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 92, i32 noundef %and12.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg5c.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg5b.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %adjust.0153)
  %cmp60 = icmp eq i32 %adjust.0153, 8
  br i1 %cmp60, label %for.end.do.end65_crit_edge, label %do.end70

for.end.do.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end65:                                         ; preds = %for.end.do.end65_crit_edge, %if.end56.do.end65_crit_edge
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.end70:                                         ; preds = %for.end
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %retval.0.i)
  %cmp72 = icmp ugt i32 %retval.0.i, 60
  %spec.select = select i1 %cmp72, ptr inttoptr (i32 3 to ptr), ptr inttoptr (i32 1 to ptr)
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %41)
  %cmp78 = icmp eq i16 %41, 7
  br i1 %cmp78, label %do.body81, label %do.end70.if.end96_crit_edge

do.end70.if.end96_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

do.body81:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @arm_heavy_mb() #7
  %add84 = add i32 %6, 156
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %42 = inttoptr i32 %add86 to ptr
  %43 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #7, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %44 = or i8 %43, 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %44) #7, !srcloc !70
  br label %if.end96

if.end96:                                         ; preds = %do.body81, %do.end70.if.end96_crit_edge
  %call97 = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @hpt3x2n_sht, ptr noundef nonnull %spec.select, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end65, %do.end, %sw.bb17.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end65 ], [ %call97, %if.end96 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ], [ -19, %sw.bb5.cleanup_crit_edge ], [ -19, %sw.bb11.cleanup_crit_edge ], [ -19, %sw.bb17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irqmask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hpt372n_filter(ptr nocapture noundef readonly %adev, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  %arrayidx.i = getelementptr i16, ptr %0, i32 93
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i = icmp eq i16 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.ata_id_is_sata.exit_crit_edge

entry.ata_id_is_sata.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_id_is_sata.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i = getelementptr %struct.ata_device, ptr %adev, i32 0, i32 25, i32 0, i32 40
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %4)
  %cmp4.i = icmp sgt i16 %4, 31
  %and3 = and i32 %mask, -61313
  %spec.select = select i1 %cmp4.i, i32 %and3, i32 %mask
  br label %ata_id_is_sata.exit

ata_id_is_sata.exit:                              ; preds = %land.lhs.true.i, %entry.ata_id_is_sata.exit_crit_edge
  %5 = phi i32 [ %mask, %entry.ata_id_is_sata.exit_crit_edge ], [ %spec.select, %land.lhs.true.i ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt3x2n_qc_defer(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %xor = xor i32 %5, 1
  %arrayidx = getelementptr %struct.ata_host, ptr %3, i32 0, i32 12, i32 %xor
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %10 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tf, align 4
  %call4 = tail call i32 @ata_std_qc_defer(ptr noundef %qc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %12 = ptrtoint ptr %9 to i32
  %and.i = lshr i32 %12, 1
  %and.lobit.i = and i32 %and.i, 1
  %retval.0.i = select i1 %tobool.not.i, i32 %and.lobit.i, i32 1
  %and5 = and i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %retval.0.i)
  %cmp6.not = icmp eq i32 %and5, %retval.0.i
  br i1 %cmp6.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %qc_active = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 21
  %13 = ptrtoint ptr %qc_active to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %qc_active, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call4, %entry.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt3x2n_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %7 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tf, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %and.i = lshr i32 %6, 1
  %and.lobit.i = and i32 %and.i, 1
  %retval.0.i = select i1 %tobool.not.i, i32 %and.lobit.i, i32 1
  %and3 = and i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %and3, %retval.0.i
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %6, -2
  %or = or i32 %retval.0.i, %and4
  %9 = inttoptr i32 %or to ptr
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %bmdma_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %11 = ptrtoint ptr %bmdma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmdma_addr.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i, align 4
  %mul.neg.i = mul i32 %14, -8
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 -128) #7, !srcloc !70
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 -128) #7, !srcloc !70
  %conv.i = select i1 %tobool.not, i8 35, i8 33
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 %conv.i) #7, !srcloc !70
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 -64) #7, !srcloc !70
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 112
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %16 = or i8 %15, 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %16) #7, !srcloc !70
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 116
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %18 = or i8 %17, 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 %18) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 0) #7, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call7 = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt3x2n_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %scr2 = alloca i8, align 1
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scr2) #7
  %0 = ptrtoint ptr %scr2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %scr2, align 1, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #7
  %1 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ata66, align 1, !annotation !64
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 91, ptr noundef nonnull %scr2) #7
  %6 = ptrtoint ptr %scr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scr2, align 1
  %8 = and i8 %7, -2
  %call2 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 91, i8 noundef zeroext %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #7
  %call3 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 90, ptr noundef nonnull %ata66) #7
  %10 = ptrtoint ptr %scr2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scr2, align 1
  %call4 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 91, i8 noundef zeroext %11) #7
  %12 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ata66, align 1
  %conv5 = zext i8 %13 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %14 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no, align 4
  %shr = lshr i32 2, %15
  %and6 = and i32 %shr, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scr2) #7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt3x2n_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  tail call fastcc void @hpt3x2n_set_mode(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt3x2n_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  tail call fastcc void @hpt3x2n_set_mode(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt3x2n_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 2
  %add = add i32 %mul, 80
  %call = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext 55) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #7
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt3x2n_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  %bwsr_stat = alloca i8, align 1
  %msc_stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 1
  %add = add i32 %mul, 80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bwsr_stat) #7
  %8 = ptrtoint ptr %bwsr_stat to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bwsr_stat, align 1, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msc_stat) #7
  %9 = ptrtoint ptr %msc_stat to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %msc_stat, align 1, !annotation !64
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 106, ptr noundef nonnull %bwsr_stat) #7
  %call2 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %msc_stat) #7
  %10 = ptrtoint ptr %bwsr_stat to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bwsr_stat, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %shl = shl nuw i32 1, %13
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %msc_stat to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msc_stat, align 1
  %16 = or i8 %15, 48
  %call6 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @ata_bmdma_stop(ptr noundef %qc) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msc_stat) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bwsr_stat) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpt3x2n_set_mode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %fast = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fast) #7
  %5 = ptrtoint ptr %fast to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %fast, align 1, !annotation !64
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul4 = shl i32 %9, 2
  %add5 = add i32 %mul4, 81
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add5, ptr noundef nonnull %fast) #7
  %10 = ptrtoint ptr %fast to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fast, align 1
  %12 = and i8 %11, -8
  store i8 %12, ptr %fast, align 1
  %call7 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add5, i8 noundef zeroext %12) #7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %13 = phi i8 [ 71, %entry ], [ %15, %if.end.i.while.body.i_crit_edge ]
  %clocks.02.i = phi ptr [ @hpt3x2n_clocks, %entry ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %mode)
  %cmp.i = icmp eq i8 %13, %mode
  br i1 %cmp.i, label %hpt3x2n_find_mode.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.hpt_clock, ptr %clocks.02.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_hpt3x2n.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 110, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

hpt3x2n_find_mode.exit:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %9, 1
  %add = add i32 %mul, %7
  %mul1 = shl i32 %add, 2
  %add2 = add i32 %mul1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %mode)
  %cmp = icmp ult i8 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %mode)
  %cmp11 = icmp ult i8 %mode, 64
  %. = select i1 %cmp11, i32 834667007, i32 809238528
  %mask.0 = select i1 %cmp, i32 -809238529, i32 %.
  %timing.i = getelementptr inbounds %struct.hpt_clock, ptr %clocks.02.i, i32 0, i32 1
  %16 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timing.i, align 4
  %call18 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add2, ptr noundef nonnull %reg) #7
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %neg = xor i32 %mask.0, -1
  %and19 = and i32 %19, %neg
  %and20 = and i32 %17, %mask.0
  %or = or i32 %and19, %and20
  store i32 %or, ptr %reg, align 4
  %call21 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add2, i32 noundef %or) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fast) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_pata_hpt3x2n__289_622_hpt3x2n_pci_driver_init6, !1, !"__initcall__kmod_pata_hpt3x2n__289_622_hpt3x2n_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 622, i32 1}
!2 = !{ptr @__exitcall_hpt3x2n_pci_driver_exit, !1, !"__exitcall_hpt3x2n_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 624, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 625, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 626, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 628, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @hpt3x2n_pci_driver, !17, !"hpt3x2n_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 615, i32 26}
!18 = !{ptr @hpt3x2n, !19, !"hpt3x2n", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 605, i32 35}
!20 = !{ptr @hpt3x2n_init_one.info_hpt372n, !21, !"info_hpt372n", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 475, i32 36}
!22 = !{ptr @hpt3x2n_init_one.info_hpt3xxn, !23, !"info_hpt3xxn", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 483, i32 36}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 530, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hpt3x2n_init_one._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @hpt3x2n_init_one._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 580, i32 3}
!34 = !{ptr @hpt3x2n_init_one._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hpt3x2n_init_one._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 584, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hpt3x2n_init_one._entry.11, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hpt3x2n_init_one._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @hpt372n_port_ops, !42, !"hpt372n_port_ops", i1 false, i1 false}
!42 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 368, i32 35}
!43 = !{ptr @hpt3xxn_port_ops, !44, !"hpt3xxn_port_ops", i1 false, i1 false}
!44 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 350, i32 35}
!45 = !{ptr @hpt3x2n_clocks, !46, !"hpt3x2n_clocks", i1 false, i1 false}
!46 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 69, i32 25}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 420, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hpt3x2n_pci_clock._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @hpt3x2n_pci_clock._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @hpt3x2n_sht, !54, !"hpt3x2n_sht", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_hpt3x2n.c", i32 342, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i64 4994312}
!66 = !{i64 2155710095}
!67 = !{i64 2155718212}
!68 = !{i64 4994092}
!69 = !{i64 2155718027}
!70 = !{i64 4993697}
!71 = !{i64 2152535042}
!72 = !{i64 2152533437}
!73 = !{i64 2155700442, i64 2155700933, i64 2155700479, i64 2155700535, i64 2155700569, i64 2155700593, i64 2155700634, i64 2155700655, i64 2155700683, i64 2155700717}
