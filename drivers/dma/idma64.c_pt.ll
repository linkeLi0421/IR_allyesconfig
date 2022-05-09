; ModuleID = '/llk/IR_all_yes/drivers/dma/idma64.c_pt.bc'
source_filename = "../drivers/dma/idma64.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.idma64_chip = type { ptr, ptr, i32, ptr, ptr }
%struct.idma64 = type { %struct.dma_device, ptr, i16, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.idma64_chan = type { %struct.virt_dma_chan, ptr, i32, i32, %struct.dma_slave_config, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.idma64_desc = type { %struct.virt_dma_desc, i32, ptr, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.idma64_hw_desc = type { ptr, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.idma64_lli = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_idma64__239_699_idma64_platform_driver_init6 = internal global ptr @idma64_platform_driver_init, section ".initcall6.init", align 4
@idma64_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @idma64_platform_probe, ptr @idma64_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @idma64_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_idma64_platform_driver_exit = internal global ptr @idma64_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [31 x i8] c"idma64.file=drivers/dma/idma64\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"idma64.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [38 x i8] c"idma64.description=iDMA64 core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [66 x i8] c"idma64.author=Andy Shevchenko <andriy.shevchenko@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [29 x i8] c"idma64.alias=platform:idma64\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"idma64\00", [25 x i8] zeroinitializer }, align 32
@idma64_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @idma64_pm_suspend, ptr @idma64_pm_resume, ptr @idma64_pm_suspend, ptr @idma64_pm_resume, ptr @idma64_pm_suspend, ptr @idma64_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@idma64_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Found Intel integrated DMA 64-bit\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idma64_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/dma/idma64.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idma64_probe._entry_ptr = internal global ptr @idma64_probe._entry, section ".printk_index", align 4
@idma64_irq.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idma64_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: status=%#x\0A\00", [16 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@idma64_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 506, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No memory for descriptors\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"idma64_alloc_chan_resources\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@idma64_alloc_chan_resources._entry_ptr = internal global ptr @idma64_alloc_chan_resources._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"idma64_platform_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 690, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 694, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"idma64_dev_pm_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 686, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 599, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 170, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 101, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [24 x i8] c"../drivers/dma/idma64.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 506, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_idma64_platform_driver_exit, ptr @__initcall__kmod_idma64__239_699_idma64_platform_driver_init6, ptr @idma64_alloc_chan_resources._entry, ptr @idma64_alloc_chan_resources._entry_ptr, ptr @idma64_platform_driver_exit, ptr @idma64_probe._entry, ptr @idma64_probe._entry_ptr, ptr @idma64_platform_driver, ptr @.str, ptr @idma64_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma64_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma64_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma64_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma64_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @idma64_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idma64_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @idma64_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.idma64_chip, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #9
  %regs = getelementptr inbounds %struct.idma64_chip, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %1, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef -1) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %sysdev20 = getelementptr inbounds %struct.idma64_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %sysdev20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %sysdev20, align 4
  %call.i.i49 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 376, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i49, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.end.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %regs1.i = getelementptr inbounds %struct.idma64, ptr %call.i.i49, i32 0, i32 1
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regs1.i, align 4
  %idma642.i = getelementptr inbounds %struct.idma64_chip, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %idma642.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i49, ptr %idma642.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 496, i32 noundef 3520) #9
  %chan.i = getelementptr inbounds %struct.idma64, ptr %call.i.i49, i32 0, i32 3
  %14 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %chan.i, align 4
  %tobool6.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %all_chan_mask.i = getelementptr inbounds %struct.idma64, ptr %call.i.i49, i32 0, i32 2
  %15 = ptrtoint ptr %all_chan_mask.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %all_chan_mask.i, align 4
  tail call fastcc void @idma64_off(ptr noundef nonnull %call.i.i49) #9
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.dev_name.exit.i_crit_edge

if.end8.i.dev_name.exit.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end8.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.end8.i.dev_name.exit.i_crit_edge ]
  %call.i110.i = tail call i32 @devm_request_threaded_irq(ptr noundef %17, i32 noundef %19, ptr noundef nonnull @idma64_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i.i49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %tobool15.not.i = icmp eq i32 %call.i110.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %dev_name.exit.i.cleanup_crit_edge

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %dev_name.exit.i
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 3
  %24 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %channels.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan.i, align 4
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @idma64_vdesc_free, ptr %desc_free.i, align 4
  tail call void @vchan_init(ptr noundef %27, ptr noundef nonnull %call.i.i49) #9
  %29 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs1.i, align 4
  %regs26.i = getelementptr %struct.idma64_chan, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %regs26.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %regs26.i, align 4
  %mask.i = getelementptr %struct.idma64_chan, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %mask.i, align 4
  %33 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan.i, align 4
  %arrayidx.1.i = getelementptr %struct.idma64_chan, ptr %34, i32 1
  %desc_free.1.i = getelementptr %struct.idma64_chan, ptr %34, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %desc_free.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @idma64_vdesc_free, ptr %desc_free.1.i, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.1.i, ptr noundef nonnull %call.i.i49) #9
  %36 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs1.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %37, i32 88
  %regs26.1.i = getelementptr %struct.idma64_chan, ptr %34, i32 1, i32 1
  %38 = ptrtoint ptr %regs26.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.1.i, ptr %regs26.1.i, align 4
  %mask.1.i = getelementptr %struct.idma64_chan, ptr %34, i32 1, i32 3
  %39 = ptrtoint ptr %mask.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %mask.1.i, align 4
  %cap_mask.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask.i) #9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask.i) #9
  %device_alloc_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 27
  %40 = ptrtoint ptr %device_alloc_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @idma64_alloc_chan_resources, ptr %device_alloc_chan_resources.i, align 4
  %device_free_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 29
  %41 = ptrtoint ptr %device_free_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @idma64_free_chan_resources, ptr %device_free_chan_resources.i, align 4
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 39
  %42 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @idma64_prep_slave_sg, ptr %device_prep_slave_sg.i, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 50
  %43 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @idma64_issue_pending, ptr %device_issue_pending.i, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 49
  %44 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @idma64_tx_status, ptr %device_tx_status.i, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 44
  %45 = ptrtoint ptr %device_config.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @idma64_slave_config, ptr %device_config.i, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 45
  %46 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @idma64_pause, ptr %device_pause.i, align 4
  %device_resume.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 46
  %47 = ptrtoint ptr %device_resume.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @idma64_resume, ptr %device_resume.i, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 47
  %48 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @idma64_terminate_all, ptr %device_terminate_all.i, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 48
  %49 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @idma64_synchronize, ptr %device_synchronize.i, align 4
  %src_addr_widths.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 19
  %50 = ptrtoint ptr %src_addr_widths.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 22, ptr %src_addr_widths.i, align 4
  %dst_addr_widths.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 20
  %51 = ptrtoint ptr %dst_addr_widths.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 22, ptr %dst_addr_widths.i, align 4
  %directions.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 21
  %52 = ptrtoint ptr %directions.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %directions.i, align 4
  %residue_granularity.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 26
  %53 = ptrtoint ptr %residue_granularity.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %residue_granularity.i, align 4
  %54 = ptrtoint ptr %sysdev20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysdev20, align 4
  %dev47.i = getelementptr inbounds %struct.dma_device, ptr %call.i.i49, i32 0, i32 15
  %56 = ptrtoint ptr %dev47.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %dev47.i, align 4
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 22
  %57 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i111.i = icmp eq ptr %58, null
  br i1 %tobool.not.i111.i, label %if.end17.i.dma_set_max_seg_size.exit.i_crit_edge, label %if.then.i.i50

