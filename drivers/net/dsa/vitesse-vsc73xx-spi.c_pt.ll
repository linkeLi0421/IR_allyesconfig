; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/vitesse-vsc73xx-spi.c_pt.bc'
source_filename = "../drivers/net/dsa/vitesse-vsc73xx-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.vsc73xx_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.vsc73xx_spi = type { ptr, %struct.mutex, %struct.vsc73xx }
%struct.vsc73xx = type { ptr, ptr, ptr, %struct.gpio_chip, i16, [6 x i8], ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.118, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.118 = type { ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_vitesse_vsc73xx_spi__341_219_vsc73xx_spi_driver_init6 = internal global ptr @vsc73xx_spi_driver_init, section ".initcall6.init", align 4
@vsc73xx_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @vsc73xx_spi_probe, ptr @vsc73xx_spi_remove, ptr @vsc73xx_spi_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vsc73xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vsc73xx_spi_driver_exit = internal global ptr @vsc73xx_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author342 = internal constant [68 x i8] c"vitesse_vsc73xx_spi.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [74 x i8] c"vitesse_vsc73xx_spi.description=Vitesse VSC7385/7388/7395/7398 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [61 x i8] c"vitesse_vsc73xx_spi.file=drivers/net/dsa/vitesse-vsc73xx-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [35 x i8] c"vitesse_vsc73xx_spi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vsc73xx-spi\00", [20 x i8] zeroinitializer }, align 32
@vsc73xx_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vitesse,vsc7385\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vitesse,vsc7388\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vitesse,vsc7395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vitesse,vsc7398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@vsc73xx_spi_ops = internal constant { %struct.vsc73xx_ops, [24 x i8] } { %struct.vsc73xx_ops { ptr @vsc73xx_spi_read, ptr @vsc73xx_spi_write }, [24 x i8] zeroinitializer }, align 32
@vsc73xx_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vsc_spi->lock\00", [17 x i8] zeroinitializer }, align 32
@vsc73xx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vsc73xx_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/dsa/vitesse-vsc73xx-spi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsc73xx_spi_probe._entry_ptr = internal global ptr @vsc73xx_spi_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"vsc73xx_spi_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 210, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 215, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"vsc73xx_of_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 193, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"vsc73xx_spi_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 188, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 149, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [41 x i8] c"../drivers/net/dsa/vitesse-vsc73xx-spi.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 155, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_vsc73xx_spi_driver_exit, ptr @__initcall__kmod_vitesse_vsc73xx_spi__341_219_vsc73xx_spi_driver_init6, ptr @vsc73xx_spi_driver_exit, ptr @vsc73xx_spi_probe._entry, ptr @vsc73xx_spi_probe._entry_ptr, ptr @vsc73xx_spi_driver, ptr @.str, ptr @vsc73xx_of_match, ptr @vsc73xx_spi_ops, ptr @vsc73xx_spi_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_spi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @vsc73xx_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @vsc73xx_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 472, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %spi, null
  br i1 %tobool.not.i, label %if.end.spi_dev_get.exit_crit_edge, label %land.lhs.true.i

if.end.spi_dev_get.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_dev_get.exit

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i33 = tail call ptr @get_device(ptr noundef nonnull %spi) #5
  %tobool1.not.i = icmp eq ptr %call.i33, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %spi
  br label %spi_dev_get.exit

spi_dev_get.exit:                                 ; preds = %land.lhs.true.i, %if.end.spi_dev_get.exit_crit_edge
  %cond.i = phi ptr [ null, %if.end.spi_dev_get.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cond.i, ptr %call.i, align 4
  %vsc = getelementptr inbounds %struct.vsc73xx_spi, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %vsc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %vsc, align 4
  %priv = getelementptr inbounds %struct.vsc73xx_spi, ptr %call.i, i32 0, i32 2, i32 7
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %priv, align 4
  %ops = getelementptr inbounds %struct.vsc73xx_spi, ptr %call.i, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vsc73xx_spi_ops, ptr %ops, align 4
  %lock = getelementptr inbounds %struct.vsc73xx_spi, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @vsc73xx_spi_probe.__key) #5
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %call7 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %if.end12

do.end11:                                         ; preds = %spi_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end12:                                         ; preds = %spi_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 @vsc73xx_probe(ptr noundef %vsc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end11 ], [ %call14, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_spi_remove(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vsc = getelementptr inbounds %struct.vsc73xx_spi, ptr %1, i32 0, i32 2
  tail call void @vsc73xx_remove(ptr noundef %vsc) #5
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_spi_shutdown(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vsc = getelementptr inbounds %struct.vsc73xx_spi, ptr %1, i32 0, i32 2
  tail call void @vsc73xx_shutdown(ptr noundef %vsc) #5
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc73xx_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_spi_read(ptr nocapture noundef readonly %vsc, i8 noundef zeroext %block, i8 noundef zeroext %subblock, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  %cmd = alloca [4 x i8], align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #5
  %2 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %buf, align 4
  %call = tail call i32 @vsc73xx_is_addr_valid(i8 noundef zeroext %block, i8 noundef zeroext %subblock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds i8, ptr %m, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %16 = getelementptr inbounds i8, ptr %t, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 188)
  %18 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %len6, align 4
  %transfer_list.i39 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i39, ptr noundef %27, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i41, label %if.end.i.i.i43, label %spi_message_add_tail.exit.spi_message_add_tail.exit44_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit44_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit44

if.end.i.i.i43:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i39, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m, ptr %transfer_list.i39, align 4
  %prev3.i.i.i42 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i42, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i39, ptr %27, align 4
  br label %spi_message_add_tail.exit44

spi_message_add_tail.exit44:                      ; preds = %if.end.i.i.i43, %spi_message_add_tail.exit.spi_message_add_tail.exit44_crit_edge
  %32 = shl i8 %block, 5
  %33 = and i8 %subblock, 15
  %or1015.i = or i8 %33, %32
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or1015.i, ptr %cmd, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %reg, ptr %2, align 1
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %3, align 2
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %4, align 1
  %lock = getelementptr inbounds %struct.vsc73xx_spi, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call13 = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %m) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end17, label %spi_message_add_tail.exit44.cleanup_crit_edge

spi_message_add_tail.exit44.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %spi_message_add_tail.exit44
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf, align 4
  %conv = zext i8 %41 to i32
  %shl = shl nuw i32 %conv, 24
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %6, align 1
  %conv20 = zext i8 %43 to i32
  %shl21 = shl nuw nsw i32 %conv20, 16
  %or = or i32 %shl21, %shl
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %7, align 2
  %conv23 = zext i8 %45 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %or, %shl24
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %8, align 1
  %conv27 = zext i8 %47 to i32
  %or28 = or i32 %or25, %conv27
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or28, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %spi_message_add_tail.exit44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %spi_message_add_tail.exit44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_spi_write(ptr nocapture noundef readonly %vsc, i8 noundef zeroext %block, i8 noundef zeroext %subblock, i8 noundef zeroext %reg, i32 noundef %val) #2 align 64 {
entry:
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  %cmd = alloca [2 x i8], align 1
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #5
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cmd, align 1, !annotation !38
  %3 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %buf, align 4
  %call = tail call i32 @vsc73xx_is_addr_valid(i8 noundef zeroext %block, i8 noundef zeroext %subblock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds i8, ptr %m, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %15 = getelementptr inbounds i8, ptr %t, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 188)
  %17 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %arrayidx4 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %arrayidx4, align 4
  %len7 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %len7, align 4
  %transfer_list.i38 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i38, ptr noundef %26, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i40, label %if.end.i.i.i42, label %spi_message_add_tail.exit.spi_message_add_tail.exit43_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit43_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit43

if.end.i.i.i42:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i38, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %transfer_list.i38, align 4
  %prev3.i.i.i41 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i41, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i38, ptr %26, align 4
  br label %spi_message_add_tail.exit43

spi_message_add_tail.exit43:                      ; preds = %if.end.i.i.i42, %spi_message_add_tail.exit.spi_message_add_tail.exit43_crit_edge
  %31 = shl i8 %block, 5
  %32 = and i8 %subblock, 15
  %or14.i = or i8 %32, %31
  %or1015.i = or i8 %or14.i, 16
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or1015.i, ptr %cmd, align 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %reg, ptr %3, align 1
  %shr = lshr i32 %val, 24
  %conv = trunc i32 %shr to i8
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %buf, align 4
  %shr13 = lshr i32 %val, 16
  %conv15 = trunc i32 %shr13 to i8
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv15, ptr %5, align 1
  %shr17 = lshr i32 %val, 8
  %conv19 = trunc i32 %shr17 to i8
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv19, ptr %6, align 2
  %conv22 = trunc i32 %val to i8
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv22, ptr %7, align 1
  %lock = getelementptr inbounds %struct.vsc73xx_spi, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call24 = call i32 @spi_sync(ptr noundef %40, ptr noundef nonnull %m) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %spi_message_add_tail.exit43 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc73xx_is_addr_valid(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsc73xx_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsc73xx_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_vitesse_vsc73xx_spi__341_219_vsc73xx_spi_driver_init6, !1, !"__initcall__kmod_vitesse_vsc73xx_spi__341_219_vsc73xx_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_vsc73xx_spi_driver_exit, !1, !"__exitcall_vsc73xx_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author342, !4, !"__UNIQUE_ID_author342", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 221, i32 1}
!5 = !{ptr @__UNIQUE_ID_description343, !6, !"__UNIQUE_ID_description343", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 222, i32 1}
!7 = !{ptr @__UNIQUE_ID_file344, !8, !"__UNIQUE_ID_file344", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 223, i32 1}
!9 = !{ptr @__UNIQUE_ID_license345, !8, !"__UNIQUE_ID_license345", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 215, i32 11}
!12 = !{ptr @vsc73xx_spi_driver, !13, !"vsc73xx_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 210, i32 26}
!14 = !{ptr @vsc73xx_spi_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 149, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 155, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vsc73xx_spi_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @vsc73xx_spi_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @vsc73xx_spi_ops, !26, !"vsc73xx_spi_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 188, i32 33}
!27 = !{ptr @vsc73xx_of_match, !28, !"vsc73xx_of_match", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/vitesse-vsc73xx-spi.c", i32 193, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
