; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-tusb1210.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-tusb1210.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ulpi_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ulpi_device_id = type { i16, i16, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ulpi = type { %struct.ulpi_device_id, ptr, %struct.device }
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
%struct.tusb1210 = type { ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_phy_tusb1210__289_176_tusb1210_driver_init6 = internal global ptr @tusb1210_driver_init, section ".initcall6.init", align 4
@tusb1210_driver = internal global { %struct.ulpi_driver, [40 x i8] } { %struct.ulpi_driver { ptr @tusb1210_ulpi_id, ptr @tusb1210_probe, ptr @tusb1210_remove, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@__exitcall_tusb1210_driver_exit = internal global ptr @tusb1210_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [38 x i8] c"phy_tusb1210.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"phy_tusb1210.file=drivers/phy/ti/phy-tusb1210\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"phy_tusb1210.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [50 x i8] c"phy_tusb1210.description=TUSB1210 ULPI PHY driver\00", section ".modinfo", align 1
@tusb1210_ulpi_id = internal constant { [3 x %struct.ulpi_device_id], [40 x i8] } { [3 x %struct.ulpi_device_id] [%struct.ulpi_device_id { i16 1105, i16 5383, i32 0 }, %struct.ulpi_device_id { i16 1105, i16 5384, i32 0 }, %struct.ulpi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tusb1210\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ihstx\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zhsdrv\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"datapolarity\00", [19 x i8] zeroinitializer }, align 32
@phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @tusb1210_power_on, ptr @tusb1210_power_off, ptr @tusb1210_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb2-phy\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"tusb1210_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 166, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"tusb1210_ulpi_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 159, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 171, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 103, i32 57 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 110, i32 54 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 125, i32 43 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 129, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 133, i32 43 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"phy_ops\00", align 1
@___asan_gen_.32 = private constant [33 x i8] c"../drivers/phy/ti/phy-tusb1210.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 87, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"../include/linux/phy/ulpi_phy.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 18, i32 31 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tusb1210_driver_exit, ptr @__initcall__kmod_phy_tusb1210__289_176_tusb1210_driver_init6, ptr @tusb1210_driver_exit, ptr @tusb1210_driver, ptr @tusb1210_ulpi_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @phy_ops, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb1210_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb1210_ulpi_id to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb1210_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__ulpi_register_driver(ptr noundef nonnull @tusb1210_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tusb1210_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ulpi_unregister_driver(ptr noundef nonnull @tusb1210_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulpi_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ulpi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb1210_probe(ptr noundef %ulpi) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !39
  %dev = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #4
  %gpio_reset = getelementptr inbounds %struct.tusb1210, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %gpio_reset, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @gpiod_set_value_cansleep(ptr noundef %call2, i32 noundef 1) #4
  %call11 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 3) #4
  %gpio_cs = getelementptr inbounds %struct.tusb1210, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %gpio_cs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %gpio_cs, align 4
  %cmp.i107 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  tail call void @gpiod_set_value_cansleep(ptr noundef %call11, i32 noundef 1) #4
  %call19 = tail call i32 @ulpi_read(ptr noundef %ulpi, i8 noundef zeroext -128) #4
  %conv = trunc i32 %call19 to i8
  %call.i108 = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull %val, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool22.not = icmp eq i32 %call.i108, 0
  br i1 %tobool22.not, label %u8p_replace_bits.exit, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

u8p_replace_bits.exit:                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %and.i = and i8 %conv, -16
  %7 = and i8 %6, 15
  %or.i = or i8 %7, %and.i
  br label %if.end24

if.end24:                                         ; preds = %u8p_replace_bits.exit, %if.end17.if.end24_crit_edge
  %reg.0 = phi i8 [ %or.i, %u8p_replace_bits.exit ], [ %conv, %if.end17.if.end24_crit_edge ]
  %call.i109 = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull %val, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool27.not = icmp eq i32 %call.i109, 0
  br i1 %tobool27.not, label %u8p_replace_bits.exit89, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

u8p_replace_bits.exit89:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %and.i83 = and i8 %reg.0, -49
  %10 = shl i8 %9, 4
  %11 = and i8 %10, 48
  %or.i88 = or i8 %11, %and.i83
  br label %if.end29

if.end29:                                         ; preds = %u8p_replace_bits.exit89, %if.end24.if.end29_crit_edge
  %reg.1 = phi i8 [ %or.i88, %u8p_replace_bits.exit89 ], [ %reg.0, %if.end24.if.end29_crit_edge ]
  %call.i110 = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull %val, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool32.not = icmp eq i32 %call.i110, 0
  br i1 %tobool32.not, label %u8p_replace_bits.exit106, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

u8p_replace_bits.exit106:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %and.i100 = and i8 %reg.1, -65
  %14 = shl i8 %13, 6
  %15 = and i8 %14, 64
  %or.i105 = or i8 %15, %and.i100
  br label %if.end34

if.end34:                                         ; preds = %u8p_replace_bits.exit106, %if.end29.if.end34_crit_edge
  %reg.2 = phi i8 [ %or.i105, %u8p_replace_bits.exit106 ], [ %reg.1, %if.end29.if.end34_crit_edge ]
  %call35 = call i32 @ulpi_write(ptr noundef %ulpi, i8 noundef zeroext -128, i8 noundef zeroext %reg.2) #4
  %vendor_specific2 = getelementptr inbounds %struct.tusb1210, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %vendor_specific2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %reg.2, ptr %vendor_specific2, align 4
  %call.i111 = call ptr @phy_create(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @phy_ops) #4
  %cmp.i.i = icmp ugt ptr %call.i111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end34.ulpi_phy_create.exit_crit_edge, label %if.end.i

if.end34.ulpi_phy_create.exit_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %ulpi_phy_create.exit

if.end.i:                                         ; preds = %if.end34
  %parent.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i112 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i112, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.end.i.dev_name.exit.i_crit_edge ]
  %call4.i = call i32 @phy_create_lookup(ptr noundef %call.i111, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %dev_name.exit.i.ulpi_phy_create.exit_crit_edge, label %if.then5.i

dev_name.exit.i.ulpi_phy_create.exit_crit_edge:   ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ulpi_phy_create.exit

if.then5.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @phy_destroy(ptr noundef %call.i111) #4
  %23 = inttoptr i32 %call4.i to ptr
  br label %ulpi_phy_create.exit

ulpi_phy_create.exit:                             ; preds = %if.then5.i, %dev_name.exit.i.ulpi_phy_create.exit_crit_edge, %if.end34.ulpi_phy_create.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.then5.i ], [ %call.i111, %if.end34.ulpi_phy_create.exit_crit_edge ], [ %call.i111, %dev_name.exit.i.ulpi_phy_create.exit_crit_edge ]
  %phy = getelementptr inbounds %struct.tusb1210, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %phy, align 4
  %cmp.i113 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then39, label %if.end42

if.then39:                                        ; preds = %ulpi_phy_create.exit
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end42:                                         ; preds = %ulpi_phy_create.exit
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ulpi, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %retval.0.i, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i114 = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 8
  %28 = ptrtoint ptr %driver_data.i.i114 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i114, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then39, %if.then14, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %4, %if.then14 ], [ %25, %if.then39 ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb1210_remove(ptr nocapture noundef readonly %ulpi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy = getelementptr inbounds %struct.tusb1210, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %parent.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.ulpi_phy_destroy.exit_crit_edge

entry.ulpi_phy_destroy.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ulpi_phy_destroy.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %ulpi_phy_destroy.exit

ulpi_phy_destroy.exit:                            ; preds = %if.end.i.i, %entry.ulpi_phy_destroy.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.ulpi_phy_destroy.exit_crit_edge ]
  tail call void @phy_remove_lookup(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i) #4
  tail call void @phy_destroy(ptr noundef %3) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ulpi_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ulpi_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_create_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb1210_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_reset = getelementptr inbounds %struct.tusb1210, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #4
  %gpio_cs = getelementptr inbounds %struct.tusb1210, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_cs, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #4
  %vendor_specific2 = getelementptr inbounds %struct.tusb1210, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vendor_specific2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vendor_specific2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @ulpi_write(ptr noundef %9, i8 noundef zeroext -128, i8 noundef zeroext %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb1210_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_reset = getelementptr inbounds %struct.tusb1210, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #4
  %gpio_cs = getelementptr inbounds %struct.tusb1210, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_cs, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb1210_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @ulpi_read(ptr noundef %3, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = trunc i32 %call1 to i8
  %conv = or i8 %7, 71
  %call3 = tail call i32 @ulpi_write(ptr noundef %6, i8 noundef zeroext 10, i8 noundef zeroext %conv) #4
  %or4 = or i32 %call1, 103
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = trunc i32 %call1 to i8
  %conv7 = and i8 %10, -39
  %call8 = tail call i32 @ulpi_write(ptr noundef %9, i8 noundef zeroext 10, i8 noundef zeroext %conv7) #4
  %and9 = and i32 %call1, -103
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %ret.0 = phi i32 [ %and9, %sw.bb5 ], [ %or4, %sw.bb ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %conv11 = trunc i32 %ret.0 to i8
  %call12 = tail call i32 @ulpi_write(ptr noundef %12, i8 noundef zeroext 10, i8 noundef zeroext %conv11) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_phy_tusb1210__289_176_tusb1210_driver_init6, !1, !"__initcall__kmod_phy_tusb1210__289_176_tusb1210_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 176, i32 1}
!2 = !{ptr @__exitcall_tusb1210_driver_exit, !1, !"__exitcall_tusb1210_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 178, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 179, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 180, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 171, i32 11}
!12 = !{ptr @tusb1210_driver, !13, !"tusb1210_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 166, i32 27}
!14 = !{ptr @tusb1210_ulpi_id, !15, !"tusb1210_ulpi_id", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 159, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 103, i32 57}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 110, i32 54}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 125, i32 43}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 129, i32 43}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 133, i32 43}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/phy/ulpi_phy.h", i32 18, i32 31}
!28 = !{ptr @phy_ops, !29, !"phy_ops", i1 false, i1 false}
!29 = !{!"../drivers/phy/ti/phy-tusb1210.c", i32 87, i32 29}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
