; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_cmd640.c_pt.bc'
source_filename = "../drivers/ata/pata_cmd640.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cmd640_reg = type { i32, [2 x i8] }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_cmd640__289_266_cmd640_pci_driver_init6 = internal global ptr @cmd640_pci_driver_init, section ".initcall6.init", align 4
@cmd640_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cmd640, ptr @cmd640_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @cmd640_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cmd640_pci_driver_exit = internal global ptr @cmd640_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"pata_cmd640.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [69 x i8] c"pata_cmd640.description=low-level driver for CMD640 PATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"pata_cmd640.file=drivers/ata/pata_cmd640\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"pata_cmd640.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [26 x i8] c"pata_cmd640.version=0.0.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_cmd640\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.5\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@cmd640 = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4245, i32 1600, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cmd640_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 0, ptr @cmd640_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@cmd640_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @cmd640_qc_issue, ptr null, ptr @ata_cable_40wire, ptr null, ptr @cmd640_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd640_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_data_xfer32, ptr null, ptr @cmd640_sff_irq_check, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.cmd640_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @cmd640_init_one.info, ptr null], align 8
@cmd640_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@__const.cmd640_set_piomode.setup_data = private unnamed_addr constant [5 x i8] c"@@@\80\00", align 1
@cmd640_set_piomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ata%u.%02u: pata_cmd640: mode computation failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmd640_set_piomode\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_cmd640.c\00", [38 x i8] zeroinitializer }, align 32
@cmd640_set_piomode._entry_ptr = internal global ptr @cmd640_set_piomode._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"cmd640_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 255, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 272, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"cmd640\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 250, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 218, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"cmd640_port_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 179, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"cmd640_sht\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 175, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [29 x i8] c"../drivers/ata/pata_cmd640.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 64, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_cmd640_pci_driver_exit, ptr @__initcall__kmod_pata_cmd640__289_266_cmd640_pci_driver_init6, ptr @__modver_attr, ptr @cmd640_pci_driver_exit, ptr @cmd640_set_piomode._entry, ptr @cmd640_set_piomode._entry_ptr, ptr @cmd640_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cmd640, ptr @cmd640_init_one.info, ptr @cmd640_port_ops, ptr @cmd640_sht, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd640_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd640 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd640_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd640_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd640_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd640_set_piomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd640_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cmd640_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmd640_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @cmd640_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd640_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ctrl.i = alloca i8, align 1
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #5
  %0 = load i64, ptr @__const.cmd640_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl.i) #5
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ctrl.i, align 1, !annotation !41
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 91, i8 noundef zeroext 0) #5
  %call1.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 82, i8 noundef zeroext 0) #5
  %call2.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 89, i8 noundef zeroext 64) #5
  %call3.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 81, ptr noundef nonnull %ctrl.i) #5
  %3 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl.i, align 1
  %5 = or i8 %4, -64
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 81, i8 noundef zeroext %5) #5
  %call6.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 87, ptr noundef nonnull %ctrl.i) #5
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl.i, align 1
  %8 = or i8 %7, 12
  store i8 %8, ptr %ctrl.i, align 1
  %call10.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 87, i8 noundef zeroext %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #5
  %call1 = call i32 @ata_pci_sff_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @cmd640_sht, ptr noundef null, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd640_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  %ctrl.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl.i) #5
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ctrl.i, align 1, !annotation !41
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 91, i8 noundef zeroext 0) #5
  %call1.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 82, i8 noundef zeroext 0) #5
  %call2.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 89, i8 noundef zeroext 64) #5
  %call3.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 81, ptr noundef nonnull %ctrl.i) #5
  %3 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl.i, align 1
  %5 = or i8 %4, -64
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 81, i8 noundef zeroext %5) #5
  %call6.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 87, ptr noundef nonnull %ctrl.i) #5
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl.i, align 1
  %8 = or i8 %7, 12
  store i8 %8, ptr %ctrl.i, align 1
  %call10.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 87, i8 noundef zeroext %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #5
  call void @ata_host_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_sff_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd640_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev2 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp3.not = icmp eq i32 %13, %15
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.cmd640_reg, ptr %7, i32 0, i32 1, i32 %13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 88, i8 noundef zeroext %17) #5
  %18 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devno, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call7 = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd640_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %t = alloca %struct.ata_timing, align 2
  %reg = alloca i8, align 1
  %p = alloca %struct.ata_timing, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #5
  %6 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %8 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %9 = call ptr @memset(ptr %t, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %reg, align 1, !annotation !41
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %11 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devno, align 4
  %mul = shl i32 %12, 1
  %add = add i32 %mul, 83
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #5
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %13 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %14 to i16
  %call1 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %t, i32 noundef 30303, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  %23 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devno, align 4
  %add7 = add i32 %24, %22
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %20, i32 noundef %add7) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %25 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  %tobool9.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p) #5
  %pio_mode11 = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %27 = call ptr @memset(ptr %p, i32 255, i32 20)
  %28 = ptrtoint ptr %pio_mode11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pio_mode11, align 16
  %conv12 = zext i8 %29 to i16
  %call13 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv12, ptr noundef nonnull %p, i32 noundef 30303, i32 noundef 1) #5
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %31)
  %cmp16 = icmp ugt i16 %31, 16
  br i1 %cmp16, label %if.then18, label %if.end25thread-pre-split

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i16 %31, -16
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %7, align 2
  %add22 = add i16 %sub, %33
  store i16 %add22, ptr %7, align 2
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16, ptr %8, align 2
  br label %if.end25

