; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_sch.c_pt.bc'
source_filename = "../drivers/ata/pata_sch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__UNIQUE_ID_author289 = internal constant [44 x i8] c"pata_sch.author=Alek Du <alek.du@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [74 x i8] c"pata_sch.description=SCSI low-level driver for Intel SCH PATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"pata_sch.file=drivers/ata/pata_sch\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"pata_sch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [21 x i8] c"pata_sch.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_sch\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_pata_sch__294_167_sch_pci_driver_init6 = internal global ptr @sch_pci_driver_init, section ".initcall6.init", align 4
@sch_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sch_pci_tbl, ptr @sch_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sch_pci_driver_exit = internal global ptr @sch_pci_driver_exit, section ".exitcall.exit", align 4
@sch_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 33050, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sch_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @sch_pata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.sch_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @sch_port_info, ptr null], align 8
@sch_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sch_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sch_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_unknown, ptr null, ptr @sch_set_piomode, ptr @sch_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 83, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"sch_pci_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 49, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"sch_pci_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 43, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"sch_port_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 71, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"sch_init_one.__print_once\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"sch_sht\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 60, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"sch_pata_ops\00", align 1
@___asan_gen_.26 = private constant [26 x i8] c"../drivers/ata/pata_sch.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 64, i32 35 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_version293, ptr @__exitcall_sch_pci_driver_exit, ptr @__initcall__kmod_pata_sch__294_167_sch_pci_driver_init6, ptr @__modver_attr, ptr @sch_pci_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sch_pci_driver, ptr @sch_pci_tbl, ptr @sch_port_info, ptr @sch_init_one.__print_once, ptr @sch_sht, ptr @sch_pata_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sch_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sch_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sch_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @sch_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = load i64, ptr @__const.sch_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b2 = load i1, ptr @sch_init_one.__print_once, align 1
  br i1 %.b2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @sch_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @sch_sht, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_resume(ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sch_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %data = alloca i32, align 4
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
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 128, i32 132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data, align 4, !annotation !37
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %data) #4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and = and i32 %10, -1073741832
  %or = or i32 %and, %sub
  store i32 %or, ptr %data, align 4
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %11 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or3 = or i32 %or, 1073741824
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or3, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %call4 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %cond, i32 noundef %15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sch_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode1 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode1, align 1
  %conv = zext i8 %1 to i32
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev2 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 128, i32 132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data, align 4, !annotation !37
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp = icmp ugt i8 %1, 63
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = and i32 %10, 2147024895
  %sub = shl nuw nsw i32 %conv, 16
  %shl = add nuw i32 %sub, 2143289344
  %and = or i32 %shl, %or
  %or4 = or i32 %and, -2147483648
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and5 = and i32 %10, 2147482879
  %sub6 = shl nuw nsw i32 %conv, 8
  %shl7 = add nsw i32 %sub6, -8192
  %or8 = or i32 %and5, %shl7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %or8, %if.else ], [ %or4, %if.then ]
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %data, align 4
  %call9 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %cond, i32 noundef %storemerge) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__UNIQUE_ID_author289, !1, !"__UNIQUE_ID_author289", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_sch.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/ata/pata_sch.c", i32 80, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/ata/pata_sch.c", i32 81, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version293, !8, !"__UNIQUE_ID_version293", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_sch.c", i32 83, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_pata_sch__294_167_sch_pci_driver_init6, !14, !"__initcall__kmod_pata_sch__294_167_sch_pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/ata/pata_sch.c", i32 167, i32 1}
!15 = !{ptr @__exitcall_sch_pci_driver_exit, !14, !"__exitcall_sch_pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @sch_pci_driver, !17, !"sch_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_sch.c", i32 49, i32 26}
!18 = !{ptr @sch_pci_tbl, !19, !"sch_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_sch.c", i32 43, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_sch.c", i32 162, i32 2}
!22 = !{ptr @sch_port_info, !23, !"sch_port_info", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_sch.c", i32 71, i32 35}
!24 = !{ptr @sch_pata_ops, !25, !"sch_pata_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_sch.c", i32 64, i32 35}
!26 = !{ptr @sch_sht, !27, !"sch_sht", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_sch.c", i32 60, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