if.end17.i.dma_set_max_seg_size.exit.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_max_seg_size.exit.i

if.then.i.i50:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 131071, ptr %58, align 4
  br label %dma_set_max_seg_size.exit.i

dma_set_max_seg_size.exit.i:                      ; preds = %if.then.i.i50, %if.end17.i.dma_set_max_seg_size.exit.i_crit_edge
  %call52.i = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i.i49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end24, label %dma_set_max_seg_size.exit.i.cleanup_crit_edge

dma_set_max_seg_size.exit.i.cleanup_crit_edge:    ; preds = %dma_set_max_seg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %dma_set_max_seg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.1) #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %dma_set_max_seg_size.exit.i.cleanup_crit_edge, %dev_name.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end14.cleanup_crit_edge ], [ %call52.i, %dma_set_max_seg_size.exit.i.cleanup_crit_edge ], [ %call.i110.i, %dev_name.exit.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_platform_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %idma641.i = getelementptr inbounds %struct.idma64_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %idma641.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idma641.i, align 4
  tail call void @dma_async_device_unregister(ptr noundef %3) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.idma64_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %5, i32 noundef %7, ptr noundef %3) #9
  %chancnt.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chancnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.not.i = icmp eq i32 %9, 0
  br i1 %cmp1.not.i, label %entry.idma64_remove.exit_crit_edge, label %for.body.lr.ph.i

entry.idma64_remove.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_remove.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %chan.i = getelementptr inbounds %struct.idma64, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv3.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.body.i.for.body.i_crit_edge ]
  %i.02.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan.i, align 4
  %task.i = getelementptr %struct.idma64_chan, ptr %11, i32 %conv3.i, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.i) #9
  %inc.i = add i16 %i.02.i, 1
  %conv.i = zext i16 %inc.i to i32
  %12 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chancnt.i, align 4
  %cmp.i = icmp ugt i32 %13, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.idma64_remove.exit_crit_edge

for.body.i.idma64_remove.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_remove.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

