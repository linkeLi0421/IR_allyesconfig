; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_radisys.c_pt.bc'
source_filename = "../drivers/ata/pata_radisys.c"
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
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_radisys__289_247_radisys_pci_driver_init6 = internal global ptr @radisys_pci_driver_init, section ".initcall6.init", align 4
@radisys_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @radisys_pci_tbl, ptr @radisys_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_radisys_pci_driver_exit = internal global ptr @radisys_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [29 x i8] c"pata_radisys.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [78 x i8] c"pata_radisys.description=SCSI low-level driver for Radisys R82600 controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"pata_radisys.file=drivers/ata/pata_radisys\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"pata_radisys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [27 x i8] c"pata_radisys.version=0.4.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_radisys\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.4\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@radisys_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4913, i32 33281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@radisys_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 20, ptr @radisys_pata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@radisys_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @radisys_qc_issue, ptr null, ptr @ata_cable_unknown, ptr null, ptr @radisys_set_piomode, ptr @radisys_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.radisys_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @radisys_init_one.info, ptr null], align 8
@radisys_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@radisys_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@radisys_set_piomode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\02\02", [2 x i8] c"\03\03"], [22 x i8] zeroinitializer }, align 32
@radisys_set_dmamode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\02\02", [2 x i8] c"\03\03"], [22 x i8] zeroinitializer }, align 32
@__const.radisys_set_dmamode.needed_pio = private unnamed_addr constant [3 x i32] [i32 8, i32 11, i32 12], align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"radisys_pci_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 236, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 253, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"radisys_pci_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 230, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 216, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"radisys_pata_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 190, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"radisys_init_one.__print_once\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"radisys_sht\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 186, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 55, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.32 = private constant [30 x i8] c"../drivers/ata/pata_radisys.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 98, i32 5 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_radisys_pci_driver_exit, ptr @__initcall__kmod_pata_radisys__289_247_radisys_pci_driver_init6, ptr @__modver_attr, ptr @radisys_pci_driver_exit, ptr @radisys_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @radisys_pci_tbl, ptr @radisys_init_one.info, ptr @radisys_pata_ops, ptr @radisys_init_one.__print_once, ptr @radisys_sht, ptr @radisys_set_piomode.timings, ptr @radisys_set_dmamode.timings], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_set_piomode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radisys_set_dmamode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @radisys_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @radisys_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @radisys_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @radisys_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radisys_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = load i64, ptr @__const.radisys_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b2 = load i1, ptr @radisys_init_one.__print_once, align 1
  br i1 %.b2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @radisys_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @radisys_sht, ptr noundef null, i32 noundef 0) #4
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
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radisys_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  %idetm_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp2 = icmp ult i8 %7, 64
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i.not = icmp eq i8 %7, -1
  br i1 %cmp.i.not, label %if.else, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @radisys_set_dmamode(ptr noundef %1, ptr noundef %3)
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pio_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.else.if.end12_crit_edge, label %if.then9

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i8 %9 to i32
  %sub.i = add nsw i32 %conv.i, -8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %dev1.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data.i) #4
  %14 = ptrtoint ptr %idetm_data.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %idetm_data.i, align 2, !annotation !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp ne i32 %sub.i, 0
  %spec.select.i = zext i1 %cmp.not.i to i32
  %call.i = tail call i32 @ata_pio_need_iordy(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %or4.i = or i32 %spec.select.i, 2
  %control.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or4.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 -136
  %call6.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef 64, ptr noundef nonnull %idetm_data.i) #4
  %15 = ptrtoint ptr %idetm_data.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idetm_data.i, align 2
  %17 = and i16 %16, -13108
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devno.i, align 4
  %mul.i = shl i32 %19, 2
  %shl.i = shl i32 %control.1.i, %mul.i
  %20 = trunc i32 %shl.i to i16
  %conv11.i = or i16 %17, %20
  %arrayidx.i = getelementptr [5 x [2 x i8]], ptr @radisys_set_piomode.timings, i32 0, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %22 to i16
  %shl14.i = shl i16 %conv13.i, 12
  %arrayidx16.i = getelementptr [5 x [2 x i8]], ptr @radisys_set_piomode.timings, i32 0, i32 %sub.i, i32 1
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %24 to i16
  %shl18.i = shl nuw i16 %conv17.i, 8
  %or19.i = or i16 %conv11.i, %shl14.i
  %or21.i = or i16 %or19.i, %shl18.i
  store i16 %or21.i, ptr %idetm_data.i, align 2
  %call23.i = call i32 @pci_write_config_word(ptr noundef %add.ptr.i, i32 noundef 64, i16 noundef zeroext %or21.i) #4
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data.i) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %if.then7, %lor.lhs.false.if.end12_crit_edge, %entry.if.end12_crit_edge
  %call13 = call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #4
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radisys_set_piomode(ptr nocapture noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  %idetm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -8
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data) #4
  %6 = ptrtoint ptr %idetm_data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %idetm_data, align 2, !annotation !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not = icmp ne i32 %sub, 0
  %spec.select = zext i1 %cmp.not to i32
  %call = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or4 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool.not, i32 %spec.select, i32 %or4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %call6 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull %idetm_data) #4
  %7 = ptrtoint ptr %idetm_data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idetm_data, align 2
  %9 = and i16 %8, -13108
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno, align 4
  %mul = shl i32 %11, 2
  %shl = shl i32 %control.1, %mul
  %12 = trunc i32 %shl to i16
  %conv11 = or i16 %9, %12
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @radisys_set_piomode.timings, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %14 to i16
  %shl14 = shl i16 %conv13, 12
  %arrayidx16 = getelementptr [5 x [2 x i8]], ptr @radisys_set_piomode.timings, i32 0, i32 %sub, i32 1
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i16
  %shl18 = shl nuw i16 %conv17, 8
  %or19 = or i16 %conv11, %shl14
  %or21 = or i16 %or19, %shl18
  store i16 %or21, ptr %idetm_data, align 2
  %call23 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 64, i16 noundef zeroext %or21) #4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %adev, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radisys_set_dmamode(ptr nocapture noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  %idetm_data = alloca i16, align 2
  %udma_enable = alloca i8, align 1
  %udma_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data) #4
  %4 = ptrtoint ptr %idetm_data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %idetm_data, align 2, !annotation !41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #4
  %5 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %udma_enable, align 1, !annotation !41
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull %idetm_data) #4
  %call2 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #4
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp = icmp ult i8 %7, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %7 to i32
  %sub = add nsw i32 %conv, -32
  %arrayidx = getelementptr [3 x i32], ptr @__const.radisys_set_dmamode.needed_pio, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub6 = add i32 %9, -8
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %10 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pio_mode, align 16
  %conv7 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp9 = icmp ugt i32 %9, %conv7
  %spec.select = select i1 %cmp9, i32 1, i32 3
  %12 = ptrtoint ptr %idetm_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idetm_data, align 2
  %14 = and i16 %13, -13108
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  %mul = shl i32 %16, 2
  %shl = shl i32 %spec.select, %mul
  %17 = trunc i32 %shl to i16
  %conv15 = or i16 %14, %17
  %arrayidx16 = getelementptr [5 x [2 x i8]], ptr @radisys_set_dmamode.timings, i32 0, i32 %sub6
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16, align 1
  %conv18 = zext i8 %19 to i16
  %shl19 = shl i16 %conv18, 12
  %arrayidx21 = getelementptr [5 x [2 x i8]], ptr @radisys_set_dmamode.timings, i32 0, i32 %sub6, i32 1
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %21 to i16
  %shl23 = shl nuw i16 %conv22, 8
  %or24 = or i16 %conv15, %shl19
  %or26 = or i16 %or24, %shl23
  store i16 %or26, ptr %idetm_data, align 2
  %shl29 = shl nuw i32 1, %16
  %22 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %udma_enable, align 1
  %24 = trunc i32 %shl29 to i8
  %25 = xor i8 %24, -1
  %conv32 = and i8 %23, %25
  store i8 %conv32, ptr %udma_enable, align 1
  br label %if.end59

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_mode) #4
  %26 = ptrtoint ptr %udma_mode to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %udma_mode, align 1, !annotation !41
  %call33 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %udma_mode) #4
  %xfer_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 13
  %27 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %xfer_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %28)
  %cmp35 = icmp eq i8 %28, 66
  %devno38 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %29 = ptrtoint ptr %devno38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devno38, align 4
  %mul39 = shl i32 %30, 2
  %shl40 = shl i32 2, %mul39
  %31 = ptrtoint ptr %udma_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %udma_mode, align 1
  %33 = trunc i32 %shl40 to i8
  %conv51 = or i8 %32, %33
  %34 = xor i8 %33, -1
  %conv44 = and i8 %32, %34
  %storemerge = select i1 %cmp35, i8 %conv44, i8 %conv51
  store i8 %storemerge, ptr %udma_mode, align 1
  %call53 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 74, i8 noundef zeroext %storemerge) #4
  %devno54 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %35 = ptrtoint ptr %devno54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devno54, align 4
  %shl55 = shl nuw i32 1, %36
  %37 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %udma_enable, align 1
  %39 = trunc i32 %shl55 to i8
  %conv58 = or i8 %38, %39
  store i8 %conv58, ptr %udma_enable, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_mode) #4
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then
  %40 = ptrtoint ptr %idetm_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idetm_data, align 2
  %call60 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 64, i16 noundef zeroext %41) #4
  %42 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %udma_enable, align 1
  %call61 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %43) #4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %44 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %adev, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_pata_radisys__289_247_radisys_pci_driver_init6, !1, !"__initcall__kmod_pata_radisys__289_247_radisys_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_radisys.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_radisys_pci_driver_exit, !1, !"__exitcall_radisys_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_radisys.c", i32 249, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_radisys.c", i32 250, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_radisys.c", i32 251, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_radisys.c", i32 253, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @radisys_pci_driver, !17, !"radisys_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_radisys.c", i32 236, i32 26}
!18 = !{ptr @radisys_pci_tbl, !19, !"radisys_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_radisys.c", i32 230, i32 35}
!20 = !{ptr @radisys_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_radisys.c", i32 216, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_radisys.c", i32 225, i32 2}
!24 = !{ptr @radisys_pata_ops, !25, !"radisys_pata_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_radisys.c", i32 190, i32 35}
!26 = !{ptr @radisys_set_piomode.timings, !27, !"timings", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_radisys.c", i32 55, i32 5}
!28 = !{ptr @radisys_set_dmamode.timings, !29, !"timings", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_radisys.c", i32 98, i32 5}
!30 = !{ptr @radisys_sht, !31, !"radisys_sht", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_radisys.c", i32 186, i32 34}
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
