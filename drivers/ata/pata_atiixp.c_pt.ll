; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_atiixp.c_pt.bc'
source_filename = "../drivers/ata/pata_atiixp.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pci_bits = type { i32, i32, i32, i32 }
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

@__initcall__kmod_pata_atiixp__289_314_atiixp_pci_driver_init6 = internal global ptr @atiixp_pci_driver_init, section ".initcall6.init", align 4
@atiixp_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @atiixp, ptr @atiixp_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atiixp_pci_driver_exit = internal global ptr @atiixp_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"pata_atiixp.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [64 x i8] c"pata_atiixp.description=low-level driver for ATI IXP200/300/400\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"pata_atiixp.file=drivers/ata/pata_atiixp\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"pata_atiixp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [26 x i8] c"pata_atiixp.version=0.4.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_atiixp\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.6\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@atiixp = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 17225, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17270, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17292, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17308, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30732, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atiixp_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 63, ptr @atiixp_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@atiixp_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @ata_bmdma_dumb_qc_prep, ptr null, ptr null, ptr @atiixp_cable_detect, ptr null, ptr @atiixp_set_piomode, ptr @atiixp_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atiixp_prereset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atiixp_bmdma_start, ptr @atiixp_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.atiixp_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @atiixp_init_one.info, ptr @atiixp_init_one.info], align 8
@ata_dummy_port_info = external dso_local constant %struct.ata_port_info, align 4
@atiixp_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 64, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@atiixp_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atiixp_lock\00", [20 x i8] zeroinitializer }, align 32
@atiixp_set_pio_timing.pio_timings = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"]G4\22 ", [27 x i8] zeroinitializer }, align 32
@atiixp_set_dmamode.mwdma_timings = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"w! \00\00", [27 x i8] zeroinitializer }, align 32
@atiixp_prereset.atiixp_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 72, i32 1, i32 1, i32 0 }, %struct.pci_bits { i32 72, i32 1, i32 8, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 33]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"atiixp_pci_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 303, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 320, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"atiixp\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 292, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 275, i32 36 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"atiixp_port_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 260, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"atiixp_sht\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 254, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"atiixp_lock\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 65, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"pio_timings\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 105, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"mwdma_timings\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 152, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"atiixp_enable_bits\00", align 1
@___asan_gen_.42 = private constant [29 x i8] c"../drivers/ata/pata_atiixp.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 78, i32 31 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_atiixp_pci_driver_exit, ptr @__initcall__kmod_pata_atiixp__289_314_atiixp_pci_driver_init6, ptr @__modver_attr, ptr @atiixp_pci_driver_exit, ptr @atiixp_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @atiixp, ptr @atiixp_init_one.info, ptr @atiixp_port_ops, ptr @atiixp_sht, ptr @atiixp_lock, ptr @.str.4, ptr @atiixp_set_pio_timing.pio_timings, ptr @atiixp_set_dmamode.mwdma_timings, ptr @atiixp_prereset.atiixp_enable_bits], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_set_pio_timing.pio_timings to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_set_dmamode.mwdma_timings to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_prereset.atiixp_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atiixp_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atiixp_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @atiixp_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atiixp_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = load i64, ptr @__const.atiixp_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17292, i16 %3)
  %cmp = icmp eq i16 %3, 17292
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ata_dummy_port_info, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @atiixp_sht, ptr noundef null, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #4
  ret i32 %call
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
declare dso_local i32 @ata_bmdma_dumb_qc_prep(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atiixp_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %udma = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma) #4
  %4 = ptrtoint ptr %udma to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %udma, align 1, !annotation !48
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %5 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_no, align 4
  %add = add i32 %6, 86
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %udma) #4
  %7 = ptrtoint ptr %udma to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %udma, align 1
  %9 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  %retval.0 = select i1 %10, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %pio_timing_data.i = alloca i32, align 4
  %pio_mode_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @atiixp_lock) #4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv5 = zext i8 %1 to i32
  %sub = add nsw i32 %conv5, -8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 1
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %8 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno.i, align 4
  %add.i = add i32 %mul.i, %9
  %mul2.i = shl i32 %7, 4
  %xor.i = shl i32 %9, 3
  %mul4.i = xor i32 %xor.i, 8
  %add5.i = add i32 %mul4.i, %mul2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pio_timing_data.i) #4
  %10 = ptrtoint ptr %pio_timing_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pio_timing_data.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pio_mode_data.i) #4
  %11 = ptrtoint ptr %pio_mode_data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %pio_mode_data.i, align 2, !annotation !48
  %call.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef 74, ptr noundef nonnull %pio_mode_data.i) #4
  %mul6.i = shl i32 %add.i, 2
  %shl.i = shl i32 7, %mul6.i
  %12 = ptrtoint ptr %pio_mode_data.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pio_mode_data.i, align 2
  %14 = trunc i32 %shl.i to i16
  %15 = xor i16 %14, -1
  %conv7.i = and i16 %13, %15
  %shl9.i = shl i32 %sub, %mul6.i
  %16 = trunc i32 %shl9.i to i16
  %conv11.i = or i16 %conv7.i, %16
  store i16 %conv11.i, ptr %pio_mode_data.i, align 2
  %call12.i = call i32 @pci_write_config_word(ptr noundef %add.ptr.i, i32 noundef 74, i16 noundef zeroext %conv11.i) #4
  %call13.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef 64, ptr noundef nonnull %pio_timing_data.i) #4
  %shl14.i = shl i32 255, %add5.i
  %neg15.i = xor i32 %shl14.i, -1
  %17 = ptrtoint ptr %pio_timing_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pio_timing_data.i, align 4
  %and16.i = and i32 %18, %neg15.i
  %arrayidx.i = getelementptr [5 x i8], ptr @atiixp_set_pio_timing.pio_timings, i32 0, i32 %sub
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv17.i = zext i8 %20 to i32
  %shl18.i = shl i32 %conv17.i, %add5.i
  %or19.i = or i32 %shl18.i, %and16.i
  store i32 %or19.i, ptr %pio_timing_data.i, align 4
  %call20.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef %or19.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pio_mode_data.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pio_timing_data.i) #4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @atiixp_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %pio_timing_data.i = alloca i32, align 4
  %pio_mode_data.i = alloca i16, align 2
  %udma_mode_data = alloca i16, align 2
  %mwdma_timing_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %5 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %8 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @atiixp_lock) #4
  %10 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %11)
  %cmp9 = icmp ugt i8 %11, 63
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %7, 1
  %add = add i32 %mul, %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %udma_mode_data) #4
  %12 = ptrtoint ptr %udma_mode_data to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %udma_mode_data, align 2, !annotation !48
  %sub = add nuw nsw i32 %conv, 65472
  %call11 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 86, ptr noundef nonnull %udma_mode_data) #4
  %mul12 = shl i32 %add, 2
  %shl = shl i32 7, %mul12
  %13 = ptrtoint ptr %udma_mode_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %udma_mode_data, align 2
  %15 = trunc i32 %shl to i16
  %16 = xor i16 %15, -1
  %conv14 = and i16 %14, %16
  %shl16 = shl i32 %sub, %mul12
  %17 = trunc i32 %shl16 to i16
  %conv18 = or i16 %conv14, %17
  store i16 %conv18, ptr %udma_mode_data, align 2
  %call19 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 86, i16 noundef zeroext %conv18) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %udma_mode_data) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no, align 4
  %mul21 = shl i32 %19, 4
  %20 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devno, align 4
  %xor = shl i32 %21, 3
  %mul23 = xor i32 %xor, 8
  %add24 = add i32 %mul23, %mul21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mwdma_timing_data) #4
  %22 = ptrtoint ptr %mwdma_timing_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %mwdma_timing_data, align 4, !annotation !48
  %sub25 = add nsw i32 %conv, -32
  %call26 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %mwdma_timing_data) #4
  %shl27 = shl i32 255, %add24
  %neg28 = xor i32 %shl27, -1
  %23 = ptrtoint ptr %mwdma_timing_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mwdma_timing_data, align 4
  %and29 = and i32 %24, %neg28
  %arrayidx = getelementptr [5 x i8], ptr @atiixp_set_dmamode.mwdma_timings, i32 0, i32 %sub25
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv30 = zext i8 %26 to i32
  %shl31 = shl i32 %conv30, %add24
  %or32 = or i32 %shl31, %and29
  store i32 %or32, ptr %mwdma_timing_data, align 4
  %call33 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 68, i32 noundef %or32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mwdma_timing_data) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %28)
  %cmp36 = icmp ugt i8 %28, 33
  br i1 %cmp36, label %if.end.if.end60_crit_edge, label %if.else39

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.else39:                                        ; preds = %if.end
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %do.body52 [
    i8 33, label %if.else39.if.end60_crit_edge
    i8 32, label %if.then50
  ]