idma64_remove.exit:                               ; preds = %for.body.i.idma64_remove.exit_crit_edge, %entry.idma64_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idma64_off(ptr nocapture noundef readonly %idma64) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.idma64, ptr %idma64, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !51
  %all_chan_mask = getelementptr inbounds %struct.idma64, ptr %idma64, i32 0, i32 2
  %2 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %all_chan_mask, align 4
  %conv = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %5 = lshr exact i32 %4, 8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %7, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %5) #9, !srcloc !51
  %8 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %all_chan_mask, align 4
  %conv2 = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv2)
  %11 = lshr exact i32 %10, 8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %13, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %11) #9, !srcloc !51
  %14 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %all_chan_mask, align 4
  %conv6 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %17 = lshr exact i32 %16, 8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %19, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %17) #9, !srcloc !51
  %20 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %all_chan_mask, align 4
  %conv10 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv10)
  %23 = lshr exact i32 %22, 8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %25, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %23) #9, !srcloc !51
  %26 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %all_chan_mask, align 4
  %conv14 = zext i16 %27 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv14)
  %29 = lshr exact i32 %28, 8
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %31, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %29) #9, !srcloc !51
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %count.0 = phi i16 [ 100, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !53
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %33, i32 920
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  %dec = add nsw i16 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool26.not = icmp eq i16 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %do.end27, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end27:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.idma64, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 864
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idma64_irq.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idma64_irq, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !56

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %dev5 = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idma64_irq.__UNIQUE_ID_ddebug238, ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 704
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #9, !srcloc !54
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %11, i32 736
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #9, !srcloc !54
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30.not = icmp eq i32 %15, 0
  br i1 %cmp30.not, label %if.end8.cleanup_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.031 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  tail call fastcc void @idma64_chan_irq(ptr noundef %dev, i16 noundef zeroext %i.031, i32 noundef %13, i32 noundef %9)
  %inc = add i16 %i.031, 1
  %conv = zext i16 %inc to i32
  %16 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chancnt, align 4
  %cmp = icmp ugt i32 %17, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma64_vdesc_free(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndesc.i = getelementptr inbounds %struct.idma64_desc, ptr %vdesc, i32 0, i32 3
  %0 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndesc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.idma64_desc_free.exit_crit_edge, label %do.body.preheader.i

entry.idma64_desc_free.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_desc_free.exit

do.body.preheader.i:                              ; preds = %entry
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vdesc, i32 0, i32 3
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %hw2.i = getelementptr inbounds %struct.idma64_desc, ptr %vdesc, i32 0, i32 2
  %pool.i = getelementptr inbounds %struct.idma64_chan, ptr %3, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %i.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %1, %do.body.preheader.i ]
  %4 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2.i, align 4
  %dec.i = add i32 %i.0.i, -1
  %arrayidx.i = getelementptr %struct.idma64_hw_desc, ptr %5, i32 %dec.i
  %6 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %llp.i = getelementptr %struct.idma64_hw_desc, ptr %5, i32 %dec.i, i32 1
  %10 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %llp.i, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #9
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body.i.idma64_desc_free.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.idma64_desc_free.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_desc_free.exit

idma64_desc_free.exit:                            ; preds = %do.body.i.idma64_desc_free.exit_crit_edge, %entry.idma64_desc_free.exit_crit_edge
  %hw4.i = getelementptr inbounds %struct.idma64_desc, ptr %vdesc, i32 0, i32 2
  %12 = ptrtoint ptr %hw4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw4.i, align 4
  tail call void @kfree(ptr noundef %13) #9
  tail call void @kfree(ptr noundef %vdesc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_alloc_chan_resources(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call3 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i, ptr noundef %9, i32 noundef 40, i32 noundef 8, i32 noundef 0) #9
  %pool = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %pool, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %device.i11 = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i11, ptr noundef nonnull @.str.11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma64_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %pool = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 5
  %57 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pool, align 4
  call void @dma_pool_destroy(ptr noundef %58) #9
  %59 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @idma64_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 136) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup12_crit_edge, label %if.end.i

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup12

if.end.i:                                         ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 16) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !57

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw11.i = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %hw11.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %hw11.i, align 8
  br label %if.then4.i

if.end7.i.i.i:                                    ; preds = %if.end.i
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 2304) #14
  %hw.i = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i.i, ptr %hw.i, align 8
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.if.then4.i_crit_edge, label %idma64_alloc_desc.exit

if.end7.i.i.i.if.then4.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end7.i.i.i.if.then4.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup12

idma64_alloc_desc.exit:                           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp53.not = icmp eq i32 %sg_len, 0
  br i1 %cmp53.not, label %idma64_alloc_desc.exit.for.end_crit_edge, label %for.body.lr.ph

idma64_alloc_desc.exit.for.end_crit_edge:         ; preds = %idma64_alloc_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %idma64_alloc_desc.exit
  %hw2 = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 2
  %pool = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end7.for.body_crit_edge ]
  %sg.054 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call8, %if.end7.for.body_crit_edge ]
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw2, align 8
  %arrayidx = getelementptr %struct.idma64_hw_desc, ptr %7, i32 %i.055
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool, align 4
  %llp = getelementptr %struct.idma64_hw_desc, ptr %7, i32 %i.055, i32 1
  %call3 = tail call ptr @dma_pool_alloc(ptr noundef %9, i32 noundef 2048, ptr noundef %llp) #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %ndesc = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %ndesc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.055, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.055)
  %tobool.not.i38 = icmp eq i32 %i.055, 0
  br i1 %tobool.not.i38, label %if.then6.idma64_desc_free.exit_crit_edge, label %if.then6.do.body.i_crit_edge

if.then6.do.body.i_crit_edge:                     ; preds = %if.then6
  br label %do.body.i

