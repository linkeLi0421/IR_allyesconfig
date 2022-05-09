; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_sc1200.c_pt.bc'
source_filename = "../drivers/ata/pata_sc1200.c"
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_sc1200__289_251_sc1200_pci_driver_init6 = internal global ptr @sc1200_pci_driver_init, section ".initcall6.init", align 4
@sc1200_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sc1200, ptr @sc1200_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sc1200_pci_driver_exit = internal global ptr @sc1200_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [39 x i8] c"pata_sc1200.author=Alan Cox, Mark Lord\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [63 x i8] c"pata_sc1200.description=low-level driver for the NS/AMD SC1200\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"pata_sc1200.file=drivers/ata/pata_sc1200\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"pata_sc1200.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [26 x i8] c"pata_sc1200.version=0.2.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_sc1200\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.2.6\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@sc1200 = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4107, i32 1282, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sc1200_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @sc1200_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sc1200_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @sc1200_qc_defer, ptr null, ptr @ata_bmdma_dumb_qc_prep, ptr @sc1200_qc_issue, ptr null, ptr @ata_cable_40wire, ptr null, ptr @sc1200_set_piomode, ptr @sc1200_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.sc1200_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @sc1200_init_one.info, ptr null], align 8
@sc1200_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 64, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sc1200_set_piomode.pio_timings = internal constant { [4 x [5 x i32]], [48 x i8] } { [4 x [5 x i32]] [[5 x i32] [i32 37234, i32 74097, i32 131200, i32 204816, i32 262160], [5 x i32] [i32 -785215118, i32 1897996657, i32 807403648, i32 537927696, i32 1048592], [5 x i32] [i32 -89918221, i32 -1036897614, i32 1362166209, i32 824258849, i32 270602273], [5 x i32] [i32 -720908, i32 -212642861, i32 -2126445839, i32 1110524465, i32 288428337]], [48 x i8] zeroinitializer }, align 32
@sc1200_set_dmamode.udma_timing = internal constant { [3 x [3 x i32]], [60 x i8] } { [3 x [3 x i32]] [[3 x i32] [i32 9572944, i32 9507136, i32 9506864], [3 x i32] [i32 9643120, i32 9577056, i32 9576768], [3 x i32] [i32 9713313, i32 9647233, i32 9581153]], [60 x i8] zeroinitializer }, align 32
@sc1200_set_dmamode.mwdma_timing = internal constant { [3 x [3 x i32]], [60 x i8] } { [3 x [3 x i32]] [[3 x i32] [i32 489329, i32 74017, i32 8224], [3 x i32] [i32 768946, i32 148033, i32 78129], [3 x i32] [i32 1048563, i32 217938, i32 86353]], [60 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"sc1200_pci_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 240, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 257, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"sc1200\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 234, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 222, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"sc1200_port_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 201, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"sc1200_sht\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 195, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"pio_timings\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 74, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"udma_timing\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 19 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"mwdma_timing\00", align 1
@___asan_gen_.34 = private constant [29 x i8] c"../drivers/ata/pata_sc1200.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 114, i32 19 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_sc1200_pci_driver_exit, ptr @__initcall__kmod_pata_sc1200__289_251_sc1200_pci_driver_init6, ptr @__modver_attr, ptr @sc1200_pci_driver_exit, ptr @sc1200_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sc1200, ptr @sc1200_init_one.info, ptr @sc1200_port_ops, ptr @sc1200_sht, ptr @sc1200_set_piomode.pio_timings, ptr @sc1200_set_dmamode.udma_timing, ptr @sc1200_set_dmamode.mwdma_timing], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_set_piomode.pio_timings to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_set_dmamode.udma_timing to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc1200_set_dmamode.mwdma_timing to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc1200_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sc1200_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc1200_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @sc1200_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc1200_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = load i64, ptr @__const.sc1200_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @sc1200_sht, ptr noundef null, i32 noundef 0) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc1200_qc_defer(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host1 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %xor = xor i32 %5, 1
  %arrayidx = getelementptr %struct.ata_host, ptr %3, i32 0, i32 12, i32 %xor
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @ata_std_qc_defer(ptr noundef %qc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %qc_active = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %qc_active to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %qc_active, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool3.not = icmp eq i64 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_dumb_qc_prep(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc1200_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
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
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i.not = icmp eq i8 %7, -1
  %cmp.not = icmp eq ptr %3, %5
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %cmp.not
  %cmp3.not = icmp eq ptr %5, null
  %or.cond28 = select i1 %or.cond, i1 true, i1 %cmp3.not
  br i1 %or.cond28, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  %8 = and i8 %7, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %.not = icmp eq i8 %8, 64
  %dma_mode.i30 = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %dma_mode.i30 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dma_mode.i30, align 1
  %11 = and i8 %10, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %.not39 = icmp eq i8 %11, 64
  br i1 %.not, label %land.lhs.true6, label %lor.lhs.false

land.lhs.true6:                                   ; preds = %if.then
  br i1 %.not39, label %land.lhs.true6.if.end15_crit_edge, label %land.lhs.true6.if.then14_crit_edge

land.lhs.true6.if.then14_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

land.lhs.true6.if.end15_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

lor.lhs.false:                                    ; preds = %if.then
  br i1 %.not39, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %land.lhs.true6.if.then14_crit_edge
  tail call void @sc1200_set_dmamode(ptr noundef %1, ptr noundef %3)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false.if.end15_crit_edge, %land.lhs.true6.if.end15_crit_edge, %entry.if.end15_crit_edge
  %call16 = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #4
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc1200_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %format = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format) #4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %format, align 4, !annotation !41
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %5 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_no, align 4
  %mul = shl i32 %6, 4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %7 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pio_mode, align 16
  %add1 = add i32 %mul, 68
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add1, ptr noundef nonnull %format) #4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  %shr = lshr i32 %10, 31
  store i32 %shr, ptr %format, align 4
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18837444 to ptr)) #4, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %12 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18837443 to ptr)) #4, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp.i = icmp eq i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp8.i = icmp eq i8 %12, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %entry.sc1200_clock.exit_crit_edge, label %if.end.i