if.else39.if.end60_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then50:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

do.body52:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_atiixp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #4, !srcloc !49
  unreachable

if.end60:                                         ; preds = %if.then50, %if.else39.if.end60_crit_edge, %if.end.if.end60_crit_edge
  %wanted_pio.0 = phi i32 [ 0, %if.then50 ], [ 4, %if.end.if.end60_crit_edge ], [ 3, %if.else39.if.end60_crit_edge ]
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %30 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pio_mode, align 16
  %conv61 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %wanted_pio.0, i32 %conv61)
  %cmp62.not = icmp eq i32 %wanted_pio.0, %conv61
  br i1 %cmp62.not, label %if.end60.if.end65_crit_edge, label %if.then64

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 -136
  %36 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_no, align 4
  %mul.i = shl i32 %37, 1
  %38 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devno, align 4
  %add.i = add i32 %mul.i, %39
  %mul2.i = shl i32 %37, 4
  %xor.i = shl i32 %39, 3
  %mul4.i = xor i32 %xor.i, 8
  %add5.i = add i32 %mul4.i, %mul2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pio_timing_data.i) #4
  %40 = ptrtoint ptr %pio_timing_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %pio_timing_data.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pio_mode_data.i) #4
  %41 = ptrtoint ptr %pio_mode_data.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %pio_mode_data.i, align 2, !annotation !48
  %call.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef 74, ptr noundef nonnull %pio_mode_data.i) #4
  %mul6.i = shl i32 %add.i, 2
  %shl.i = shl i32 7, %mul6.i
  %42 = ptrtoint ptr %pio_mode_data.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pio_mode_data.i, align 2
  %44 = trunc i32 %shl.i to i16
  %45 = xor i16 %44, -1
  %conv7.i = and i16 %43, %45
  %shl9.i = shl i32 %wanted_pio.0, %mul6.i
  %46 = trunc i32 %shl9.i to i16
  %conv11.i = or i16 %conv7.i, %46
  store i16 %conv11.i, ptr %pio_mode_data.i, align 2
  %call12.i = call i32 @pci_write_config_word(ptr noundef %add.ptr.i, i32 noundef 74, i16 noundef zeroext %conv11.i) #4
  %call13.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef 64, ptr noundef nonnull %pio_timing_data.i) #4
  %shl14.i = shl i32 255, %add5.i
  %neg15.i = xor i32 %shl14.i, -1
  %47 = ptrtoint ptr %pio_timing_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pio_timing_data.i, align 4
  %and16.i = and i32 %48, %neg15.i
  %arrayidx.i = getelementptr [5 x i8], ptr @atiixp_set_pio_timing.pio_timings, i32 0, i32 %wanted_pio.0
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i, align 1
  %conv17.i = zext i8 %50 to i32
  %shl18.i = shl i32 %conv17.i, %add5.i
  %or19.i = or i32 %shl18.i, %and16.i
  store i32 %or19.i, ptr %pio_timing_data.i, align 4
  %call20.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef %or19.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pio_mode_data.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pio_timing_data.i) #4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60.if.end65_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @atiixp_lock, i32 noundef %call4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atiixp_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @atiixp_prereset.atiixp_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_bmdma_start(ptr noundef %qc) #2 align 64 {