if.then6.idma64_desc_free.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_desc_free.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then6.do.body.i_crit_edge
  %i.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %i.055, %if.then6.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw2, align 8
  %dec.i = add i32 %i.0.i, -1
  %arrayidx.i = getelementptr %struct.idma64_hw_desc, ptr %13, i32 %dec.i
  %14 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pool, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %llp.i = getelementptr %struct.idma64_hw_desc, ptr %13, i32 %dec.i, i32 1
  %18 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %llp.i, align 4
  tail call void @dma_pool_free(ptr noundef %15, ptr noundef %17, i32 noundef %19) #9
  %tobool3.not.i39 = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i39, label %do.body.i.idma64_desc_free.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.idma64_desc_free.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_desc_free.exit

idma64_desc_free.exit:                            ; preds = %do.body.i.idma64_desc_free.exit_crit_edge, %if.then6.idma64_desc_free.exit_crit_edge
  %20 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw2, align 8
  tail call void @kfree(ptr noundef %21) #9
  tail call void @kfree(ptr noundef %call7.i.i.i) #9
  br label %cleanup12

if.end7:                                          ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.054, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address, align 4
  %phys = getelementptr %struct.idma64_hw_desc, ptr %7, i32 %i.055, i32 2
  %24 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %phys, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.054, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length, align 4
  %len = getelementptr %struct.idma64_hw_desc, ptr %7, i32 %i.055, i32 3
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %len, align 4
  %inc = add nuw i32 %i.055, 1
  %call8 = tail call ptr @sg_next(ptr noundef %sg.054) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %idma64_alloc_desc.exit.for.end_crit_edge
  %ndesc9 = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %ndesc9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sg_len, ptr %ndesc9, align 4
  %direction10 = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %direction10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %direction, ptr %direction10, align 4
  %status = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %status, align 4
  %hw2.i42 = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %hw2.i42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw2.i42, align 8
  %sub.i = add i32 %sg_len, -1
  %arrayidx.i43 = getelementptr %struct.idma64_hw_desc, ptr %32, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i43, align 4
  %src_maxburst.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 5
  %dst_maxburst.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 6
  %length.i = getelementptr inbounds %struct.idma64_desc, ptr %call7.i.i.i, i32 0, i32 4
  %src_addr.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 1
  %src_addr_width.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 3
  %dst_addr.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 2
  %dst_addr_width.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 4
  br label %do.body.i46

do.body.i46:                                      ; preds = %idma64_hw_desc_fill.exit.i.do.body.i46_crit_edge, %for.end
  %i.0.i44 = phi i32 [ %sg_len, %for.end ], [ %dec.i45, %idma64_hw_desc_fill.exit.i.do.body.i46_crit_edge ]
  %llp.0.i = phi i64 [ 0, %for.end ], [ %conv.i, %idma64_hw_desc_fill.exit.i.do.body.i46_crit_edge ]
  %35 = ptrtoint ptr %hw2.i42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw2.i42, align 8
  %dec.i45 = add i32 %i.0.i44, -1
  %arrayidx5.i = getelementptr %struct.idma64_hw_desc, ptr %36, i32 %dec.i45
  %37 = ptrtoint ptr %direction10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %direction10, align 4
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx5.i, align 4
  %len.i.i = getelementptr %struct.idma64_hw_desc, ptr %36, i32 %dec.i45, i32 3
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  %phys.i.i = getelementptr %struct.idma64_hw_desc, ptr %36, i32 %dec.i45, i32 2
  %43 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phys.i.i, align 4
  %45 = ptrtoint ptr %dst_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst_addr.i.i, align 4
  %or551.i.i = or i32 %42, %44
  %47 = or i32 %or551.i.i, 4
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 true) #9, !range !58
  %49 = ptrtoint ptr %dst_addr_width.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst_addr_width.i.i, align 4
  %51 = tail call i32 @llvm.cttz.i32(i32 %50, i1 false) #9, !range !58
  br label %idma64_hw_desc_fill.exit.i

if.else.i.i:                                      ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %src_addr.i.i, align 4
  %phys10.i.i = getelementptr %struct.idma64_hw_desc, ptr %36, i32 %dec.i45, i32 2
  %54 = ptrtoint ptr %phys10.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys10.i.i, align 4
  %56 = ptrtoint ptr %src_addr_width.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_addr_width.i.i, align 4
  %58 = tail call i32 @llvm.cttz.i32(i32 %57, i1 false) #9, !range !58
  %or1650.i.i = or i32 %42, %55
  %59 = or i32 %or1650.i.i, 4
  %60 = tail call i32 @llvm.cttz.i32(i32 %59, i1 true) #9, !range !58
  br label %idma64_hw_desc_fill.exit.i

