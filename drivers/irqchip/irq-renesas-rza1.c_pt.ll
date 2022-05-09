; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-renesas-rza1.c_pt.bc'
source_filename = "../drivers/irqchip/irq-renesas-rza1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.rza1_irqc_priv = type { ptr, ptr, %struct.irq_chip, ptr, [8 x %struct.of_phandle_args] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_renesas_rza1__187_274_rza1_irqc_init2 = internal global ptr @rza1_irqc_init, section ".initcall2.init", align 4
@rza1_irqc_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rza1_irqc_probe, ptr @rza1_irqc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rza1_irqc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rza1_irqc_exit = internal global ptr @rza1_irqc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [69 x i8] c"irq_renesas_rza1.author=Geert Uytterhoeven <geert+renesas@glider.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [55 x i8] c"irq_renesas_rza1.description=Renesas RZ/A1 IRQC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [55 x i8] c"irq_renesas_rza1.file=drivers/irqchip/irq-renesas-rza1\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [32 x i8] c"irq_renesas_rza1.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_rza1_irqc\00", [46 x i8] zeroinitializer }, align 32
@rza1_irqc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rza1-irqc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rza1_irqc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot find parent domain\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rza1_irqc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/irqchip/irq-renesas-rza1.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rza1_irqc_probe._entry_ptr = internal global ptr @rza1_irqc_probe._entry, section ".printk_index", align 4
@rza1_irqc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot parse %s: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rza1_irqc_probe._entry_ptr.8 = internal global ptr @rza1_irqc_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interrupt-map\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rza1-irqc\00", [22 x i8] zeroinitializer }, align 32
@rza1_irqc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rza1_irqc_alloc, ptr null, ptr null, ptr null, ptr @rza1_irqc_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@rza1_irqc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot initialize irq domain\0A\00", [34 x i8] zeroinitializer }, align 32
@rza1_irqc_probe._entry_ptr.13 = internal global ptr @rza1_irqc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#interrupt-cells\00", [47 x i8] zeroinitializer }, align 32
@switch.table.rza1_irqc_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"rza1_irqc_device_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 261, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 265, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"rza1_irqc_dt_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 255, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 215, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 226, i32 20 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"rza1_irqc_domain_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 137, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 238, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [38 x i8] c"../drivers/irqchip/irq-renesas-rza1.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 172, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [32 x i8] c"switch.table.rza1_irqc_set_type\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_rza1_irqc_exit, ptr @__initcall__kmod_irq_renesas_rza1__187_274_rza1_irqc_init2, ptr @rza1_irqc_exit, ptr @rza1_irqc_probe._entry, ptr @rza1_irqc_probe._entry.11, ptr @rza1_irqc_probe._entry.6, ptr @rza1_irqc_probe._entry_ptr, ptr @rza1_irqc_probe._entry_ptr.13, ptr @rza1_irqc_probe._entry_ptr.8, ptr @rza1_irqc_device_driver, ptr @.str, ptr @rza1_irqc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @rza1_irqc_domain_ops, ptr @.str.12, ptr @.str.14, ptr @switch.table.rza1_irqc_set_type], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_irqc_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_irqc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_irqc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_irqc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_irqc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rza1_irqc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rza1_irqc_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_irqc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rza1_irqc_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rza1_irqc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rza1_irqc_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_irqc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %imaplen.i = alloca i32, align 4
  %intsize.i = alloca i32, align 4
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 724, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_irq_find_parent(ptr noundef %1) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.do.end_crit_edge, label %if.then12

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then12:                                        ; preds = %if.end9
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call10, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %6 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 68)
  %8 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end14, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end14:                                         ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %9 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 68)
  %11 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %tobool15.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool15.not, label %if.end14.do.end_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end14.do.end_crit_edge, %if.end9.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %out_put_node

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %if.then12.if.end17_crit_edge
  %parent.082 = phi ptr [ %call.i.i8.i, %if.end14.if.end17_crit_edge ], [ %call.i.i.i, %if.then12.if.end17_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imaplen.i) #7
  %12 = ptrtoint ptr %imaplen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %imaplen.i, align 4, !annotation !49
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intsize.i) #7
  %15 = ptrtoint ptr %intsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %intsize.i, align 4, !annotation !49
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %call.i74 = call ptr @of_get_property(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull %imaplen.i) #7
  %tobool.not.i75 = icmp eq ptr %call.i74, null
  br i1 %tobool.not.i75, label %if.end17.do.end23_crit_edge, label %for.body.preheader.i

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

