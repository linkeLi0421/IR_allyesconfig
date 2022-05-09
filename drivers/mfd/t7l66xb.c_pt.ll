; ModuleID = '/llk/IR_all_yes/drivers/mfd/t7l66xb.c_pt.bc'
source_filename = "../drivers/mfd/t7l66xb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.t7l66xb = type { ptr, %struct.raw_spinlock, %struct.resource, ptr, ptr, i32, i32 }
%struct.t7l66xb_platform_data = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_t7l66xb__302_431_t7l66xb_platform_driver_init6 = internal global ptr @t7l66xb_platform_driver_init, section ".initcall6.init", align 4
@t7l66xb_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @t7l66xb_probe, ptr @t7l66xb_remove, ptr null, ptr @t7l66xb_suspend, ptr @t7l66xb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_t7l66xb_platform_driver_exit = internal global ptr @t7l66xb_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [48 x i8] c"t7l66xb.description=Toshiba T7L66XB core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [33 x i8] c"t7l66xb.file=drivers/mfd/t7l66xb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"t7l66xb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [26 x i8] c"t7l66xb.author=Ian Molton\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [31 x i8] c"t7l66xb.alias=platform:t7l66xb\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"t7l66xb\00", [24 x i8] zeroinitializer }, align 32
@t7l66xb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&t7l66xb->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLK_CK32K\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLK_CK48M\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"t7l66xb-core\00", [19 x i8] zeroinitializer }, align 32
@t7l66xb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s rev %d @ 0x%08lx, irq %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t7l66xb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/t7l66xb.c\00", [42 x i8] zeroinitializer }, align 32
@t7l66xb_probe._entry_ptr = internal global ptr @t7l66xb_probe._entry, section ".printk_index", align 4
@t7l66xb_cells = internal global { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @t7l66xb_nand_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr @t7l66xb_mmc_enable, ptr @t7l66xb_mmc_disable, ptr null, ptr null, ptr @t7166xb_mmc_data, i32 52, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @t7l66xb_mmc_resources, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@t7l66xb_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @t7l66xb_irq_mask, ptr @t7l66xb_irq_mask, ptr null, ptr @t7l66xb_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmio-nand\00", [22 x i8] zeroinitializer }, align 32
@t7l66xb_nand_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 3072, i32 3079, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 256, i32 511, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmio-mmc\00", [23 x i8] zeroinitializer }, align 32
@t7166xb_mmc_data = internal global { %struct.tmio_mmc_data, [44 x i8] } { %struct.tmio_mmc_data { ptr null, ptr null, i32 24000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, ptr @t7l66xb_mmc_pwr, ptr @t7l66xb_mmc_clk_div }, [44 x i8] zeroinitializer }, align 32
@t7l66xb_mmc_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2048, i32 2559, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1, i32 1, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"t7l66xb_platform_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 419, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 421, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 316, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 328, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 334, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 341, i32 15 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 366, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"t7l66xb_cells\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 156, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"t7l66xb_chip\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 217, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 167, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"t7l66xb_nand_resources\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 138, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 158, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"t7166xb_mmc_data\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 132, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"t7l66xb_mmc_resources\00", align 1
@___asan_gen_.62 = private constant [25 x i8] c"../drivers/mfd/t7l66xb.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 39, i32 30 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_t7l66xb_platform_driver_exit, ptr @__initcall__kmod_t7l66xb__302_431_t7l66xb_platform_driver_init6, ptr @t7l66xb_platform_driver_exit, ptr @t7l66xb_probe._entry, ptr @t7l66xb_probe._entry_ptr, ptr @t7l66xb_platform_driver, ptr @.str, ptr @t7l66xb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @t7l66xb_cells, ptr @t7l66xb_chip, ptr @.str.8, ptr @t7l66xb_nand_resources, ptr @.str.9, ptr @t7166xb_mmc_data, ptr @t7l66xb_mmc_resources], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_nand_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7166xb_mmc_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t7l66xb_mmc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @t7l66xb_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @t7l66xb_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @t7l66xb_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #9
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end5
  %lock = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @t7l66xb_probe.__key, i16 noundef signext 2) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp = icmp sgt i32 %call10, -1
  br i1 %cmp, label %if.then11, label %do.body.err_noirq_crit_edge