if.end25thread-pre-split:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %35)
  %.pr = load i16, ptr %7, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %if.then18
  %36 = phi i16 [ %.pr, %if.end25thread-pre-split ], [ %add22, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %36)
  %cmp28 = icmp ugt i16 %36, 16
  br i1 %cmp28, label %if.then30, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 16, ptr %7, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp35 = icmp ugt i16 %39, 1
  %dec = add i16 %39, -1
  %storemerge = select i1 %cmp35, i16 %dec, i16 15
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %storemerge, ptr %8, align 2
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %42)
  %cmp42 = icmp ugt i16 %42, 4
  br i1 %cmp42, label %if.end32.if.end50_crit_edge, label %if.else46

if.end32.if.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.else46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %conv41 = zext i16 %42 to i32
  %arrayidx = getelementptr [5 x i8], ptr @__const.cmd640_set_piomode.setup_data, i32 0, i32 %conv41
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %conv48 = zext i8 %44 to i16
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.end32.if.end50_crit_edge
  %storemerge121 = phi i16 [ %conv48, %if.else46 ], [ 192, %if.end32.if.end50_crit_edge ]
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %storemerge121, ptr %6, align 2
  %46 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp52 = icmp eq i32 %47, 0
  br i1 %cmp52, label %if.then54, label %if.else75

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %7, align 2
  %50 = and i16 %49, 15
  store i16 %50, ptr %7, align 2
  %call58 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %reg) #5
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg, align 1
  %53 = and i8 %52, 63
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %6, align 2
  %conv63 = trunc i16 %55 to i8
  %or = or i8 %53, %conv63
  store i8 %or, ptr %reg, align 1
  %call66 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %or) #5
  %add67 = add i32 %mul, 84
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %7, align 2
  %conv69 = trunc i16 %57 to i8
  %shl = shl i8 %conv69, 4
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %8, align 2
  %conv71 = trunc i16 %59 to i8
  %or72 = or i8 %shl, %conv71
  %call74 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add67, i8 noundef zeroext %or72) #5
  br label %cleanup

if.else75:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 87, ptr noundef nonnull %reg) #5
  %60 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg, align 1
  %62 = and i8 %61, 63
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %6, align 2
  %conv81 = trunc i16 %64 to i8
  %or83 = or i8 %62, %conv81
  store i8 %or83, ptr %reg, align 1
  %call85 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 87, i8 noundef zeroext %or83) #5
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %7, align 2
  %conv87 = trunc i16 %66 to i8
  %shl88 = shl i8 %conv87, 4
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %8, align 2
  %conv90 = trunc i16 %68 to i8
  %or91 = or i8 %shl88, %conv90
  %69 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %devno, align 4
  %arrayidx94 = getelementptr %struct.cmd640_reg, ptr %1, i32 0, i32 1, i32 %70
  %71 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %or91, ptr %arrayidx94, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else75, %if.then54, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd640_port_start(ptr nocapture noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %call.i, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_data_xfer32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cmd640_sff_irq_check(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %irq_stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 80, i32 87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq_stat) #5
  %6 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %irq_stat, align 1, !annotation !41
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %irq_stat) #5
  %7 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_stat, align 1
  %conv4 = zext i8 %8 to i32
  %conv5 = select i1 %tobool.not, i32 4, i32 16
  %and = and i32 %conv5, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6 = icmp ne i32 %and, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq_stat) #5
  ret i1 %tobool6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_timing_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_pata_cmd640__289_266_cmd640_pci_driver_init6, !1, !"__initcall__kmod_pata_cmd640__289_266_cmd640_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_cmd640.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_cmd640_pci_driver_exit, !1, !"__exitcall_cmd640_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_cmd640.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_cmd640.c", i32 269, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_cmd640.c", i32 270, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_cmd640.c", i32 272, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @cmd640_pci_driver, !17, !"cmd640_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_cmd640.c", i32 255, i32 26}
!18 = !{ptr @cmd640, !19, !"cmd640", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_cmd640.c", i32 250, i32 35}
!20 = !{ptr @cmd640_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_cmd640.c", i32 218, i32 36}
!22 = !{ptr @cmd640_port_ops, !23, !"cmd640_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_cmd640.c", i32 179, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_cmd640.c", i32 64, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cmd640_set_piomode._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @cmd640_set_piomode._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @cmd640_sht, !31, !"cmd640_sht", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_cmd640.c", i32 175, i32 34}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