idma64_hw_desc_fill.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %sar.0.in.i.i = phi i32 [ %44, %if.then.i.i ], [ %53, %if.else.i.i ]
  %dar.0.in.i.i = phi i32 [ %46, %if.then.i.i ], [ %55, %if.else.i.i ]
  %ctllo.0.i.i = phi i32 [ 403702016, %if.then.i.i ], [ 404751360, %if.else.i.i ]
  %src_width.0.i.i = phi i32 [ %48, %if.then.i.i ], [ %58, %if.else.i.i ]
  %dst_width.0.i.i = phi i32 [ %51, %if.then.i.i ], [ %60, %if.else.i.i ]
  %sar.0.i.i = zext i32 %sar.0.in.i.i to i64
  %dar.0.i.i = zext i32 %dar.0.in.i.i to i64
  %and.i.i = and i32 %42, 131071
  %61 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sar.0.i.i, ptr %40, align 8
  %dar21.i.i = getelementptr inbounds %struct.idma64_lli, ptr %40, i32 0, i32 1
  %62 = ptrtoint ptr %dar21.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %dar.0.i.i, ptr %dar21.i.i, align 8
  %ctlhi22.i.i = getelementptr inbounds %struct.idma64_lli, ptr %40, i32 0, i32 4
  %63 = ptrtoint ptr %ctlhi22.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i.i, ptr %ctlhi22.i.i, align 4
  %64 = ptrtoint ptr %src_maxburst.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %src_maxburst.i.i, align 4
  %shl.i.i = shl i32 %65, 14
  %or23.i.i = or i32 %shl.i.i, %ctllo.0.i.i
  %66 = ptrtoint ptr %dst_maxburst.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dst_maxburst.i.i, align 4
  %shl24.i.i = shl i32 %67, 11
  %or25.i.i = or i32 %or23.i.i, %shl24.i.i
  %shl26.i.i = shl nuw nsw i32 %dst_width.0.i.i, 1
  %or27.i.i = or i32 %or25.i.i, %shl26.i.i
  %shl28.i.i = shl nuw nsw i32 %src_width.0.i.i, 4
  %or29.i.i = or i32 %or27.i.i, %shl28.i.i
  %ctllo30.i.i = getelementptr inbounds %struct.idma64_lli, ptr %40, i32 0, i32 3
  %68 = ptrtoint ptr %ctllo30.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or29.i.i, ptr %ctllo30.i.i, align 8
  %llp31.i.i = getelementptr inbounds %struct.idma64_lli, ptr %40, i32 0, i32 2
  %69 = ptrtoint ptr %llp31.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %llp.0.i, ptr %llp31.i.i, align 8
  %llp6.i = getelementptr %struct.idma64_hw_desc, ptr %36, i32 %dec.i45, i32 1
  %70 = ptrtoint ptr %llp6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %llp6.i, align 4
  %conv.i = zext i32 %71 to i64
  %72 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i.i, align 4
  %74 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length.i, align 8
  %add.i = add i32 %75, %73
  store i32 %add.i, ptr %length.i, align 8
  %tobool.not.i47 = icmp eq i32 %dec.i45, 0
  br i1 %tobool.not.i47, label %idma64_desc_fill.exit, label %idma64_hw_desc_fill.exit.i.do.body.i46_crit_edge

idma64_hw_desc_fill.exit.i.do.body.i46_crit_edge: ; preds = %idma64_hw_desc_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i46

idma64_desc_fill.exit:                            ; preds = %idma64_hw_desc_fill.exit.i
  %ctllo.i = getelementptr inbounds %struct.idma64_lli, ptr %34, i32 0, i32 3
  %76 = ptrtoint ptr %ctllo.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ctllo.i, align 8
  %or.i = and i32 %77, -402653186
  %and.i = or i32 %or.i, 1
  store i32 %and.i, ptr %ctllo.i, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef %call7.i.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %84, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i48, label %idma64_desc_fill.exit.vchan_tx_prep.exit_crit_edge

idma64_desc_fill.exit.vchan_tx_prep.exit_crit_edge: ; preds = %idma64_desc_fill.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i48:                                   ; preds = %idma64_desc_fill.exit
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %node.i, ptr %prev.i.i, align 4
  %86 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i.i, align 8
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %node.i, ptr %84, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i48, %idma64_desc_fill.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup12