entry.sc1200_clock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sc1200_clock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18837474 to ptr)) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %14 = and i16 %13, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp19.i = icmp eq i16 %14, 3
  %spec.store.select.i = select i1 %cmp19.i, i16 0, i16 %14
  %conv23.i = zext i16 %spec.store.select.i to i32
  br label %sc1200_clock.exit

sc1200_clock.exit:                                ; preds = %if.end.i, %entry.sc1200_clock.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end.i ], [ 0, %entry.sc1200_clock.exit_crit_edge ]
  %conv = zext i8 %8 to i32
  %sub = add nsw i32 %conv, -8
  %add = add i32 %mul, 64
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %add3 = add i32 %16, %retval.0.i
  store i32 %add3, ptr %format, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %17 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devno, align 4
  %mul4 = shl i32 %18, 3
  %add5 = add i32 %add, %mul4
  %arrayidx6 = getelementptr [4 x [5 x i32]], ptr @sc1200_set_piomode.pio_timings, i32 0, i32 %add3, i32 %sub
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6, align 4
  %call7 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add5, i32 noundef %20) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc1200_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %timings = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18837444 to ptr)) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18837443 to ptr)) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %0)
  %cmp.i = icmp eq i8 %0, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8.i = icmp eq i8 %1, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %entry.sc1200_clock.exit_crit_edge, label %if.end.i

entry.sc1200_clock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sc1200_clock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18837474 to ptr)) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %3 = and i16 %2, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp19.i = icmp eq i16 %3, 3
  %spec.store.select.i = select i1 %cmp19.i, i16 0, i16 %3
  %conv23.i = zext i16 %spec.store.select.i to i32
  br label %sc1200_clock.exit

sc1200_clock.exit:                                ; preds = %if.end.i, %entry.sc1200_clock.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end.i ], [ 0, %entry.sc1200_clock.exit_crit_edge ]
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul = shl i32 %9, 4
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %10 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %11)
  %cmp = icmp ugt i8 %11, 63
  %sub = add nsw i32 %conv, -64
  %arrayidx2 = getelementptr [3 x [3 x i32]], ptr @sc1200_set_dmamode.udma_timing, i32 0, i32 %retval.0.i, i32 %sub
  %sub4 = add nsw i32 %conv, -32
  %arrayidx5 = getelementptr [3 x [3 x i32]], ptr @sc1200_set_dmamode.mwdma_timing, i32 0, i32 %retval.0.i, i32 %sub4
  %format.0.in = select i1 %cmp, ptr %arrayidx2, ptr %arrayidx5
  %12 = ptrtoint ptr %format.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %format.0 = load i32, ptr %format.0.in, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then8, label %if.else13

if.then8:                                         ; preds = %sc1200_clock.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timings) #4
  %15 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %timings, align 4, !annotation !41
  %add9 = add i32 %mul, 68
  %call10 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add9, ptr noundef nonnull %timings) #4
  %16 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timings, align 4
  %and = and i32 %17, -2147483648
  %or = or i32 %and, %format.0
  store i32 %or, ptr %timings, align 4
  %call12 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add9, i32 noundef %or) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timings) #4
  br label %if.end16

if.else13:                                        ; preds = %sc1200_clock.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add14 = add i32 %mul, 76
  %call15 = tail call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add14, i32 noundef %format.0) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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

!0 = !{ptr @__initcall__kmod_pata_sc1200__289_251_sc1200_pci_driver_init6, !1, !"__initcall__kmod_pata_sc1200__289_251_sc1200_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_sc1200.c", i32 251, i32 1}
!2 = !{ptr @__exitcall_sc1200_pci_driver_exit, !1, !"__exitcall_sc1200_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_sc1200.c", i32 253, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_sc1200.c", i32 254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_sc1200.c", i32 255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_sc1200.c", i32 257, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @sc1200_pci_driver, !17, !"sc1200_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_sc1200.c", i32 240, i32 26}
!18 = !{ptr @sc1200, !19, !"sc1200", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_sc1200.c", i32 234, i32 35}
!20 = !{ptr @sc1200_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_sc1200.c", i32 222, i32 36}
!22 = !{ptr @sc1200_port_ops, !23, !"sc1200_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_sc1200.c", i32 201, i32 35}
!24 = !{ptr @sc1200_set_piomode.pio_timings, !25, !"pio_timings", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_sc1200.c", i32 74, i32 19}
!26 = !{ptr @sc1200_set_dmamode.udma_timing, !27, !"udma_timing", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_sc1200.c", i32 108, i32 19}
!28 = !{ptr @sc1200_set_dmamode.mwdma_timing, !29, !"mwdma_timing", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_sc1200.c", i32 114, i32 19}
!30 = !{ptr @sc1200_sht, !31, !"sc1200_sht", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_sc1200.c", i32 195, i32 34}
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
!42 = !{i64 4984814}
!43 = !{i64 2155691188}
!44 = !{i64 2155691461}
!45 = !{i64 4984196}
!46 = !{i64 2155692100}