entry:
  %tmp16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev2 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul = shl i32 %9, 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno, align 4
  %add = add i32 %mul, %11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16) #4
  %12 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %tmp16, align 2, !annotation !48
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %tmp16) #4
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dma_mode.i, align 1
  %15 = and i8 %14, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %.not = icmp eq i8 %15, 64
  %shl = shl nuw i32 1, %add
  %16 = ptrtoint ptr %tmp16 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tmp16, align 2
  %18 = trunc i32 %shl to i16
  %19 = xor i16 %18, -1
  %conv7 = and i16 %17, %19
  %conv4 = or i16 %17, %18
  %storemerge = select i1 %.not, i16 %conv4, i16 %conv7
  store i16 %storemerge, ptr %tmp16, align 2
  %call8 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 84, i16 noundef zeroext %storemerge) #4
  call void @ata_bmdma_start(ptr noundef %qc) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  %tmp16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
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
  %dev2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno, align 4
  %add = add i32 %11, %mul
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16) #4
  %12 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %tmp16, align 2, !annotation !48
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %tmp16) #4
  %shl = shl nuw i32 1, %add
  %13 = ptrtoint ptr %tmp16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tmp16, align 2
  %15 = trunc i32 %shl to i16
  %16 = xor i16 %15, -1
  %conv3 = and i16 %14, %16
  store i16 %conv3, ptr %tmp16, align 2
  %call4 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 84, i16 noundef zeroext %conv3) #4
  call void @ata_bmdma_stop(ptr noundef %qc) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_pata_atiixp__289_314_atiixp_pci_driver_init6, !1, !"__initcall__kmod_pata_atiixp__289_314_atiixp_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_atiixp.c", i32 314, i32 1}