cleanup12:                                        ; preds = %vchan_tx_prep.exit, %idma64_desc_free.exit, %if.then4.i, %entry.cleanup12_crit_edge
  %retval.2 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %idma64_desc_free.exit ], [ null, %if.then4.i ], [ null, %entry.cleanup12_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma64_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_issued.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %11, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @idma64_start_transfer(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %desc = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body2.if.else_crit_edge, label %land.lhs.true

do.body2.if.else_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.body2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp13 = icmp eq i32 %11, %cookie
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  %length.i = getelementptr inbounds %struct.idma64_desc, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %regs.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %18 = zext i32 %17 to i64
  %19 = zext i32 %16 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #9
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %24, i32 28
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %hw3.i = getelementptr inbounds %struct.idma64_desc, ptr %9, i32 0, i32 2
  %26 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw3.i, align 4
  %ndesc.i = getelementptr inbounds %struct.idma64_desc, ptr %9, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i45.do.body.i_crit_edge, %if.then15
  %bytes.0.i = phi i32 [ %13, %if.then15 ], [ %sub.i, %if.end.i45.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.then15 ], [ %inc.i, %if.end.i45.do.body.i_crit_edge ]
  %llp4.i = getelementptr %struct.idma64_hw_desc, ptr %27, i32 %i.0.i, i32 1
  %28 = ptrtoint ptr %llp4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %llp4.i, align 4
  %conv.i = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv.i)
  %cmp.i = icmp eq i64 %22, %conv.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i45

if.end.i45:                                       ; preds = %do.body.i
  %len.i = getelementptr %struct.idma64_hw_desc, ptr %27, i32 %i.0.i, i32 3
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %bytes.0.i, %31
  %inc.i = add nuw i32 %i.0.i, 1
  %32 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndesc.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %33
  br i1 %cmp6.i, label %if.end.i45.do.body.i_crit_edge, label %if.end.i45.if.end9.i_crit_edge

if.end.i45.if.end9.i_crit_edge:                   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end.i45.do.body.i_crit_edge:                   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %tobool.not.i46 = icmp eq i32 %i.0.i, 0
  br i1 %tobool.not.i46, label %do.end.i.idma64_active_desc_size.exit_crit_edge, label %do.end.i.if.end9.i_crit_edge

do.end.i.if.end9.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

do.end.i.idma64_active_desc_size.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_active_desc_size.exit

if.end9.i:                                        ; preds = %do.end.i.if.end9.i_crit_edge, %if.end.i45.if.end9.i_crit_edge
  %i.137.i = phi i32 [ %i.0.i, %do.end.i.if.end9.i_crit_edge ], [ %inc.i, %if.end.i45.if.end9.i_crit_edge ]
  %bytes.136.i = phi i32 [ %bytes.0.i, %do.end.i.if.end9.i_crit_edge ], [ %sub.i, %if.end.i45.if.end9.i_crit_edge ]
  %dec.i = add i32 %i.137.i, -1
  %len12.i = getelementptr %struct.idma64_hw_desc, ptr %27, i32 %dec.i, i32 3
  %34 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len12.i, align 4
  %36 = and i32 %25, -65280
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %add.i = sub i32 %bytes.136.i, %37
  %sub13.i = add i32 %add.i, %35
  br label %idma64_active_desc_size.exit

idma64_active_desc_size.exit:                     ; preds = %if.end9.i, %do.end.i.idma64_active_desc_size.exit_crit_edge
  %retval.0.i = phi i32 [ %sub13.i, %if.end9.i ], [ %bytes.0.i, %do.end.i.idma64_active_desc_size.exit_crit_edge ]
  br i1 %tobool.not.i, label %idma64_active_desc_size.exit.dma_set_residue.exit_crit_edge, label %if.then.i48

idma64_active_desc_size.exit.dma_set_residue.exit_crit_edge: ; preds = %idma64_active_desc_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then.i48:                                      ; preds = %idma64_active_desc_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %38 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %residue1.i, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then.i48, %idma64_active_desc_size.exit.dma_set_residue.exit_crit_edge
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc, align 4
  %status18 = getelementptr inbounds %struct.idma64_desc, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status18, align 4
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body2.if.else_crit_edge
  %tobool19.not = icmp eq ptr %call9, null
  %brmerge = or i1 %tobool.not.i, %tobool19.not
  br i1 %brmerge, label %if.else.if.end23_crit_edge, label %if.then.i52

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then.i52:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.idma64_desc, ptr %call9, i32 0, i32 4
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  %residue1.i51 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %45 = ptrtoint ptr %residue1.i51 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %residue1.i51, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then.i52, %if.else.if.end23_crit_edge, %dma_set_residue.exit
  %status.0 = phi i32 [ %42, %dma_set_residue.exit ], [ 1, %if.else.if.end23_crit_edge ], [ 1, %if.then.i52 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end23 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idma64_slave_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %config1, ptr %config, i32 48)
  %src_maxburst = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 5
  %1 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #9, !range !58
  %sub.i.i = sub nsw i32 31, %3
  %storemerge.i = select i1 %tobool.not.i, i32 0, i32 %sub.i.i
  %4 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge.i, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i6 = icmp eq i32 %6, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #9, !range !58
  %sub.i.i7 = sub nsw i32 31, %7
  %storemerge.i8 = select i1 %tobool.not.i6, i32 0, i32 %sub.i.i7
  %8 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i8, ptr %dst_maxburst, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.idma64_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %regs.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %7 = and i32 %6, -327681
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %8) #9, !srcloc !51
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %count.0.i = phi i16 [ 100, %if.then ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #9
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %15 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i = icmp ne i32 %15, 0
  %dec.i = add nsw i16 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool5.not.i = icmp eq i16 %dec.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %idma64_chan_deactivate.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

idma64_chan_deactivate.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %status10 = getelementptr inbounds %struct.idma64_desc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status10, align 4
  br label %if.end

if.end:                                           ; preds = %idma64_chan_deactivate.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.idma64_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp7 = icmp eq i32 %3, 2
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %status, align 4
  %regs.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %8 = and i32 %7, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %8) #9, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %regs.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 64
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %6 = or i32 %5, 327680
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %6) #9, !srcloc !51
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %count.0.i = phi i16 [ 100, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #9
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %11, i32 64
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %13 = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp ne i32 %13, 0
  %dec.i = add nsw i16 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool5.not.i = icmp eq i16 %dec.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %idma64_chan_deactivate.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

idma64_chan_deactivate.exit:                      ; preds = %do.body.i
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %mask.i.i = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @arm_heavy_mb() #9
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = lshr i32 %18, 8
  %regs.i.i.i = getelementptr inbounds %struct.idma64, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %19) #9, !srcloc !51
  %desc = getelementptr inbounds %struct.idma64_chan, ptr %chan, i32 0, i32 6
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %idma64_chan_deactivate.exit.if.end_crit_edge, label %if.then