for.body.preheader.i:                             ; preds = %if.end17
  %18 = ptrtoint ptr %imaplen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %imaplen.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %19 = phi i32 [ %.pr.i, %for.body.preheader.i ], [ %sub29.i, %for.end.i.for.body.i_crit_edge ]
  %imap.070.i = phi ptr [ %call.i74, %for.body.preheader.i ], [ %imap.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %i.068.i = phi i32 [ 0, %for.body.preheader.i ], [ %inc31.i, %for.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp2.i = icmp ult i32 %19, 3
  br i1 %cmp2.i, label %for.body.i.do.end23_crit_edge, label %if.end4.i

for.body.i.do.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end4.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %imap.070.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %imap.070.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %i.068.i)
  %cmp6.not.i = icmp eq i32 %21, %i.068.i
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end4.i.do.end23_crit_edge

if.end4.i.do.end23_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr i32, ptr %imap.070.i, i32 2
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %call10.i = call ptr @of_find_node_by_phandle(i32 noundef %23) #7
  %cmp11.not.i = icmp eq ptr %call10.i, %call10
  br i1 %cmp11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef %call10.i) #7
  br label %do.end23

if.end13.i:                                       ; preds = %if.end8.i
  %add.ptr14.i = getelementptr i32, ptr %imap.070.i, i32 3
  %24 = ptrtoint ptr %imaplen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %imaplen.i, align 4
  %sub.i = add i32 %25, -3
  store i32 %sub.i, ptr %imaplen.i, align 4
  %call.i.i.i76 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call10, ptr noundef nonnull @.str.14, ptr noundef nonnull %intsize.i, i32 noundef 1, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i76)
  %tobool16.not.i = icmp sgt i32 %call.i.i.i76, -1
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.do.end23_crit_edge

if.end13.i.do.end23_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end18.i:                                       ; preds = %if.end13.i
  %26 = ptrtoint ptr %imaplen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %imaplen.i, align 4
  %28 = ptrtoint ptr %intsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp19.i = icmp ult i32 %27, %29
  br i1 %cmp19.i, label %if.end18.i.do.end23_crit_edge, label %if.end21.i

if.end18.i.do.end23_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end21.i:                                       ; preds = %if.end18.i
  %args_count.i = getelementptr %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 4, i32 %i.068.i, i32 1
  %30 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2357.not.i = icmp eq i32 %29, 0
  br i1 %cmp2357.not.i, label %if.end21.i.for.end.i_crit_edge, label %if.end21.i.for.body24.i_crit_edge

if.end21.i.for.body24.i_crit_edge:                ; preds = %if.end21.i
  br label %for.body24.i

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %if.end21.i.for.body24.i_crit_edge
  %imap.159.i = phi ptr [ %incdec.ptr.i, %for.body24.i.for.body24.i_crit_edge ], [ %add.ptr14.i, %if.end21.i.for.body24.i_crit_edge ]
  %j.058.i = phi i32 [ %inc.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %if.end21.i.for.body24.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %imap.159.i, i32 1
  %31 = ptrtoint ptr %imap.159.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %imap.159.i, align 4
  %arrayidx28.i = getelementptr %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 4, i32 %i.068.i, i32 2, i32 %j.058.i
  %33 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx28.i, align 4
  %inc.i = add nuw i32 %j.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.body24.i.for.end.i_crit_edge, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.i

for.body24.i.for.end.i_crit_edge:                 ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body24.i.for.end.i_crit_edge, %if.end21.i.for.end.i_crit_edge
  %imap.1.lcssa.i = phi ptr [ %add.ptr14.i, %if.end21.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body24.i.for.end.i_crit_edge ]
  %sub29.i = sub i32 %27, %29
  %34 = ptrtoint ptr %imaplen.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub29.i, ptr %imaplen.i, align 4
  %inc31.i = add nuw nsw i32 %i.068.i, 1
  %exitcond72.not.i = icmp eq i32 %inc31.i, 8
  br i1 %exitcond72.not.i, label %if.end24, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end23:                                         ; preds = %if.end18.i.do.end23_crit_edge, %if.end13.i.do.end23_crit_edge, %if.then12.i, %if.end4.i.do.end23_crit_edge, %for.body.i.do.end23_crit_edge, %if.end17.do.end23_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end17.do.end23_crit_edge ], [ -22, %if.then12.i ], [ -22, %for.body.i.do.end23_crit_edge ], [ -22, %if.end4.i.do.end23_crit_edge ], [ -22, %if.end18.i.do.end23_crit_edge ], [ %call.i.i.i76, %if.end13.i.do.end23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intsize.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imaplen.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph) #10
  br label %out_put_node

