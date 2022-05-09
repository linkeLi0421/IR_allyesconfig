; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-gw-pld.c_pt.bc'
source_filename = "../drivers/gpio/gpio-gw-pld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.gw_pld = type { %struct.gpio_chip, ptr, i8 }

@__initcall__kmod_gpio_gw_pld__288_132_gw_pld_driver_init6 = internal global ptr @gw_pld_driver_init, section ".initcall6.init", align 4
@gw_pld_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @gw_pld_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gw_pld_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @gw_pld_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_gw_pld_driver_exit = internal global ptr @gw_pld_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [42 x i8] c"gpio_gw_pld.file=drivers/gpio/gpio-gw-pld\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [24 x i8] c"gpio_gw_pld.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"gpio_gw_pld.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gw_pld\00", [25 x i8] zeroinitializer }, align 32
@gw_pld_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gateworks,pld-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gw_pld_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"gw-pld\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gw_pld_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gw_pld_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gw_pld_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"registered Gateworks PLD GPIO device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gw_pld_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-gw-pld.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gw_pld_probe._entry_ptr = internal global ptr @gw_pld_probe._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"gw_pld_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 124, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 126, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"gw_pld_dt_ids\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 118, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"gw_pld_id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 112, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 103, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [30 x i8] c"../drivers/gpio/gpio-gw-pld.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 107, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_gw_pld_driver_exit, ptr @__initcall__kmod_gpio_gw_pld__288_132_gw_pld_driver_init6, ptr @gw_pld_driver_exit, ptr @gw_pld_probe._entry, ptr @gw_pld_probe._entry_ptr, ptr @gw_pld_driver, ptr @.str, ptr @gw_pld_dt_ids, ptr @gw_pld_id, ptr @gw_pld_probe.lock_key, ptr @gw_pld_probe.request_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gw_pld_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gw_pld_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gw_pld_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gw_pld_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gw_pld_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gw_pld_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gw_pld_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @gw_pld_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gw_pld_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @gw_pld_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gw_pld_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 356, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %base, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %1 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %can_sleep, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %call.i, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %ngpio, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gw_pld_input8, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gw_pld_get8, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gw_pld_output8, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gw_pld_set8, ptr %set, align 4
  %client12 = getelementptr inbounds %struct.gw_pld, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %client12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %client12, align 4
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %client, align 8
  %17 = or i16 %16, 4096
  store i16 %17, ptr %client, align 8
  %out = getelementptr inbounds %struct.gw_pld, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %out, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @gw_pld_probe.lock_key, ptr noundef nonnull @gw_pld_probe.request_key) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gw_pld_input8(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %shl = shl nuw i32 1, %offset
  %out = getelementptr inbounds %struct.gw_pld, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %out, align 4
  %2 = trunc i32 %shl to i8
  %conv1 = or i8 %1, %2
  store i8 %conv1, ptr %out, align 4
  %client = getelementptr inbounds %struct.gw_pld, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %call3 = tail call i32 @i2c_smbus_write_byte(ptr noundef %4, i8 noundef zeroext %conv1) #4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gw_pld_get8(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %client = getelementptr inbounds %struct.gw_pld, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %2 = lshr i32 %call1, %offset
  %3 = and i32 %2, 1
  %cond = select i1 %cmp, i32 0, i32 %3
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gw_pld_output8(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl2 = shl nuw i32 1, %offset
  %out3 = getelementptr inbounds %struct.gw_pld, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %out3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %out3, align 4
  %2 = trunc i32 %shl2 to i8
  %3 = xor i8 %2, -1
  %conv5 = and i8 %1, %3
  %conv1 = or i8 %1, %2
  %conv5.sink = select i1 %tobool.not, i8 %conv5, i8 %conv1
  store i8 %conv5.sink, ptr %out3, align 4
  %client = getelementptr inbounds %struct.gw_pld, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %call7 = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext %conv5.sink) #4
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gw_pld_set8(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl2.i = shl nuw i32 1, %offset
  %out3.i = getelementptr inbounds %struct.gw_pld, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %out3.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %out3.i, align 4
  %2 = trunc i32 %shl2.i to i8
  %3 = xor i8 %2, -1
  %conv5.i = and i8 %1, %3
  %conv1.i = or i8 %1, %2
  %conv5.sink.i = select i1 %tobool.not.i, i8 %conv5.i, i8 %conv1.i
  store i8 %conv5.sink.i, ptr %out3.i, align 4
  %client.i = getelementptr inbounds %struct.gw_pld, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call7.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext %conv5.sink.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_gpio_gw_pld__288_132_gw_pld_driver_init6, !1, !"__initcall__kmod_gpio_gw_pld__288_132_gw_pld_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 132, i32 1}
!2 = !{ptr @__exitcall_gw_pld_driver_exit, !1, !"__exitcall_gw_pld_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 134, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 135, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 126, i32 11}
!10 = !{ptr @gw_pld_driver, !11, !"gw_pld_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 124, i32 26}
!12 = !{ptr @gw_pld_probe.lock_key, !13, !"lock_key", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 103, i32 8}
!14 = !{ptr @gw_pld_probe.request_key, !13, !"request_key", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 107, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gw_pld_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @gw_pld_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @gw_pld_dt_ids, !24, !"gw_pld_dt_ids", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 118, i32 34}
!25 = !{ptr @gw_pld_id, !26, !"gw_pld_id", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-gw-pld.c", i32 112, i32 35}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