idma64_chan_deactivate.exit.if.end_crit_edge:     ; preds = %idma64_chan_deactivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %idma64_chan_deactivate.exit
  %ndesc.i.i = getelementptr inbounds %struct.idma64_desc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ndesc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ndesc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then.idma64_vdesc_free.exit_crit_edge, label %do.body.preheader.i.i

if.then.idma64_vdesc_free.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_vdesc_free.exit

do.body.preheader.i.i:                            ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan.i, align 4
  %hw2.i.i = getelementptr inbounds %struct.idma64_desc, ptr %23, i32 0, i32 2
  %pool.i.i = getelementptr inbounds %struct.idma64_chan, ptr %27, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %i.0.i.i = phi i32 [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %25, %do.body.preheader.i.i ]
  %28 = ptrtoint ptr %hw2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw2.i.i, align 4
  %dec.i.i = add i32 %i.0.i.i, -1
  %arrayidx.i.i = getelementptr %struct.idma64_hw_desc, ptr %29, i32 %dec.i.i
  %30 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pool.i.i, align 4
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %llp.i.i = getelementptr %struct.idma64_hw_desc, ptr %29, i32 %dec.i.i, i32 1
  %34 = ptrtoint ptr %llp.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %llp.i.i, align 4
  call void @dma_pool_free(ptr noundef %31, ptr noundef %33, i32 noundef %35) #9
  %tobool3.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.idma64_vdesc_free.exit_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i.idma64_vdesc_free.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idma64_vdesc_free.exit

idma64_vdesc_free.exit:                           ; preds = %do.body.i.i.idma64_vdesc_free.exit_crit_edge, %if.then.idma64_vdesc_free.exit_crit_edge
  %hw4.i.i = getelementptr inbounds %struct.idma64_desc, ptr %23, i32 0, i32 2
  %36 = ptrtoint ptr %hw4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw4.i.i, align 4
  call void @kfree(ptr noundef %37) #9
  call void @kfree(ptr noundef nonnull %23) #9
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %idma64_vdesc_free.exit, %idma64_chan_deactivate.exit.if.end_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %39 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %40, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.list_splice_tail_init.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %head, ptr %44, align 4
  store ptr %44, ptr %0, align 4
  %48 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %49 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %50, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i12.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %50, ptr %52, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %head, ptr %54, align 4
  store ptr %54, ptr %0, align 4
  %58 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %59 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %60, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i18.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %62, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %head, ptr %64, align 4
  store ptr %64, ptr %0, align 4
  %68 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %69 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %70, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i24.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %72, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %head, ptr %74, align 4
  store ptr %74, ptr %0, align 4
  %78 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %79 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %80, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i30.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %80, ptr %82, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %head, ptr %84, align 4
  store ptr %84, ptr %0, align 4
  %88 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma64_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %entry.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idma64_chan_irq(ptr nocapture noundef readonly %idma64, i16 noundef zeroext %c, i32 noundef %status_err, i32 noundef %status_xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.idma64, ptr %idma64, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %idxprom = zext i16 %c to i32
  %arrayidx = getelementptr %struct.idma64_chan, ptr %1, i32 %idxprom
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %desc1 = getelementptr %struct.idma64_chan, ptr %1, i32 %idxprom, i32 6
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %entry
  %shl = shl nuw i32 1, %idxprom
  %and = and i32 %shl, %status_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr %struct.idma64_chan, ptr %1, i32 %idxprom, i32 3
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %regs.i = getelementptr inbounds %struct.idma64, ptr %idma64, i32 0, i32 1
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !51
  %status = getelementptr inbounds %struct.idma64_desc, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %status, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then
  %and6 = and i32 %shl, %status_xfer
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.else
  %mask9 = getelementptr %struct.idma64_chan, ptr %1, i32 %idxprom, i32 3
  %10 = ptrtoint ptr %mask9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %regs.i37 = getelementptr inbounds %struct.idma64, ptr %idma64, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %14, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %12) #9, !srcloc !51
  %status10 = getelementptr inbounds %struct.idma64_desc, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status10, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan.i, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp slt i32 %19, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !57

do.body2.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !64
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then8
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %completed_cookie.i.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idma64_chan_irq, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !56

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef %19) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %3, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %27, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node.i, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %3, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %node.i, ptr %27, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  tail call fastcc void @idma64_start_transfer(ptr noundef %arrayidx)
  br label %if.end11

if.end11:                                         ; preds = %vchan_cookie_complete.exit, %if.else.if.end11_crit_edge, %if.then3
  %32 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc1, align 4
  %cmp = icmp eq ptr %33, null
  br i1 %cmp, label %if.end11.if.then17_crit_edge, label %lor.lhs.false

