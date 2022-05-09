; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-mxic.c_pt.bc'
source_filename = "../drivers/spi/spi-mxic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mxic_spi = type { ptr, ptr, ptr, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@__initcall__kmod_spi_mxic__231_628_mxic_spi_driver_init6 = internal global ptr @mxic_spi_driver_init, section ".initcall6.init", align 4
@mxic_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxic_spi_probe, ptr @mxic_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxic_spi_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxic_spi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxic_spi_driver_exit = internal global ptr @mxic_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [53 x i8] c"spi_mxic.author=Mason Yang <masonccyang@mxic.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [51 x i8] c"spi_mxic.description=MX25F0A SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [35 x i8] c"spi_mxic.file=drivers/spi/spi-mxic\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [24 x i8] c"spi_mxic.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxic-spi\00", [23 x i8] zeroinitializer }, align 32
@mxic_spi_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mxicy,mx25f0a-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mxic_spi_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxic_spi_runtime_suspend, ptr @mxic_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ps_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_dly_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@mxic_spi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr @mxic_spi_mem_supports_op, ptr @mxic_spi_mem_exec_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mxic_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 596, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_register_master failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxic_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/spi/spi-mxic.c\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxic_spi_probe._entry_ptr = internal global ptr @mxic_spi_probe._entry, section ".printk_index", align 4
@mxic_spi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 532, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot enable ps_clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxic_spi_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@mxic_spi_runtime_resume._entry_ptr = internal global ptr @mxic_spi_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"mxic_spi_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 619, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 623, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"mxic_spi_of_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 613, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"mxic_spi_dev_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 539, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 561, i32 42 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 565, i32 44 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 569, i32 48 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 573, i32 59 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"mxic_spi_mem_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 446, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 596, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [26 x i8] c"../drivers/spi/spi-mxic.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 532, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_mxic_spi_driver_exit, ptr @__initcall__kmod_spi_mxic__231_628_mxic_spi_driver_init6, ptr @mxic_spi_driver_exit, ptr @mxic_spi_probe._entry, ptr @mxic_spi_probe._entry_ptr, ptr @mxic_spi_runtime_resume._entry, ptr @mxic_spi_runtime_resume._entry_ptr, ptr @mxic_spi_driver, ptr @.str, ptr @mxic_spi_of_ids, ptr @mxic_spi_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mxic_spi_mem_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_spi_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_spi_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_spi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_spi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxic_spi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxic_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxic_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 20, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i82 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i82 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i82, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %of_node4 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %5 = ptrtoint ptr %of_node4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node4, align 8
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %2, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %send_clk = getelementptr inbounds %struct.mxic_spi, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %send_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %send_clk, align 4
  %cmp.i83 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %send_dly_clk = getelementptr inbounds %struct.mxic_spi, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %send_dly_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %send_dly_clk, align 4
  %cmp.i84 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %call29 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.4) #6
  %call31 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call29) #6
  %regs = getelementptr inbounds %struct.mxic_spi, ptr %2, i32 0, i32 3
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call31, ptr %regs, align 4
  %cmp.i85 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %14 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %auto_runtime_pm, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %num_chipselect, align 2
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %16 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mxic_spi_mem_ops, ptr %mem_ops, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %17 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mxic_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %18 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mxic_spi_transfer_one, ptr %transfer_one, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %bits_per_word_mask, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 28419, ptr %mode_bits, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr16.i = getelementptr i8, ptr %30, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 33554688) #6, !srcloc !51
  %call39 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %do.end

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end37.cleanup_crit_edge, %if.then34, %if.then25, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ %9, %if.then17 ], [ %11, %if.then25 ], [ %13, %if.then34 ], [ -12, %entry.cleanup_crit_edge ], [ %call39, %do.end ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @spi_unregister_controller(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxic_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %lvl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs28 = getelementptr inbounds %struct.mxic_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs28, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %lvl, label %do.body23, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = or i32 %6, 33554432
  %8 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs28, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs28, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %15 = or i32 %14, 16777216
  %16 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !51
  br label %if.end

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = and i32 %6, -16777217
  %19 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs28, align 4
  %add.ptr39 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #6, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %do.body23, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_transfer_one(ptr noundef %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %8 = and i32 %7, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %9 = icmp eq i32 %8, 512
  %10 = and i32 %7, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %11 = icmp eq i32 %10, 256
  %or.cond = or i1 %9, %11
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %12 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed_hz, align 4
  %call16 = tail call fastcc i32 @mxic_spi_set_freq(ptr noundef %1, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.else33, label %if.then22

if.then22:                                        ; preds = %if.end19
  %mode23 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %16 = ptrtoint ptr %mode23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode23, align 8
  %and24 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then22.do.body_crit_edge

if.then22.do.body_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %and28 = lshr i32 %17, 8
  %and28.lobit = and i32 %and28, 1
  br label %do.body

if.else33:                                        ; preds = %if.end19
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %if.else33.do.body_crit_edge, label %if.then36

if.else33.do.body_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then36:                                        ; preds = %if.else33
  %mode37 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %20 = ptrtoint ptr %mode37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode37, align 8
  %and38 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else41, label %if.then36.do.body_crit_edge

if.then36.do.body_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %and43 = lshr i32 %21, 10
  %and43.lobit = and i32 %and43, 1
  br label %do.body

do.body:                                          ; preds = %if.else41, %if.then36.do.body_crit_edge, %if.else33.do.body_crit_edge, %if.else, %if.then22.do.body_crit_edge
  %busw.0 = phi i32 [ 0, %if.else33.do.body_crit_edge ], [ 2, %if.then22.do.body_crit_edge ], [ %and28.lobit, %if.else ], [ 2, %if.then36.do.body_crit_edge ], [ %and43.lobit, %if.else41 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %or50 = mul nuw nsw i32 %busw.0, 65
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf, align 4
  %tobool52.not = icmp eq ptr %23, null
  %cond = select i1 %tobool52.not, i32 0, i32 8388608
  %or53 = or i32 %cond, %or50
  %24 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %regs = getelementptr inbounds %struct.mxic_spi, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #6, !srcloc !51
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t, align 4
  %29 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %call56 = tail call fastcc i32 @mxic_spi_data_xfer(ptr noundef %1, ptr noundef %28, ptr noundef %30, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -524, %if.then.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call56, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxic_spi_mem_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ugt i8 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buswidth2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp4 = icmp ugt i8 %3, 8
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %buswidth7 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %buswidth7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buswidth7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp9 = icmp ugt i8 %5, 8
  br i1 %cmp9, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %buswidth12 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %buswidth12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buswidth12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp14 = icmp ugt i8 %7, 8
  br i1 %cmp14, label %lor.lhs.false11.cleanup_crit_edge, label %if.end

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %land.lhs.true

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp28.not = icmp eq i8 %1, %5
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp28.not
  br i1 %or.cond, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp35 = icmp ugt i8 %13, 7
  br i1 %cmp35, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %14 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %dtr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool40.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool40.not, label %land.lhs.true41, label %if.end38.if.else_crit_edge

if.end38.if.else_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true41:                                  ; preds = %if.end38
  %dtr43 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %dtr43 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load44 = load i8, ptr %dtr43, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load44)
  %tobool46.not = icmp sgt i8 %bf.load44, -1
  br i1 %tobool46.not, label %land.lhs.true47, label %land.lhs.true41.if.else_crit_edge

land.lhs.true41.if.else_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true47:                                  ; preds = %land.lhs.true41
  %dtr49 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dtr49 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load50 = load i8, ptr %dtr49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50)
  %tobool52.not = icmp sgt i8 %bf.load50, -1
  br i1 %tobool52.not, label %land.rhs, label %land.lhs.true47.if.else_crit_edge

land.lhs.true47.if.else_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.rhs:                                         ; preds = %land.lhs.true47
  %dtr54 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %dtr54 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load55 = load i8, ptr %dtr54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load55)
  %tobool57.not = icmp sgt i8 %bf.load55, -1
  br i1 %tobool57.not, label %if.then59, label %land.rhs.if.else_crit_edge

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then59:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #6
  br label %cleanup

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %land.lhs.true47.if.else_crit_edge, %land.lhs.true41.if.else_crit_edge, %if.end38.if.else_crit_edge
  %call60 = tail call zeroext i1 @spi_mem_dtr_supports_op(ptr noundef %mem, ptr noundef %op) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then59, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then59 ], [ %call60, %if.else ], [ false, %lor.lhs.false11.cleanup_crit_edge ], [ false, %lor.lhs.false6.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end31.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_mem_exec_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  %addr = alloca [8 x i8], align 8
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #6
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #6
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %cmd, align 1, !annotation !63
  %8 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !63
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed_hz, align 8
  %call2 = tail call fastcc i32 @mxic_spi_set_freq(ptr noundef %5, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 8
  %and = and i32 %15, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %and8 = and i32 %15, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %19 to i32
  %shl25 = shl nuw nsw i32 %conv, 21
  %spec.select295.op = select i1 %tobool9.not, i32 65538, i32 134283266
  %or26 = select i1 %tobool4.not, i32 %spec.select295.op, i32 268500994
  %or28 = or i32 %or26, %shl25
  %20 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %regs = getelementptr inbounds %struct.mxic_spi, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 16777216) #6, !srcloc !51
  %25 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %op, align 8
  %conv35 = zext i8 %26 to i32
  %sub = shl nuw nsw i32 %conv35, 13
  %shl36 = add nsw i32 %sub, -8192
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %27 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buswidth, align 1
  %conv38 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %conv38, i1 true) #6, !range !66
  %sub.i.op = xor i32 %29, 31
  %sub40 = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  %or41 = or i32 %sub40, %shl36
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %30 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %dtr, align 2
  %31 = lshr i8 %bf.load, 5
  %32 = and i8 %31, 4
  %33 = zext i8 %32 to i32
  %or45 = or i32 %or41, %33
  %addr46 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %34 = ptrtoint ptr %addr46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr46, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool48.not = icmp eq i8 %35, 0
  br i1 %tobool48.not, label %if.end.if.end70_crit_edge, label %if.then49

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv52 = zext i8 %35 to i32
  %shl53 = shl nuw nsw i32 %conv52, 14
  %buswidth55 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %buswidth55 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buswidth55, align 1
  %conv56 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i296 = icmp eq i8 %37, 0
  %38 = tail call i32 @llvm.ctlz.i32(i32 %conv56, i1 true) #6, !range !66
  %.neg = mul nsw i32 %38, -8
  %sub.i297.op.op = add nsw i32 %.neg, 248
  %shl59 = select i1 %tobool.not.i296, i32 -8, i32 %sub.i297.op.op
  %dtr62 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %dtr62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load63 = load i8, ptr %dtr62, align 2
  %40 = lshr i8 %bf.load63, 2
  %41 = and i8 %40, 32
  %42 = zext i8 %41 to i32
  %or60 = or i32 %or45, %shl53
  %or68 = or i32 %or60, %42
  %or69 = or i32 %or68, %shl59
  br label %if.end70

if.end70:                                         ; preds = %if.then49, %if.end.if.end70_crit_edge
  %ss_ctrl.0 = phi i32 [ %or69, %if.then49 ], [ %or45, %if.end.if.end70_crit_edge ]
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %43 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool72.not = icmp eq i8 %44, 0
  %conv76 = zext i8 %44 to i32
  %shl77 = shl nuw nsw i32 %conv76, 17
  %or78 = select i1 %tobool72.not, i32 0, i32 %shl77
  %ss_ctrl.1 = or i32 %or78, %ss_ctrl.0
  %nbytes80 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %nbytes80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool81.not = icmp eq i32 %46, 0
  br i1 %tobool81.not, label %if.end70.do.body112_crit_edge, label %if.then82

if.end70.do.body112_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body112

if.then82:                                        ; preds = %if.end70
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data, align 4
  %conv85 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i299 = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.ctlz.i32(i32 %conv85, i1 true) #6, !range !66
  %.neg305 = mul nsw i32 %49, -64
  %sub.i300.op.op = add nsw i32 %.neg305, 1984
  %shl88 = select i1 %tobool.not.i299, i32 -64, i32 %sub.i300.op.op
  %dtr90 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %dtr90 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load91 = load i8, ptr %dtr90, align 1
  %51 = and i8 %bf.load91, -128
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 1
  %or96 = or i32 %53, %ss_ctrl.1
  %or97 = or i32 %or96, %shl88
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp = icmp eq i32 %55, 1
  br i1 %cmp, label %if.then100, label %if.then82.do.body112_crit_edge

if.then82.do.body112_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body112

if.then100:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load91)
  %tobool106.not306 = icmp slt i8 %bf.load91, 0
  %spec.select.v = select i1 %tobool106.not306, i32 8390656, i32 8388608
  %spec.select = or i32 %or97, %spec.select.v
  br label %do.body112