do.body.err_noirq_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_noirq

if.then11:                                        ; preds = %do.body
  %irq = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call10, ptr %irq, align 8
  %irq_base = getelementptr inbounds %struct.t7l66xb_platform_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_base, align 4
  %irq_base13 = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %irq_base13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq_base13, align 4
  %call15 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %clk32k = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %clk32k to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %clk32k, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call15 to i32
  br label %err_noirq

if.end21:                                         ; preds = %if.then11
  %call23 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #6
  %clk48m = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %clk48m to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %clk48m, align 8
  %cmp.i141 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call23 to i32
  br label %err_clk48m_get

if.end29:                                         ; preds = %if.end21
  %rscr30 = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %name, align 8
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call2, align 4
  %15 = ptrtoint ptr %rscr30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rscr30, align 8
  %16 = load i32, ptr %call2, align 4
  %add = add i32 %16, 255
  %end = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %end, align 4
  %flags = getelementptr inbounds %struct.t7l66xb, ptr %call7.i.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %flags, align 4
  %call33 = tail call i32 @request_resource(ptr noundef nonnull %call2, ptr noundef %rscr30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.err_request_scr_crit_edge

if.end29.err_request_scr_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_request_scr

if.end36:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %rscr30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rscr30, align 8
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end, align 4
  %sub.i = sub i32 1, %20
  %add.i = add i32 %sub.i, %22
  %call39 = tail call ptr @ioremap(i32 noundef %20, i32 noundef %add.i) #6
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call39, ptr %call7.i.i, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end36.err_ioremap_crit_edge, label %if.end43

if.end36.err_ioremap_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ioremap

if.end43:                                         ; preds = %if.end36
  %24 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk48m, align 8
  %call45 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.err_clk_enable_crit_edge

if.end43.err_clk_enable_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_enable

if.end48:                                         ; preds = %if.end43
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %tobool49.not = icmp eq ptr %27, null
  br i1 %tobool49.not, label %if.end48.do.body54_crit_edge, label %if.then50

if.end48.do.body54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 %27(ptr noundef %dev) #6
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %if.end48.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -65) #6, !srcloc !55
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %add.ptr63 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %conv = zext i8 %34 to i32
  %35 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call2, align 4
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %31, i32 noundef %conv, i32 noundef %36, i32 noundef %38) #10
  tail call fastcc void @t7l66xb_attach_irq(ptr noundef %dev)
  %nand_data = getelementptr inbounds %struct.t7l66xb_platform_data, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %nand_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nand_data, align 4
  store ptr %40, ptr getelementptr inbounds ([2 x %struct.mfd_cell], ptr @t7l66xb_cells, i32 0, i32 0, i32 7), align 4
  store i32 16, ptr getelementptr inbounds ([2 x %struct.mfd_cell], ptr @t7l66xb_cells, i32 0, i32 0, i32 8), align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %43 = ptrtoint ptr %irq_base13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq_base13, align 4
  %call72 = tail call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef %42, ptr noundef nonnull @t7l66xb_cells, i32 noundef 2, ptr noundef nonnull %call2, i32 noundef %44, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body54.cleanup_crit_edge, label %if.end75

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @t7l66xb_detach_irq(ptr noundef %dev)
  %45 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk48m, align 8
  tail call void @clk_disable(ptr noundef %46) #6
  tail call void @clk_unprepare(ptr noundef %46) #6
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %if.end75, %if.end43.err_clk_enable_crit_edge
  %ret.0 = phi i32 [ %call45, %if.end43.err_clk_enable_crit_edge ], [ %call72, %if.end75 ]
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %48) #6
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_clk_enable, %if.end36.err_ioremap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_clk_enable ], [ -12, %if.end36.err_ioremap_crit_edge ]
  %call79 = tail call i32 @release_resource(ptr noundef %rscr30) #6
  br label %err_request_scr

err_request_scr:                                  ; preds = %err_ioremap, %if.end29.err_request_scr_crit_edge
  %ret.2 = phi i32 [ %call33, %if.end29.err_request_scr_crit_edge ], [ %ret.1, %err_ioremap ]
  %49 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk48m, align 8
  tail call void @clk_put(ptr noundef %50) #6
  br label %err_clk48m_get

