; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-dw-pci.c_pt.bc'
source_filename = "../drivers/spi/spi-dw-pci.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_spi_pci_desc = type { ptr, i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.67 = type { ptr }
%struct.dw_spi = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, i32, ptr, i32, [266 x i8], i32, i8, ptr, i32, i32, i32, %struct.spi_controller_mem_ops, ptr, i32, ptr, i32, i32, i32, i32, ptr, %struct.completion, ptr, %struct.debugfs_regset32 }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }

@__initcall__kmod_spi_dw_pci__239_210_dw_spi_pci_driver_init6 = internal global ptr @dw_spi_pci_driver_init, section ".initcall6.init", align 4
@dw_spi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @dw_spi_pci_ids, ptr @dw_spi_pci_probe, ptr @dw_spi_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_spi_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dw_spi_pci_driver_exit = internal global ptr @dw_spi_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [50 x i8] c"spi_dw_pci.author=Feng Tang <feng.tang@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [60 x i8] c"spi_dw_pci.description=PCI interface driver for DW SPI Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [39 x i8] c"spi_dw_pci.file=drivers/spi/spi-dw-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"spi_dw_pci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns244 = internal constant [33 x i8] c"spi_dw_pci.import_ns=SPI_DW_CORE\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_dw_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dw_spi_pci\00", [21 x i8] zeroinitializer }, align 32
@dw_spi_pci_ids = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2048, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_spi_pci_mid_desc_1 to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2066, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_spi_pci_mid_desc_2 to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19332, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_spi_pci_ehl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19333, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_spi_pci_ehl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19334, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_spi_pci_ehl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19335, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_spi_pci_ehl_desc to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dw_spi_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dw_spi_pci_suspend, ptr @dw_spi_pci_resume, ptr @dw_spi_pci_suspend, ptr @dw_spi_pci_resume, ptr @dw_spi_pci_suspend, ptr @dw_spi_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_spi_pci_mid_desc_1 = internal global { %struct.dw_spi_pci_desc, [20 x i8] } { %struct.dw_spi_pci_desc { ptr @dw_spi_pci_mid_init, i16 5, i16 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dw_spi_pci_mid_desc_2 = internal global { %struct.dw_spi_pci_desc, [20 x i8] } { %struct.dw_spi_pci_desc { ptr @dw_spi_pci_mid_init, i16 2, i16 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dw_spi_pci_ehl_desc = internal global { %struct.dw_spi_pci_desc, [20 x i8] } { %struct.dw_spi_pci_desc { ptr @dw_spi_pci_generic_init, i16 2, i16 -1, i32 100000000 }, [20 x i8] zeroinitializer }, align 32
@dw_spi_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"found PCI SPI controller(ID: %04x:%04x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_spi_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-dw-pci.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_spi_pci_probe._entry_ptr = internal global ptr @dw_spi_pci_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"dw_spi_pci_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 201, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 210, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 202, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"dw_spi_pci_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 182, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"dw_spi_pci_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 180, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"dw_spi_pci_mid_desc_1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 63, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"dw_spi_pci_mid_desc_2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 69, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"dw_spi_pci_ehl_desc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 75, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [28 x i8] c"../drivers/spi/spi-dw-pci.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 138, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_import_ns244, ptr @__UNIQUE_ID_license243, ptr @__exitcall_dw_spi_pci_driver_exit, ptr @__initcall__kmod_spi_dw_pci__239_210_dw_spi_pci_driver_init6, ptr @dw_spi_pci_driver_exit, ptr @dw_spi_pci_probe._entry, ptr @dw_spi_pci_probe._entry_ptr, ptr @dw_spi_pci_driver, ptr @.str, ptr @.str.1, ptr @dw_spi_pci_ids, ptr @dw_spi_pci_pm_ops, ptr @dw_spi_pci_mid_desc_1, ptr @dw_spi_pci_mid_desc_2, ptr @dw_spi_pci_ehl_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_ids to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_mid_desc_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_mid_desc_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_ehl_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dw_spi_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @dw_spi_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 508, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %paddr = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %paddr, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.pci_name.exit_crit_edge

if.end4.pci_name.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end4.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.end4.pci_name.exit_crit_edge ]
  %call6 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %pci_name.exit
  %call.i88 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp = icmp slt i32 %call.i88, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #5
  %10 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call13, align 4
  %regs = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %regs, align 4
  %call15 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool16.not = icmp eq i32 %1, 0
  br i1 %tobool16.not, label %if.end12.err_free_irq_vectors_crit_edge, label %if.then17

if.end12.err_free_irq_vectors_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_irq_vectors

if.then17:                                        ; preds = %if.end12
  %num_cs = getelementptr inbounds %struct.dw_spi_pci_desc, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %num_cs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_cs, align 4
  %num_cs18 = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %num_cs18 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %num_cs18, align 2
  %bus_num = getelementptr inbounds %struct.dw_spi_pci_desc, ptr %2, i32 0, i32 2
  %17 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bus_num, align 2
  %bus_num19 = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %bus_num19 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %bus_num19, align 4
  %max_freq = getelementptr inbounds %struct.dw_spi_pci_desc, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_freq, align 4
  %max_freq20 = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %max_freq20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_freq20, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %if.then17.if.end29_crit_edge, label %if.then22

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22:                                        ; preds = %if.then17
  %call24 = tail call i32 %24(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end29_crit_edge, label %if.then22.err_free_irq_vectors_crit_edge

if.then22.err_free_irq_vectors_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_irq_vectors

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.then17.if.end29_crit_edge
  %call31 = tail call i32 @dw_spi_add_host(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.err_free_irq_vectors_crit_edge

if.end29.err_free_irq_vectors_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_irq_vectors

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %26 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vendor, align 8
  %conv = zext i16 %27 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device, align 2
  %conv36 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv36) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #5
  %call.i89 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #5
  tail call void @pm_runtime_allow(ptr noundef %dev) #5
  br label %cleanup

err_free_irq_vectors:                             ; preds = %if.end29.err_free_irq_vectors_crit_edge, %if.then22.err_free_irq_vectors_crit_edge, %if.end12.err_free_irq_vectors_crit_edge
  %ret.0 = phi i32 [ %call24, %if.then22.err_free_irq_vectors_crit_edge ], [ %call31, %if.end29.err_free_irq_vectors_crit_edge ], [ -19, %if.end12.err_free_irq_vectors_crit_edge ]
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq_vectors, %if.end34, %if.end9.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_irq_vectors ], [ 0, %if.end34 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6, %pci_name.exit.cleanup_crit_edge ], [ %call.i88, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev) #5
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !44
  tail call void @dw_spi_remove_host(ptr noundef %1) #5
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_pci_mid_init(ptr noundef %dws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef -15607700, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bus_num = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 12
  %0 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bus_num, align 4
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr = getelementptr i8, ptr %call, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !45
  %3 = lshr i32 %2, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and = and i32 %3, 7
  %add = add nuw nsw i32 %and, 1
  %div = udiv i32 100000000, %add
  %max_freq = getelementptr inbounds %struct.dw_spi, ptr %dws, i32 0, i32 10
  %4 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %max_freq, align 4
  tail call void @iounmap(ptr noundef nonnull %call) #5
  tail call void @dw_spi_dma_setup_mfld(ptr noundef %dws) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_dma_setup_mfld(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_pci_generic_init(ptr noundef %dws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_spi_dma_setup_generic(ptr noundef %dws) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_dma_setup_generic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_spi_add_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_pci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @dw_spi_suspend_host(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_pci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @dw_spi_resume_host(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_spi_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_spi_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_spi_dw_pci__239_210_dw_spi_pci_driver_init6, !1, !"__initcall__kmod_spi_dw_pci__239_210_dw_spi_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-dw-pci.c", i32 210, i32 1}
!2 = !{ptr @__exitcall_dw_spi_pci_driver_exit, !1, !"__exitcall_dw_spi_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-dw-pci.c", i32 212, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-dw-pci.c", i32 213, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-dw-pci.c", i32 214, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns244, !11, !"__UNIQUE_ID_import_ns244", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-dw-pci.c", i32 215, i32 1}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-dw-pci.c", i32 202, i32 11}
!15 = !{ptr @dw_spi_pci_driver, !16, !"dw_spi_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-dw-pci.c", i32 201, i32 26}
!17 = !{ptr @dw_spi_pci_ids, !18, !"dw_spi_pci_ids", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-dw-pci.c", i32 182, i32 35}
!19 = !{ptr @dw_spi_pci_mid_desc_1, !20, !"dw_spi_pci_mid_desc_1", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-dw-pci.c", i32 63, i32 31}
!21 = !{ptr @dw_spi_pci_mid_desc_2, !22, !"dw_spi_pci_mid_desc_2", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-dw-pci.c", i32 69, i32 31}
!23 = !{ptr @dw_spi_pci_ehl_desc, !24, !"dw_spi_pci_ehl_desc", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-dw-pci.c", i32 75, i32 31}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-dw-pci.c", i32 138, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dw_spi_pci_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @dw_spi_pci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @dw_spi_pci_pm_ops, !34, !"dw_spi_pci_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-dw-pci.c", i32 180, i32 8}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148664630, i64 2148664656, i64 2148664685, i64 2148664719, i64 2148664750, i64 2148664773}
!45 = !{i64 4983460}
!46 = !{i64 2154642868}