do.body112:                                       ; preds = %if.then100, %if.then82.do.body112_crit_edge, %if.end70.do.body112_crit_edge
  %ss_ctrl.2 = phi i32 [ %or97, %if.then82.do.body112_crit_edge ], [ %ss_ctrl.1, %if.end70.do.body112_crit_edge ], [ %spec.select, %if.then100 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %ss_ctrl.2)
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %59 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mem, align 4
  %chip_select117 = getelementptr inbounds %struct.spi_device, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %chip_select117 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %chip_select117, align 4
  %conv118 = zext i8 %62 to i32
  %mul119 = shl nuw nsw i32 %conv118, 2
  %add120 = add nuw nsw i32 %mul119, 48
  %add.ptr121 = getelementptr i8, ptr %58, i32 %add120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %56) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %66 = or i32 %65, 16777216
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #6, !srcloc !51
  %69 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %op, align 8
  %conv134 = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp135307.not = icmp eq i8 %70, 0
  br i1 %cmp135307.not, label %do.body112.for.end_crit_edge, label %for.body.lr.ph

do.body112.for.end_crit_edge:                     ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body112
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %71 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %opcode, align 4
  %conv138 = zext i16 %72 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0308 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %73 = xor i32 %i.0308, -1
  %sub143 = add nsw i32 %conv134, %73
  %mul144 = shl i32 %sub143, 3
  %shr = lshr i32 %conv138, %mul144
  %conv145 = trunc i32 %shr to i8
  %arrayidx = getelementptr [2 x i8], ptr %cmd, i32 0, i32 %i.0308
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv145, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0308, 1
  %exitcond.not = icmp eq i32 %inc, %conv134
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body112.for.end_crit_edge
  %call149 = call fastcc i32 @mxic_spi_data_xfer(ptr noundef %5, ptr noundef nonnull %cmd, ptr noundef null, i32 noundef %conv134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %for.cond153.preheader, label %for.end.do.body207_crit_edge

for.end.do.body207_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body207

for.cond153.preheader:                            ; preds = %for.end
  %75 = ptrtoint ptr %addr46 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %addr46, align 8
  %conv156 = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp157310.not = icmp eq i8 %76, 0
  br i1 %cmp157310.not, label %for.cond153.preheader.for.end172_crit_edge, label %for.body159.lr.ph

for.cond153.preheader.for.end172_crit_edge:       ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end172

for.body159.lr.ph:                                ; preds = %for.cond153.preheader
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %val, align 8
  br label %for.body159

for.body159:                                      ; preds = %for.body159.for.body159_crit_edge, %for.body159.lr.ph
  %i.1311 = phi i32 [ 0, %for.body159.lr.ph ], [ %inc171, %for.body159.for.body159_crit_edge ]
  %79 = xor i32 %i.1311, -1
  %sub165 = add nsw i32 %conv156, %79
  %mul166 = shl i32 %sub165, 3
  %sh_prom = zext i32 %mul166 to i64
  %shr167 = lshr i64 %78, %sh_prom
  %conv168 = trunc i64 %shr167 to i8
  %arrayidx169 = getelementptr [8 x i8], ptr %addr, i32 0, i32 %i.1311
  %80 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv168, ptr %arrayidx169, align 1
  %inc171 = add nuw nsw i32 %i.1311, 1
  %exitcond313.not = icmp eq i32 %inc171, %conv156
  br i1 %exitcond313.not, label %for.body159.for.end172_crit_edge, label %for.body159.for.body159_crit_edge

for.body159.for.body159_crit_edge:                ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body159

for.body159.for.end172_crit_edge:                 ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end172

for.end172:                                       ; preds = %for.body159.for.end172_crit_edge, %for.cond153.preheader.for.end172_crit_edge
  %call177 = call fastcc i32 @mxic_spi_data_xfer(ptr noundef %5, ptr noundef nonnull %addr, ptr noundef null, i32 noundef %conv156)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %for.end172.do.body207_crit_edge

for.end172.do.body207_crit_edge:                  ; preds = %for.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body207

if.end180:                                        ; preds = %for.end172
  %81 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dummy, align 8
  %conv183 = zext i8 %82 to i32
  %call184 = call fastcc i32 @mxic_spi_data_xfer(ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef %conv183)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.end180.do.body207_crit_edge

if.end180.do.body207_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body207

if.end187:                                        ; preds = %if.end180
  %dir189 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %83 = ptrtoint ptr %dir189 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dir189, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %84, label %if.end187.cond.end202_crit_edge [
    i32 2, label %cond.end.thread
    i32 1, label %cond.true198
  ]

if.end187.cond.end202_crit_edge:                  ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end202

cond.end.thread:                                  ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %86 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf, align 4
  br label %cond.end202

cond.true198:                                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  %buf200 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %88 = ptrtoint ptr %buf200 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buf200, align 4
  br label %cond.end202

cond.end202:                                      ; preds = %cond.true198, %cond.end.thread, %if.end187.cond.end202_crit_edge
  %cond193304 = phi ptr [ null, %cond.true198 ], [ %87, %cond.end.thread ], [ null, %if.end187.cond.end202_crit_edge ]
  %cond203 = phi ptr [ %89, %cond.true198 ], [ null, %cond.end.thread ], [ null, %if.end187.cond.end202_crit_edge ]
  %90 = ptrtoint ptr %nbytes80 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nbytes80, align 4
  %call206 = call fastcc i32 @mxic_spi_data_xfer(ptr noundef %5, ptr noundef %cond193304, ptr noundef %cond203, i32 noundef %91)
  br label %do.body207

do.body207:                                       ; preds = %cond.end202, %if.end180.do.body207_crit_edge, %for.end172.do.body207_crit_edge, %for.end.do.body207_crit_edge
  %ret.0 = phi i32 [ %call149, %for.end.do.body207_crit_edge ], [ %call177, %for.end172.do.body207_crit_edge ], [ %call184, %if.end180.do.body207_crit_edge ], [ %call206, %cond.end202 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %95 = and i32 %94, -16777217
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #6, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr224 = getelementptr i8, ptr %99, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 0) #6, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body207, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body207 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_dtr_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxic_spi_set_freq(ptr nocapture noundef %mxic, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_speed_hz = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 4
  %0 = ptrtoint ptr %cur_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %freq)
  %cmp = icmp eq i32 %1, %freq
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %send_clk.i = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 1
  %2 = ptrtoint ptr %send_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %send_dly_clk.i = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 2
  %4 = ptrtoint ptr %send_dly_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_dly_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = ptrtoint ptr %send_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_clk.i, align 4
  %call.i = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %send_dly_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_dly_clk.i, align 4
  %call1.i = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %mxic_spi_clk_setup.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mxic_spi_clk_setup.exit:                          ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %regs.i.i = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 3
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 252645135) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %13, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i, i32 252645135) #6, !srcloc !51
  %14 = ptrtoint ptr %send_dly_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_dly_clk.i, align 4
  %mul.i = mul i32 %freq, 9
  %div.i = udiv i32 %mul.i, 25000000
  %call6.i = tail call i32 @clk_set_phase(ptr noundef %15, i32 noundef %div.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end2, label %mxic_spi_clk_setup.exit.cleanup_crit_edge

mxic_spi_clk_setup.exit.cleanup_crit_edge:        ; preds = %mxic_spi_clk_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %mxic_spi_clk_setup.exit
  %call3 = tail call fastcc i32 @mxic_spi_clk_enable(ptr noundef %mxic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %cur_speed_hz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %freq, ptr %cur_speed_hz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end2.cleanup_crit_edge, %mxic_spi_clk_setup.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %call6.i, %mxic_spi_clk_setup.exit.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxic_spi_data_xfer(ptr nocapture noundef readonly %mxic, ptr noundef readonly %txbuf, ptr noundef writeonly %rxbuf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp329.not = icmp eq i32 %len, 0
  br i1 %cmp329.not, label %entry.cleanup258_crit_edge, label %while.body.lr.ph

entry.cleanup258_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup258

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not = icmp eq ptr %txbuf, null
  %regs = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 3
  %tobool48.not = icmp eq ptr %rxbuf, null
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.0330 = phi i32 [ 0, %while.body.lr.ph ], [ %add254, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %len, %pos.0330
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4)
  br i1 %tobool.not, label %while.body.if.end3_crit_edge, label %if.then2

while.body.if.end3_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %txbuf, i32 %pos.0330
  %2 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.body.if.end3_crit_edge
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 1000000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool17.not, label %land.lhs.true, label %for.cond.do.body42_crit_edge

for.cond.do.body42_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

land.lhs.true:                                    ; preds = %for.cond
  %call21 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool38.not = icmp eq i32 %10, 0
  br i1 %tobool38.not, label %for.end.cleanup.thread_crit_edge, label %for.end.do.body42_crit_edge

for.end.do.body42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

do.body42:                                        ; preds = %for.end.do.body42_crit_edge, %for.cond.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %data.0.data.0.data.0.)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %rem = shl nuw nsw i32 %1, 2
  %mul = and i32 %rem, 12
  %add46 = add nuw nsw i32 %mul, 20
  %add.ptr47 = getelementptr i8, ptr %14, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %12) #6, !srcloc !51
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %do.body42
  %call53 = tail call i64 @ktime_get() #6
  %add.i307 = add i64 %call53, 1000000000
  br label %for.cond67

for.cond67:                                       ; preds = %land.lhs.true80.for.cond67_crit_edge, %if.then49
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool76.not = icmp eq i32 %18, 0
  br i1 %tobool76.not, label %land.lhs.true80, label %for.cond67.if.end105_crit_edge

for.cond67.if.end105_crit_edge:                   ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

land.lhs.true80:                                  ; preds = %for.cond67
  %call81 = tail call i64 @ktime_get() #6
  %cmp3.i309 = icmp sgt i64 %call81, %add.i307
  br i1 %cmp3.i309, label %for.end98, label %land.lhs.true80.for.cond67_crit_edge

land.lhs.true80.for.cond67_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond67

for.end98:                                        ; preds = %land.lhs.true80
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool101.not = icmp eq i32 %22, 0
  br i1 %tobool101.not, label %for.end98.cleanup.thread_crit_edge, label %for.end98.if.end105_crit_edge

for.end98.if.end105_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

for.end98.cleanup.thread_crit_edge:               ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end105:                                        ; preds = %for.end98.if.end105_crit_edge, %for.cond67.if.end105_crit_edge
  %call109 = tail call i64 @ktime_get() #6
  %add.i312 = add i64 %call109, 1000000000
  br label %for.cond123

for.cond123:                                      ; preds = %land.lhs.true136.for.cond123_crit_edge, %if.end105
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr127 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool132.not = icmp eq i32 %26, 0
  br i1 %tobool132.not, label %land.lhs.true136, label %for.cond123.if.end161_crit_edge

for.cond123.if.end161_crit_edge:                  ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

land.lhs.true136:                                 ; preds = %for.cond123
  %call137 = tail call i64 @ktime_get() #6
  %cmp3.i314 = icmp sgt i64 %call137, %add.i312
  br i1 %cmp3.i314, label %for.end154, label %land.lhs.true136.for.cond123_crit_edge

land.lhs.true136.for.cond123_crit_edge:           ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond123

for.end154:                                       ; preds = %land.lhs.true136
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr144 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %30 = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool157.not = icmp eq i32 %30, 0
  br i1 %tobool157.not, label %for.end154.cleanup.thread_crit_edge, label %for.end154.if.end161_crit_edge

for.end154.if.end161_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

for.end154.cleanup.thread_crit_edge:              ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end161:                                        ; preds = %for.end154.if.end161_crit_edge, %for.cond123.if.end161_crit_edge
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr165 = getelementptr i8, ptr %32, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #6, !srcloc !59
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %.neg = mul nsw i32 %1, -8
  %mul170 = add nsw i32 %.neg, 32
  %shr171 = lshr i32 %34, %mul170
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr171, ptr %data, align 4
  %add.ptr172 = getelementptr i8, ptr %rxbuf, i32 %pos.0330
  %36 = call ptr @memcpy(ptr %add.ptr172, ptr %data, i32 %1)
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr176 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr176) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %40 = and i32 %39, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool181.not = icmp eq i32 %40, 0
  br i1 %tobool181.not, label %if.end161.if.end214_crit_edge, label %do.end193, !prof !84