err_clk48m_get:                                   ; preds = %err_request_scr, %if.then26
  %ret.3 = phi i32 [ %11, %if.then26 ], [ %ret.2, %err_request_scr ]
  %51 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk32k, align 4
  tail call void @clk_put(ptr noundef %52) #6
  br label %err_noirq

err_noirq:                                        ; preds = %err_clk48m_get, %if.then18, %do.body.err_noirq_crit_edge
  %ret.4 = phi i32 [ %9, %if.then18 ], [ %ret.3, %err_clk48m_get ], [ %call10, %do.body.err_noirq_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_noirq, %do.body54.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_noirq ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %do.body54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %disable = getelementptr inbounds %struct.t7l66xb_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  %call3 = tail call i32 %5(ptr noundef %dev) #6
  %clk48m = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk48m, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk48m, align 4
  tail call void @clk_put(ptr noundef %9) #6
  %clk32k = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk32k, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk32k, align 4
  tail call void @clk_put(ptr noundef %13) #6
  tail call fastcc void @t7l66xb_detach_irq(ptr noundef %dev)
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %15) #6
  %rscr = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 2
  %call6 = tail call i32 @release_resource(ptr noundef %rscr) #6
  tail call void @mfd_remove_devices(ptr noundef %dev1) #6
  tail call void @kfree(ptr noundef %3) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.t7l66xb_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 %5(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clk48m = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk48m, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %clk48m = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk48m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk48m, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %resume = getelementptr inbounds %struct.t7l66xb_platform_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end9_crit_edge, label %if.then6

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 %7(ptr noundef %dev) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 512
  %call10 = tail call i32 @tmio_core_mmc_enable(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2048) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t7l66xb_attach_irq(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base1 = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %3)
  %cmp14 = icmp ult i32 %3, -8
  br i1 %cmp14, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %3, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2 = tail call i32 @irq_set_chip_data(i32 noundef %3, ptr noundef %1) #6
  %inc = add nuw i32 %3, 1
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.1 = tail call i32 @irq_set_chip_data(i32 noundef %inc, ptr noundef %1) #6
  %inc.1 = add nuw i32 %3, 2
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.1, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.2 = tail call i32 @irq_set_chip_data(i32 noundef %inc.1, ptr noundef %1) #6
  %inc.2 = add nuw i32 %3, 3
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.2, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.3 = tail call i32 @irq_set_chip_data(i32 noundef %inc.2, ptr noundef %1) #6
  %inc.3 = add nuw i32 %3, 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.3, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.4 = tail call i32 @irq_set_chip_data(i32 noundef %inc.3, ptr noundef %1) #6
  %inc.4 = add nuw i32 %3, 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.4, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.5 = tail call i32 @irq_set_chip_data(i32 noundef %inc.4, ptr noundef %1) #6
  %inc.5 = add nuw i32 %3, 6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.5, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.6 = tail call i32 @irq_set_chip_data(i32 noundef %inc.5, ptr noundef %1) #6
  %inc.6 = add nuw i32 %3, 7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %inc.6, ptr noundef nonnull @t7l66xb_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %call2.7 = tail call i32 @irq_set_chip_data(i32 noundef %inc.6, ptr noundef %1) #6
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %irq3 = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  %call4 = tail call i32 @irq_set_irq_type(i32 noundef %5, i32 noundef 2) #6
  %6 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq3, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef nonnull @t7l66xb_irq, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t7l66xb_detach_irq(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base1 = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base1, align 4
  %irq2 = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %5, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %3)
  %cmp10 = icmp ult i32 %3, -8
  br i1 %cmp10, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @irq_set_chip(i32 noundef %3, ptr noundef null) #6
  %call4 = tail call i32 @irq_set_chip_data(i32 noundef %3, ptr noundef null) #6
  %inc = add nuw i32 %3, 1
  %call3.1 = tail call i32 @irq_set_chip(i32 noundef %inc, ptr noundef null) #6
  %call4.1 = tail call i32 @irq_set_chip_data(i32 noundef %inc, ptr noundef null) #6
  %inc.1 = add nuw i32 %3, 2
  %call3.2 = tail call i32 @irq_set_chip(i32 noundef %inc.1, ptr noundef null) #6
  %call4.2 = tail call i32 @irq_set_chip_data(i32 noundef %inc.1, ptr noundef null) #6
  %inc.2 = add nuw i32 %3, 3
  %call3.3 = tail call i32 @irq_set_chip(i32 noundef %inc.2, ptr noundef null) #6
  %call4.3 = tail call i32 @irq_set_chip_data(i32 noundef %inc.2, ptr noundef null) #6
  %inc.3 = add nuw i32 %3, 4
  %call3.4 = tail call i32 @irq_set_chip(i32 noundef %inc.3, ptr noundef null) #6
  %call4.4 = tail call i32 @irq_set_chip_data(i32 noundef %inc.3, ptr noundef null) #6
  %inc.4 = add nuw i32 %3, 5
  %call3.5 = tail call i32 @irq_set_chip(i32 noundef %inc.4, ptr noundef null) #6
  %call4.5 = tail call i32 @irq_set_chip_data(i32 noundef %inc.4, ptr noundef null) #6
  %inc.5 = add nuw i32 %3, 6
  %call3.6 = tail call i32 @irq_set_chip(i32 noundef %inc.5, ptr noundef null) #6
  %call4.6 = tail call i32 @irq_set_chip_data(i32 noundef %inc.5, ptr noundef null) #6
  %inc.6 = add nuw i32 %3, 7
  %call3.7 = tail call i32 @irq_set_chip(i32 noundef %inc.6, ptr noundef null) #6
  %call4.7 = tail call i32 @irq_set_chip_data(i32 noundef %inc.6, ptr noundef null) #6
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t7l66xb_irq(ptr nocapture noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_base1 = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr23 = getelementptr i8, ptr %5, i32 225
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %conv24 = zext i8 %6 to i32
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr725 = getelementptr i8, ptr %8, i32 66
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr725) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %conv1126 = zext i8 %9 to i32
  %neg27 = xor i32 %conv1126, -1
  %and28 = and i32 %neg27, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not29 = icmp eq i32 %and28, 0
  br i1 %tobool.not29, label %entry.while.end_crit_edge, label %for.cond.preheader.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.cond.preheader.preheader:                     ; preds = %entry
  %add.1 = add i32 %3, 1
  %add.2 = add i32 %3, 2
  %add.3 = add i32 %3, 3
  %add.4 = add i32 %3, 4
  %add.5 = add i32 %3, 5
  %add.6 = add i32 %3, 6
  %add.7 = add i32 %3, 7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.inc.7.for.cond.preheader_crit_edge, %for.cond.preheader.preheader
  %and30 = phi i32 [ %and, %for.inc.7.for.cond.preheader_crit_edge ], [ %and28, %for.cond.preheader.preheader ]
  %and13 = and i32 %and30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @generic_handle_irq(i32 noundef %3) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond.preheader.for.inc_crit_edge
  %and13.1 = and i32 %and30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call15.1 = tail call i32 @generic_handle_irq(i32 noundef %add.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %and13.2 = and i32 %and30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %call15.2 = tail call i32 @generic_handle_irq(i32 noundef %add.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %and13.3 = and i32 %and30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.3)
  %tobool14.not.3 = icmp eq i32 %and13.3, 0
  br i1 %tobool14.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %call15.3 = tail call i32 @generic_handle_irq(i32 noundef %add.3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %and13.4 = and i32 %and30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.4)
  %tobool14.not.4 = icmp eq i32 %and13.4, 0
  br i1 %tobool14.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %call15.4 = tail call i32 @generic_handle_irq(i32 noundef %add.4) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %and13.5 = and i32 %and30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.5)
  %tobool14.not.5 = icmp eq i32 %and13.5, 0
  br i1 %tobool14.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %call15.5 = tail call i32 @generic_handle_irq(i32 noundef %add.5) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %and13.6 = and i32 %and30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.6)
  %tobool14.not.6 = icmp eq i32 %and13.6, 0
  br i1 %tobool14.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %call15.6 = tail call i32 @generic_handle_irq(i32 noundef %add.6) #6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %and13.7 = and i32 %and30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.7)
  %tobool14.not.7 = icmp eq i32 %and13.7, 0
  br i1 %tobool14.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %call15.7 = tail call i32 @generic_handle_irq(i32 noundef %add.7) #6
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 225
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 66
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %conv11 = zext i8 %15 to i32
  %neg = xor i32 %conv11, -1
  %and = and i32 %neg, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc.7.while.end_crit_edge, label %for.inc.7.for.cond.preheader_crit_edge