if.end11.if.then17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end11
  %status14 = getelementptr inbounds %struct.idma64_desc, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %status14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp15 = icmp eq i32 %35, 3
  br i1 %cmp15, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end11.if.then17_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %mask.i.i = getelementptr %struct.idma64_chan, ptr %1, i32 %idxprom, i32 3
  %38 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = lshr i32 %40, 8
  %regs.i.i.i = getelementptr inbounds %struct.idma64, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %41) #9, !srcloc !51
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idma64_start_transfer(ptr noundef %idma64c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %idma64c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idma64c, align 4
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %idma64c, i32 0, i32 6
  %2 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %3, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -108
  %tobool.not21 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not21
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %desc = getelementptr inbounds %struct.idma64_chan, ptr %idma64c, i32 0, i32 6
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %desc, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %desc4 = getelementptr inbounds %struct.idma64_chan, ptr %idma64c, i32 0, i32 6
  %13 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %desc4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.idma64_chan, ptr %idma64c, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 16777216) #9, !srcloc !51
  %mask.i = getelementptr inbounds %struct.idma64_chan, ptr %idma64c, i32 0, i32 3
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i, align 4
  %shl.i = shl i32 %19, 8
  %or2.i = or i32 %shl.i, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #9
  %regs.i17.i = getelementptr inbounds %struct.idma64, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %regs.i17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i17.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %22, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %20) #9, !srcloc !51
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask.i, align 4
  %shl4.i = shl i32 %24, 8
  %or6.i = or i32 %shl4.i, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #9
  %26 = ptrtoint ptr %regs.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i17.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %27, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %25) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %regs.i17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i17.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !51
  %30 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc4, align 4
  %hw2.i = getelementptr inbounds %struct.idma64_desc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw2.i, align 4
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i.i15 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i15, i32 0) #9, !srcloc !51
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 0) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i12.i = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12.i, i32 0) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 -65280) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i16.i17 = getelementptr i8, ptr %41, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i17, i32 24) #9, !srcloc !51
  %llp.i = getelementptr inbounds %struct.idma64_hw_desc, ptr %33, i32 0, i32 1
  %42 = ptrtoint ptr %llp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %llp.i, align 4
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i18.i18 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i18, i32 %46) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i19.i = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.i, i32 0) #9, !srcloc !51
  %47 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask.i, align 4
  %shl.i20 = shl i32 %48, 8
  %or.i = or i32 %shl.i20, %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %50 = ptrtoint ptr %regs.i17.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i17.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %51, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %49) #9, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %idma64 = getelementptr inbounds %struct.idma64_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %idma64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idma64, align 4
  tail call fastcc void @idma64_off(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma64_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %idma64 = getelementptr inbounds %struct.idma64_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %idma64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idma64, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.idma64, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !51
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_idma64__239_699_idma64_platform_driver_init6, !1, !"__initcall__kmod_idma64__239_699_idma64_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/idma64.c", i32 699, i32 1}
!2 = !{ptr @__exitcall_idma64_platform_driver_exit, !1, !"__exitcall_idma64_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file240, !4, !"__UNIQUE_ID_file240", i1 false, i1 false}
!4 = !{!"../drivers/dma/idma64.c", i32 701, i32 1}
!5 = !{ptr @__UNIQUE_ID_license241, !4, !"__UNIQUE_ID_license241", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description242, !7, !"__UNIQUE_ID_description242", i1 false, i1 false}
!7 = !{!"../drivers/dma/idma64.c", i32 702, i32 1}
!8 = !{ptr @__UNIQUE_ID_author243, !9, !"__UNIQUE_ID_author243", i1 false, i1 false}
!9 = !{!"../drivers/dma/idma64.c", i32 703, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias244, !11, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!11 = !{!"../drivers/dma/idma64.c", i32 704, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/idma64.c", i32 694, i32 11}
!14 = !{ptr @idma64_platform_driver, !15, !"idma64_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/idma64.c", i32 690, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/idma64.c", i32 599, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @idma64_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @idma64_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/idma64.c", i32 170, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @idma64_irq.__UNIQUE_ID_ddebug238, !25, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !29, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/idma64.c", i32 506, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @idma64_alloc_chan_resources._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @idma64_alloc_chan_resources._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @idma64_dev_pm_ops, !40, !"idma64_dev_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/dma/idma64.c", i32 686, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2154288568}
!51 = !{i64 6291042}
!52 = !{i64 2154290373}
!53 = !{i64 2154290215}
!54 = !{i64 6291460}
!55 = !{i64 2154288179}
!56 = !{i64 2148772804, i64 2148772809, i64 2148772822, i64 2148772866, i64 2148772900, i64 2148772921}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i32 0, i32 33}
!59 = !{i64 2154231977}
!60 = !{i64 2153978479}
!61 = !{i64 2153978917}
!62 = !{i64 2154285312}
!63 = !{i64 2154285702}
!64 = !{i64 2154230477, i64 2154230964, i64 2154230514, i64 2154230570, i64 2154230604, i64 2154230628, i64 2154230669, i64 2154230690, i64 2154230718, i64 2154230752}
!65 = !{i64 2153979287}
!66 = !{i64 2153979660}