if.end161.if.end214_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

do.end193:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 323, i32 noundef 9, ptr noundef null) #6
  br label %if.end214

if.else:                                          ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr210 = getelementptr i8, ptr %42, i32 36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  br label %if.end214

if.end214:                                        ; preds = %if.else, %do.end193, %if.end161.if.end214_crit_edge
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr219 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %47 = and i32 %46, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool224.not = icmp eq i32 %47, 0
  br i1 %tobool224.not, label %if.end214.cleanup_crit_edge, label %do.end240, !prof !84

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end240:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup.thread:                                   ; preds = %for.end154.cleanup.thread_crit_edge, %for.end98.cleanup.thread_crit_edge, %for.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  br label %cleanup258

cleanup:                                          ; preds = %do.end240, %if.end214.cleanup_crit_edge
  %add254 = add i32 %1, %pos.0330
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  %cmp = icmp ult i32 %add254, %len
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup258_crit_edge

cleanup.cleanup258_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup258

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup258:                                       ; preds = %cleanup.cleanup258_crit_edge, %cleanup.thread, %entry.cleanup258_crit_edge
  %retval.2 = phi i32 [ -110, %cleanup.thread ], [ 0, %entry.cleanup258_crit_edge ], [ 0, %cleanup.cleanup258_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxic_spi_clk_enable(ptr nocapture noundef readonly %mxic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %send_clk = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 1
  %0 = ptrtoint ptr %send_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %send_dly_clk = getelementptr inbounds %struct.mxic_spi, ptr %mxic, i32 0, i32 2
  %2 = ptrtoint ptr %send_dly_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_dly_clk, align 4
  %call.i12 = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %if.end.err_send_dly_clk_crit_edge

if.end.err_send_dly_clk_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_send_dly_clk

if.end.i16:                                       ; preds = %if.end
  %call1.i14 = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %if.end.i16.cleanup_crit_edge, label %if.then3.i17

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %err_send_dly_clk

err_send_dly_clk:                                 ; preds = %if.then3.i17, %if.end.err_send_dly_clk_crit_edge
  %retval.0.i18.ph = phi i32 [ %call1.i14, %if.then3.i17 ], [ %call.i12, %if.end.err_send_dly_clk_crit_edge ]
  %4 = ptrtoint ptr %send_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_send_dly_clk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %err_send_dly_clk ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i18.ph, %err_send_dly_clk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i16.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %send_clk.i = getelementptr inbounds %struct.mxic_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %send_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %send_dly_clk.i = getelementptr inbounds %struct.mxic_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %send_dly_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_dly_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @mxic_spi_clk_enable(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_spi_mxic__231_628_mxic_spi_driver_init6, !1, !"__initcall__kmod_spi_mxic__231_628_mxic_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-mxic.c", i32 628, i32 1}
!2 = !{ptr @__exitcall_mxic_spi_driver_exit, !1, !"__exitcall_mxic_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-mxic.c", i32 630, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-mxic.c", i32 631, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-mxic.c", i32 632, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-mxic.c", i32 623, i32 11}
!12 = !{ptr @mxic_spi_driver, !13, !"mxic_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-mxic.c", i32 619, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-mxic.c", i32 561, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-mxic.c", i32 565, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-mxic.c", i32 569, i32 48}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-mxic.c", i32 573, i32 59}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-mxic.c", i32 596, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mxic_spi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxic_spi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mxic_spi_mem_ops, !31, !"mxic_spi_mem_ops", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-mxic.c", i32 446, i32 44}
!32 = !{ptr @mxic_spi_of_ids, !33, !"mxic_spi_of_ids", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-mxic.c", i32 613, i32 34}
!34 = !{ptr @mxic_spi_dev_pm_ops, !35, !"mxic_spi_dev_pm_ops", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-mxic.c", i32 539, i32 32}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-mxic.c", i32 532, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mxic_spi_runtime_resume._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mxic_spi_runtime_resume._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2154064316}
!51 = !{i64 2042553}
!52 = !{i64 2154065669}
!53 = !{i64 2154066912}
!54 = !{i64 2154067298}
!55 = !{i64 2154067684}
!56 = !{i64 2154068342}
!57 = !{i64 2154090011}
!58 = !{i64 2154091316}
!59 = !{i64 2042971}
!60 = !{i64 2154092267}
!61 = !{i64 2154094585}
!62 = !{i64 2154095898}
!63 = !{!"auto-init"}
!64 = !{i64 2154080691}
!65 = !{i64 2154081646}
!66 = !{i32 0, i32 33}
!67 = !{i64 2154082798}
!68 = !{i64 2154084079}
!69 = !{i64 2154085030}
!70 = !{i64 2154086204}
!71 = !{i64 2154087159}
!72 = !{i64 2154087420}
!73 = !{i64 2154062268}
!74 = !{i64 2154063458}
!75 = !{i64 2154070578}
!76 = !{i64 2154071060}
!77 = !{i64 2154071334}
!78 = !{i64 2154073269}
!79 = !{i64 2154073751}
!80 = !{i64 2154075487}
!81 = !{i64 2154075969}
!82 = !{i64 2154076464}
!83 = !{i64 2154077410}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2154078285}
!86 = !{i64 2154079231}