for.inc.7.for.cond.preheader_crit_edge:           ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.inc.7.while.end_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %for.inc.7.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t7l66xb_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 66
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %6, %8
  %shl = shl nuw i32 1, %sub
  %9 = trunc i32 %shl to i8
  %conv6 = or i8 %4, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv6) #6, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t7l66xb_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 66
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.t7l66xb, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %6, %8
  %shl = shl nuw i32 1, %sub
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv6 = and i8 %4, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv6) #6, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_mmc_enable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk32k = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk32k, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 224
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %9 = or i8 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %9) #6, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 512
  %call24 = tail call i32 @tmio_core_mmc_enable(ptr noundef %add.ptr23, i32 noundef 0, i32 noundef 2048) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t7l66xb_mmc_disable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 224
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %7 = and i8 %6, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 224
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %7) #6, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  %clk32k = getelementptr inbounds %struct.t7l66xb, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk32k, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_core_mmc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t7l66xb_mmc_pwr(ptr nocapture noundef readonly %mmc, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void @tmio_core_mmc_pwr(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %state) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t7l66xb_mmc_clk_div(ptr nocapture noundef readonly %mmc, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void @tmio_core_mmc_clk_div(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_pwr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_clk_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_t7l66xb__302_431_t7l66xb_platform_driver_init6, !1, !"__initcall__kmod_t7l66xb__302_431_t7l66xb_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/t7l66xb.c", i32 431, i32 1}
!2 = !{ptr @__exitcall_t7l66xb_platform_driver_exit, !1, !"__exitcall_t7l66xb_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/mfd/t7l66xb.c", i32 433, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/mfd/t7l66xb.c", i32 434, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author306, !9, !"__UNIQUE_ID_author306", i1 false, i1 false}
!9 = !{!"../drivers/mfd/t7l66xb.c", i32 435, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias307, !11, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!11 = !{!"../drivers/mfd/t7l66xb.c", i32 436, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/t7l66xb.c", i32 421, i32 11}
!14 = !{ptr @t7l66xb_platform_driver, !15, !"t7l66xb_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/t7l66xb.c", i32 419, i32 31}
!16 = !{ptr @t7l66xb_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/t7l66xb.c", i32 316, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/t7l66xb.c", i32 328, i32 39}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/t7l66xb.c", i32 334, i32 39}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/t7l66xb.c", i32 341, i32 15}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/t7l66xb.c", i32 366, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @t7l66xb_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @t7l66xb_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @t7l66xb_chip, !32, !"t7l66xb_chip", i1 false, i1 false}
!32 = !{!"../drivers/mfd/t7l66xb.c", i32 217, i32 24}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/t7l66xb.c", i32 167, i32 11}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/t7l66xb.c", i32 158, i32 11}
!37 = !{ptr @t7l66xb_cells, !38, !"t7l66xb_cells", i1 false, i1 false}
!38 = !{!"../drivers/mfd/t7l66xb.c", i32 156, i32 24}
!39 = !{ptr @t7l66xb_nand_resources, !40, !"t7l66xb_nand_resources", i1 false, i1 false}
!40 = !{!"../drivers/mfd/t7l66xb.c", i32 138, i32 30}
!41 = !{ptr @t7166xb_mmc_data, !42, !"t7166xb_mmc_data", i1 false, i1 false}
!42 = !{!"../drivers/mfd/t7l66xb.c", i32 132, i32 29}
!43 = !{ptr @t7l66xb_mmc_resources, !44, !"t7l66xb_mmc_resources", i1 false, i1 false}
!44 = !{!"../drivers/mfd/t7l66xb.c", i32 39, i32 30}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2155930759}
!55 = !{i64 4044231}
!56 = !{i64 4044626}
!57 = !{i64 2155932722}
!58 = !{i64 2155927570}
!59 = !{i64 2155927843}
!60 = !{i64 2155928356}
!61 = !{i64 2155928631}
!62 = !{i64 2155929449}
!63 = !{i64 2155929724}
!64 = !{i64 2155924450}
!65 = !{i64 2155924815}
!66 = !{i64 2155925637}
!67 = !{i64 2155926002}