!2 = !{ptr @__exitcall_atiixp_pci_driver_exit, !1, !"__exitcall_atiixp_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_atiixp.c", i32 316, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_atiixp.c", i32 317, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_atiixp.c", i32 318, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_atiixp.c", i32 320, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @atiixp_pci_driver, !17, !"atiixp_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_atiixp.c", i32 303, i32 26}
!18 = !{ptr @atiixp, !19, !"atiixp", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_atiixp.c", i32 292, i32 35}
!20 = !{ptr @atiixp_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_atiixp.c", i32 275, i32 36}
!22 = !{ptr @atiixp_port_ops, !23, !"atiixp_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_atiixp.c", i32 260, i32 35}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_atiixp.c", i32 40, i32 12}
!26 = distinct !{null, !27, !"attixp_cable_override_dmi_table", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_atiixp.c", i32 37, i32 35}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_atiixp.c", i32 65, i32 8}
!30 = !{ptr @atiixp_lock, !29, !"atiixp_lock", i1 false, i1 false}
!31 = !{ptr @atiixp_set_pio_timing.pio_timings, !32, !"pio_timings", i1 false, i1 false}
!32 = !{!"../drivers/ata/pata_atiixp.c", i32 105, i32 12}
!33 = !{ptr @atiixp_set_dmamode.mwdma_timings, !34, !"mwdma_timings", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_atiixp.c", i32 152, i32 12}
!35 = !{ptr @atiixp_prereset.atiixp_enable_bits, !36, !"atiixp_enable_bits", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_atiixp.c", i32 78, i32 31}
!37 = !{ptr @atiixp_sht, !38, !"atiixp_sht", i1 false, i1 false}
!38 = !{!"../drivers/ata/pata_atiixp.c", i32 254, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2155706812, i64 2155707302, i64 2155706849, i64 2155706905, i64 2155706939, i64 2155706963, i64 2155707004, i64 2155707025, i64 2155707053, i64 2155707087}