if.end24:                                         ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intsize.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imaplen.i) #7
  %name = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.10, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @irq_chip_mask_parent, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 9
  %37 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @irq_chip_unmask_parent, ptr %irq_unmask, align 4
  %irq_eoi = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 10
  %38 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rza1_irqc_eoi, ptr %irq_eoi, align 4
  %irq_retrigger = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 12
  %39 = ptrtoint ptr %irq_retrigger to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @irq_chip_retrigger_hierarchy, ptr %irq_retrigger, align 4
  %irq_set_type = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 13
  %40 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rza1_irqc_set_type, ptr %irq_set_type, align 4
  %flags = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 2, i32 33
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %flags, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef %parent.082, i32 noundef 0, i32 noundef 8, ptr noundef %spec.select.i.i, ptr noundef nonnull @rza1_irqc_domain_ops, ptr noundef nonnull %call.i) #7
  %irq_domain = getelementptr inbounds %struct.rza1_irqc_priv, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool33.not = icmp eq ptr %call1.i, null
  br i1 %tobool33.not, label %do.end37, label %if.end24.out_put_node_crit_edge

if.end24.out_put_node_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

do.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %out_put_node

out_put_node:                                     ; preds = %do.end37, %if.end24.out_put_node_crit_edge, %do.end23, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end23 ], [ 0, %if.end24.out_put_node_crit_edge ], [ -12, %do.end37 ], [ -19, %do.end ]
  call void @of_node_put(ptr noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %ret.0, %out_put_node ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_irqc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_domain = getelementptr inbounds %struct.rza1_irqc_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rza1_irqc_eoi(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %5
  %base = getelementptr inbounds %struct.rza1_irqc_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !50
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv4 = zext i16 %9 to i32
  %and = and i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = trunc i32 %shl to i16
  %11 = xor i16 %10, -1
  %12 = shl i16 %11, 8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %12) #7, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @irq_chip_eoi_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_irqc_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %type, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -121, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rza1_irqc_set_type, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %base = getelementptr inbounds %struct.rza1_irqc_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 2
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !50
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %mul = shl i32 %5, 1
  %shl = shl i32 3, %mul
  %13 = trunc i32 %shl to i16
  %14 = xor i16 %13, -1
  %conv8 = and i16 %12, %14
  %shl11 = shl i32 %switch.load, %mul
  %15 = trunc i32 %shl11 to i16
  %conv13 = or i16 %conv8, %15
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %16) #7, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rza1_irqc_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %spec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %spec) #7
  %4 = getelementptr inbounds i8, ptr %spec, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 64)
  %chip = getelementptr inbounds %struct.rza1_irqc_priv, ptr %1, i32 0, i32 2
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %3, ptr noundef %chip, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %fwnode = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fwnode, ptr %spec, align 4
  %args_count = getelementptr %struct.rza1_irqc_priv, ptr %1, i32 0, i32 4, i32 %3, i32 1
  %11 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args_count, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %spec, i32 0, i32 1
  %13 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp28.not = icmp eq i32 %12, 0
  br i1 %cmp28.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.rza1_irqc_priv, ptr %1, i32 0, i32 4, i32 %3, i32 2, i32 %i.029
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.irq_fwspec, ptr %spec, i32 0, i32 2, i32 %i.029
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx8, align 4
  %inc = add nuw i32 %i.029, 1
  %17 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param_count, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call9 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %spec) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %spec) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rza1_irqc_translate(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp1 = icmp ugt i32 %3, 7
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hwirq, align 4
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_irq_renesas_rza1__187_274_rza1_irqc_init2, !1, !"__initcall__kmod_irq_renesas_rza1__187_274_rza1_irqc_init2", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 274, i32 1}
!2 = !{ptr @__exitcall_rza1_irqc_exit, !3, !"__exitcall_rza1_irqc_exit", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 280, i32 1}
!4 = !{ptr @__UNIQUE_ID_author188, !5, !"__UNIQUE_ID_author188", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 282, i32 1}
!6 = !{ptr @__UNIQUE_ID_description189, !7, !"__UNIQUE_ID_description189", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 283, i32 1}
!8 = !{ptr @__UNIQUE_ID_file190, !9, !"__UNIQUE_ID_file190", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 284, i32 1}
!10 = !{ptr @__UNIQUE_ID_license191, !9, !"__UNIQUE_ID_license191", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 265, i32 11}
!13 = !{ptr @rza1_irqc_device_driver, !14, !"rza1_irqc_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 261, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 215, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rza1_irqc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rza1_irqc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 222, i32 3}
!25 = !{ptr @rza1_irqc_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rza1_irqc_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 226, i32 20}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 238, i32 3}
!32 = !{ptr @rza1_irqc_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rza1_irqc_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 172, i32 36}
!36 = !{ptr @rza1_irqc_domain_ops, !37, !"rza1_irqc_domain_ops", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 137, i32 36}
!38 = !{ptr @rza1_irqc_dt_ids, !39, !"rza1_irqc_dt_ids", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-renesas-rza1.c", i32 255, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 4202463}
!51 = !{i64 4202263}
