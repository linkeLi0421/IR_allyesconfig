; ModuleID = '/llk/IR_all_yes/drivers/staging/nvec/nvec_power.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.nvec_power = type { %struct.notifier_block, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [30 x i8], [30 x i8], [30 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bat_response = type { i8, i8, i8, i8, %union.anon.43 }
%union.anon.43 = type { i16, [28 x i8] }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_nvec_power__183_444_nvec_power_driver_init6 = internal global ptr @nvec_power_driver_init, section ".initcall6.init", align 4
@nvec_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nvec_power_probe, ptr @nvec_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nvec_power_driver_exit = internal global ptr @nvec_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [55 x i8] c"nvec_power.author=Ilya Petrov <ilya.muromec@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [48 x i8] c"nvec_power.file=drivers/staging/nvec/nvec_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [23 x i8] c"nvec_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [50 x i8] c"nvec_power.description=NVEC battery and AC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [37 x i8] c"nvec_power.alias=platform:nvec-power\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvec-power\00", [21 x i8] zeroinitializer }, align 32
@nvec_psy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nvec_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.4, i32 3, ptr null, i32 0, ptr @nvec_power_props, i32 1, ptr @nvec_power_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@nvec_power_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.5], [28 x i8] zeroinitializer }, align 32
@nvec_power_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&power->poller)->work)\00", [53 x i8] zeroinitializer }, align 32
@nvec_power_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&power->poller)->timer\00", [39 x i8] zeroinitializer }, align 32
@nvec_bat_psy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nvec_bat_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.5, i32 1, ptr null, i32 0, ptr @nvec_battery_props, i32 12, ptr @nvec_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@nvec_power_props = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bat_iter = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 6], [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvec_battery_props = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 3, i32 47, i32 12, i32 17, i32 22, i32 24, i32 25, i32 26, i32 74, i32 73, i32 6], [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Li\00", [29 x i8] zeroinitializer }, align 32
@switch.table.nvec_power_bat_notifier = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.9 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 3, i64 6, i64 12, i64 17, i64 18, i64 22, i64 24, i64 25, i64 26, i64 47, i64 52, i64 60, i64 73, i64 74]
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"nvec_power_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 436, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 440, i32 14 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"nvec_psy\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 82, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"nvec_psy_desc\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 332, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"nvec_power_supplied_to\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 320, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 396, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"nvec_bat_psy\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 81, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"nvec_bat_psy_desc\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 324, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 333, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"nvec_power_props\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 296, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 321, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 340, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"bat_iter\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 341, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"nvec_battery_props\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 300, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [37 x i8] c"../drivers/staging/nvec/nvec_power.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 210, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant [37 x i8] c"switch.table.nvec_power_bat_notifier\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_nvec_power_driver_exit, ptr @__initcall__kmod_nvec_power__183_444_nvec_power_driver_init6, ptr @nvec_power_driver_exit, ptr @nvec_power_driver, ptr @.str, ptr @nvec_psy, ptr @nvec_psy_desc, ptr @nvec_power_supplied_to, ptr @nvec_power_probe.__key, ptr @.str.1, ptr @nvec_power_probe.__key.2, ptr @.str.3, ptr @nvec_bat_psy, ptr @nvec_bat_psy_desc, ptr @.str.4, ptr @nvec_power_props, ptr @.str.5, ptr @counter, ptr @bat_iter, ptr @nvec_battery_props, ptr @.str.6, ptr @switch.table.nvec_power_bat_notifier], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_psy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_power_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_power_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_power_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_bat_psy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_bat_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_power_props to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_iter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_battery_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvec_power_bat_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_power_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvec_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_power_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %4 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 264, i32 noundef 2304) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i59 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i59 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i59, align 4
  %nvec4 = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %nvec4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %nvec4, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %10 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvec_power_supplied_to, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %11 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_supplicants, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nvec_power_notifier, ptr %call.i, align 4
  %poller = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %poller, i32 noundef 0) #6
  %13 = ptrtoint ptr %poller to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %poller, align 4
  %lockdep_map = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvec_power_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry12 = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nvec_power_poll, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nvec_power, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvec_power_probe.__key.2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %poller, i32 noundef 500) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nvec_power_bat_notifier, ptr %call.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb
  %psy.0 = phi ptr [ @nvec_bat_psy, %sw.bb24 ], [ @nvec_psy, %sw.bb ]
  %psy_desc.0 = phi ptr [ @nvec_bat_psy_desc, %sw.bb24 ], [ @nvec_psy_desc, %sw.bb ]
  %call28 = tail call i32 @nvec_register_notifier(ptr noundef %3, ptr noundef nonnull %call.i, i32 noundef 1) #6
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then30, label %sw.epilog.if.end31_crit_edge

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 519, ptr %buf.i, align 2
  %arrayidx1.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %22 = ptrtoint ptr %nvec4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nvec4, align 4
  %call.i60 = call i32 @nvec_write_async(ptr noundef %23, ptr noundef nonnull %buf.i, i16 noundef signext 2) #6
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %arrayidx1.i, align 1
  %25 = ptrtoint ptr %nvec4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nvec4, align 4
  %call.1.i = call i32 @nvec_write_async(ptr noundef %26, ptr noundef nonnull %buf.i, i16 noundef signext 2) #6
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 9, ptr %arrayidx1.i, align 1
  %28 = ptrtoint ptr %nvec4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nvec4, align 4
  %call.2.i = call i32 @nvec_write_async(ptr noundef %29, ptr noundef nonnull %buf.i, i16 noundef signext 2) #6
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 11, ptr %arrayidx1.i, align 1
  %31 = ptrtoint ptr %nvec4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nvec4, align 4
  %call.3.i = call i32 @nvec_write_async(ptr noundef %32, ptr noundef nonnull %buf.i, i16 noundef signext 2) #6
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 12, ptr %arrayidx1.i, align 1
  %34 = ptrtoint ptr %nvec4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nvec4, align 4
  %call.4.i = call i32 @nvec_write_async(ptr noundef %35, ptr noundef nonnull %buf.i, i16 noundef signext 2) #6
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 13, ptr %arrayidx1.i, align 1
  %37 = ptrtoint ptr %nvec4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nvec4, align 4
  %call.5.i = call i32 @nvec_write_async(ptr noundef %38, ptr noundef nonnull %buf.i, i16 noundef signext 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %sw.epilog.if.end31_crit_edge
  %call33 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull %psy_desc.0, ptr noundef nonnull %psy_cfg) #6
  %39 = ptrtoint ptr %psy.0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call33, ptr %psy.0, align 4
  %cmp.i.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %40 = ptrtoint ptr %call33 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %40, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_power_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %poller = getelementptr inbounds %struct.nvec_power, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poller) #6
  %nvec = getelementptr inbounds %struct.nvec_power, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvec, align 4
  %call2 = tail call i32 @nvec_unregister_notifier(ptr noundef %3, ptr noundef %1) #6
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %nvec_bat_psy.sink = phi ptr [ @nvec_bat_psy, %sw.bb3 ], [ @nvec_psy, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %nvec_bat_psy.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nvec_bat_psy.sink, align 4
  tail call void @power_supply_unregister(ptr noundef %8) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_power_notifier(ptr nocapture noundef %nb, i32 noundef %event_type, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event_type)
  %cmp.not = icmp eq i32 %event_type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub_type = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sub_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %on = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 3
  %2 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %on, align 4
  %4 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv4 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv4)
  %cmp5.not = icmp eq i32 %3, %conv4
  br i1 %cmp5.not, label %if.then3.cleanup_crit_edge, label %if.then7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %on, align 4
  %8 = load ptr, ptr @nvec_psy, align 4
  tail call void @power_supply_changed(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 32769, %if.then7 ], [ 32769, %if.then3.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvec_power_poll(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %buf, align 2
  %1 = load i32, ptr @counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 0, ptr @counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nvec = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvec, align 4
  %call = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  call void @msleep(i32 noundef 100) #6
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %buf, align 2
  %5 = load i32, ptr @counter, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @counter, align 4
  %arrayidx1 = getelementptr [4 x i32], ptr @bat_iter, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %conv = trunc i32 %7 to i8
  %arrayidx2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx2, align 1
  %9 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvec, align 4
  %call5 = call i32 @nvec_write_async(ptr noundef %10, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work, i32 noundef 500) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_power_bat_notifier(ptr noundef %nb, i32 noundef %event_type, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event_type)
  %cmp.not = icmp eq i32 %event_type, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub_type = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sub_type, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb30
    i8 2, label %sw.bb32
    i8 3, label %sw.bb35
    i8 4, label %sw.bb38
    i8 6, label %sw.bb41
    i8 7, label %sw.bb44
    i8 8, label %sw.bb47
    i8 9, label %sw.bb50
    i8 10, label %sw.bb53
    i8 11, label %sw.bb55
    i8 12, label %sw.bb62
    i8 13, label %sw.bb73
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %3 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %bat_present17 = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 4
  %7 = ptrtoint ptr %bat_present17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bat_present17, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then5, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @get_bat_mfg_data(ptr noundef %nb)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then2.if.end6_crit_edge
  %9 = ptrtoint ptr %bat_present17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %bat_present17, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 2
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %.not = icmp eq i8 %13, 3
  br i1 %.not, label %if.end6.if.end24_crit_edge, label %switch.lookup

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp18 = icmp eq i32 %8, 1
  %14 = ptrtoint ptr %bat_present17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bat_present17, align 4
  %bat_status23 = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 5
  %15 = ptrtoint ptr %bat_status23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bat_status23, align 4
  %arrayidx25150 = getelementptr [30 x i8], ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx25150 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25150, align 1
  %conv26151 = zext i8 %17 to i32
  %bat_cap152 = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 15
  %18 = ptrtoint ptr %bat_cap152 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv26151, ptr %bat_cap152, align 4
  br i1 %cmp18, label %if.else.if.then28_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = zext i8 %13 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.nvec_power_bat_notifier, i32 0, i32 %and10
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end24

if.end24:                                         ; preds = %switch.lookup, %if.end6.if.end24_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end6.if.end24_crit_edge ]
  %bat_status = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 5
  %20 = ptrtoint ptr %bat_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %bat_status, align 4
  %arrayidx25 = getelementptr [30 x i8], ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %22 to i32
  %bat_cap = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 15
  %23 = ptrtoint ptr %bat_cap to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv26, ptr %bat_cap, align 4
  br i1 %cmp3, label %if.end24.if.then28_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.if.then28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %if.end24.if.then28_crit_edge, %if.else.if.then28_crit_edge
  %24 = load ptr, ptr @nvec_bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %24) #6
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %conv31 = zext i16 %27 to i32
  %mul = mul nuw nsw i32 %conv31, 1000
  %bat_voltage_now = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 6
  %28 = ptrtoint ptr %bat_voltage_now to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %bat_voltage_now, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %conv33 = zext i16 %31 to i32
  %mul34 = mul nuw nsw i32 %conv33, 3600
  %time_remain = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 9
  %32 = ptrtoint ptr %time_remain to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul34, ptr %time_remain, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  %conv36 = sext i16 %35 to i32
  %mul37 = mul nsw i32 %conv36, 1000
  %bat_current_now = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 7
  %36 = ptrtoint ptr %bat_current_now to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul37, ptr %bat_current_now, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 2
  %conv39 = sext i16 %39 to i32
  %mul40 = mul nsw i32 %conv39, 1000
  %bat_current_avg = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 8
  %40 = ptrtoint ptr %bat_current_avg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul40, ptr %bat_current_avg, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %41 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  %conv42 = zext i16 %43 to i32
  %mul43 = mul nuw nsw i32 %conv42, 1000
  %capacity_remain = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 13
  %44 = ptrtoint ptr %capacity_remain to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul43, ptr %capacity_remain, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 2
  %conv45 = zext i16 %47 to i32
  %mul46 = mul nuw nsw i32 %conv45, 1000
  %charge_last_full = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 11
  %48 = ptrtoint ptr %charge_last_full to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul46, ptr %charge_last_full, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %49 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %conv48 = zext i16 %51 to i32
  %mul49 = mul nuw nsw i32 %conv48, 1000
  %charge_full_design = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 10
  %52 = ptrtoint ptr %charge_full_design to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul49, ptr %charge_full_design, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %53 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 2
  %conv51 = zext i16 %55 to i32
  %mul52 = mul nuw nsw i32 %conv51, 1000
  %critical_capacity = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 12
  %56 = ptrtoint ptr %critical_capacity to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul52, ptr %critical_capacity, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %57 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  %conv54 = zext i16 %59 to i32
  %sub = add nsw i32 %conv54, -2732
  %bat_temperature = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 14
  %60 = ptrtoint ptr %bat_temperature to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub, ptr %bat_temperature, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bat_manu = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 17
  %61 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %length = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 1
  %62 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %length, align 1
  %conv56 = zext i8 %63 to i32
  %sub57 = add nsw i32 %conv56, -2
  %64 = call ptr @memcpy(ptr %bat_manu, ptr %61, i32 %sub57)
  %65 = load i8, ptr %length, align 1
  %conv59 = zext i8 %65 to i32
  %sub60 = add nsw i32 %conv59, -2
  %arrayidx61 = getelementptr %struct.nvec_power, ptr %nb, i32 0, i32 18, i32 %sub60
  %66 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx61, align 1
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bat_model63 = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 18
  %67 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %length65 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 1
  %68 = ptrtoint ptr %length65 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %length65, align 1
  %conv66 = zext i8 %69 to i32
  %sub67 = add nsw i32 %conv66, -2
  %70 = call ptr @memcpy(ptr %bat_model63, ptr %67, i32 %sub67)
  %71 = load i8, ptr %length65, align 1
  %conv70 = zext i8 %71 to i32
  %sub71 = add nsw i32 %conv70, -2
  %arrayidx72 = getelementptr %struct.nvec_power, ptr %nb, i32 0, i32 18, i32 %sub71
  %72 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx72, align 1
  br label %cleanup

sw.bb73:                                          ; preds = %if.end
  %bat_type = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 19
  %73 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 4
  %length75 = getelementptr inbounds %struct.bat_response, ptr %data, i32 0, i32 1
  %74 = ptrtoint ptr %length75 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %length75, align 1
  %conv76 = zext i8 %75 to i32
  %sub77 = add nsw i32 %conv76, -2
  %76 = call ptr @memcpy(ptr %bat_type, ptr %73, i32 %sub77)
  %77 = load i8, ptr %length75, align 1
  %conv80 = zext i8 %77 to i32
  %sub81 = add nsw i32 %conv80, -2
  %arrayidx82 = getelementptr %struct.nvec_power, ptr %nb, i32 0, i32 19, i32 %sub81
  %78 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx82, align 1
  %call = tail call i32 @strncmp(ptr noundef %bat_type, ptr noundef nonnull dereferenceable(3) @.str.6, i32 noundef 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool85.not = icmp eq i32 %call, 0
  %bat_type_enum = getelementptr inbounds %struct.nvec_power, ptr %nb, i32 0, i32 16
  br i1 %tobool85.not, label %if.then86, label %if.else87

if.then86:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %bat_type_enum to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %bat_type_enum, align 4
  br label %cleanup

if.else87:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %bat_type_enum to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %bat_type_enum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else87, %if.then86, %sw.bb62, %sw.bb55, %sw.bb53, %sw.bb50, %sw.bb47, %sw.bb44, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb30, %if.then28, %if.end24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 32769, %if.end.cleanup_crit_edge ], [ 32769, %if.then86 ], [ 32769, %if.else87 ], [ 32769, %if.end24.cleanup_crit_edge ], [ 32769, %if.then28 ], [ 32769, %sw.bb62 ], [ 32769, %sw.bb55 ], [ 32769, %sw.bb53 ], [ 32769, %sw.bb50 ], [ 32769, %sw.bb47 ], [ 32769, %sw.bb44 ], [ 32769, %sw.bb41 ], [ 32769, %sw.bb38 ], [ 32769, %sw.bb35 ], [ 32769, %sw.bb32 ], [ 32769, %sw.bb30 ], [ 32769, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_bat_mfg_data(ptr nocapture noundef readonly %power) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 519, ptr %buf, align 2
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %nvec = getelementptr inbounds %struct.nvec_power, ptr %power, i32 0, i32 2
  %1 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nvec, align 4
  %call = call i32 @nvec_write_async(ptr noundef %2, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %arrayidx1, align 1
  %4 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvec, align 4
  %call.1 = call i32 @nvec_write_async(ptr noundef %5, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %arrayidx1, align 1
  %7 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nvec, align 4
  %call.2 = call i32 @nvec_write_async(ptr noundef %8, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 11, ptr %arrayidx1, align 1
  %10 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvec, align 4
  %call.3 = call i32 @nvec_write_async(ptr noundef %11, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %arrayidx1, align 1
  %13 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nvec, align 4
  %call.4 = call i32 @nvec_write_async(ptr noundef %14, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 13, ptr %arrayidx1, align 1
  %16 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvec, align 4
  %call.5 = call i32 @nvec_write_async(ptr noundef %17, ptr noundef nonnull %buf, i16 noundef signext 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvec_power_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %on = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %on, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_write_async(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvec_battery_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 47, label %sw.bb1
    i32 3, label %sw.bb2
    i32 12, label %sw.bb3
    i32 17, label %sw.bb4
    i32 18, label %sw.bb5
    i32 60, label %sw.bb6
    i32 22, label %sw.bb7
    i32 24, label %sw.bb8
    i32 25, label %sw.bb9
    i32 26, label %sw.bb10
    i32 52, label %sw.bb11
    i32 74, label %sw.bb12
    i32 73, label %sw.bb13
    i32 6, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_status = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %bat_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bat_status, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_cap = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %bat_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bat_cap, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_present = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %bat_present to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bat_present, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_voltage_now = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %bat_voltage_now to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bat_voltage_now, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_current_now = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %bat_current_now to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bat_current_now, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_current_avg = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %bat_current_avg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bat_current_avg, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %time_remain = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %time_remain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %time_remain, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %charge_full_design = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %charge_full_design to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %charge_full_design, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %charge_last_full = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %charge_last_full to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %charge_last_full, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %critical_capacity = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %critical_capacity to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %critical_capacity, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %capacity_remain = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 13
  %35 = ptrtoint ptr %capacity_remain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %capacity_remain, align 4
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_temperature = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 14
  %38 = ptrtoint ptr %bat_temperature to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bat_temperature, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_manu = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 17
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %bat_manu, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_model = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 18
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bat_model, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bat_type_enum = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 16
  %43 = ptrtoint ptr %bat_type_enum to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bat_type_enum, align 4
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_nvec_power__183_444_nvec_power_driver_init6, !1, !"__initcall__kmod_nvec_power__183_444_nvec_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/nvec/nvec_power.c", i32 444, i32 1}
!2 = !{ptr @__exitcall_nvec_power_driver_exit, !1, !"__exitcall_nvec_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/staging/nvec/nvec_power.c", i32 446, i32 1}
!5 = !{ptr @__UNIQUE_ID_file185, !6, !"__UNIQUE_ID_file185", i1 false, i1 false}
!6 = !{!"../drivers/staging/nvec/nvec_power.c", i32 447, i32 1}
!7 = !{ptr @__UNIQUE_ID_license186, !6, !"__UNIQUE_ID_license186", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description187, !9, !"__UNIQUE_ID_description187", i1 false, i1 false}
!9 = !{!"../drivers/staging/nvec/nvec_power.c", i32 448, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/staging/nvec/nvec_power.c", i32 449, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/nvec/nvec_power.c", i32 440, i32 14}
!14 = !{ptr @nvec_power_driver, !15, !"nvec_power_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/nvec/nvec_power.c", i32 436, i32 31}
!16 = !{ptr @nvec_power_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/staging/nvec/nvec_power.c", i32 396, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvec_power_probe.__key.2, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nvec_psy, !22, !"nvec_psy", i1 false, i1 false}
!22 = !{!"../drivers/staging/nvec/nvec_power.c", i32 82, i32 29}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/nvec/nvec_power.c", i32 333, i32 10}
!25 = !{ptr @nvec_psy_desc, !26, !"nvec_psy_desc", i1 false, i1 false}
!26 = !{!"../drivers/staging/nvec/nvec_power.c", i32 332, i32 39}
!27 = !{ptr @nvec_power_props, !28, !"nvec_power_props", i1 false, i1 false}
!28 = !{!"../drivers/staging/nvec/nvec_power.c", i32 296, i32 35}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/nvec/nvec_power.c", i32 321, i32 2}
!31 = !{ptr @nvec_power_supplied_to, !32, !"nvec_power_supplied_to", i1 false, i1 false}
!32 = !{!"../drivers/staging/nvec/nvec_power.c", i32 320, i32 14}
!33 = !{ptr @counter, !34, !"counter", i1 false, i1 false}
!34 = !{!"../drivers/staging/nvec/nvec_power.c", i32 340, i32 12}
!35 = !{ptr @bat_iter, !36, !"bat_iter", i1 false, i1 false}
!36 = !{!"../drivers/staging/nvec/nvec_power.c", i32 341, i32 18}
!37 = !{ptr @nvec_bat_psy, !38, !"nvec_bat_psy", i1 false, i1 false}
!38 = !{!"../drivers/staging/nvec/nvec_power.c", i32 81, i32 29}
!39 = !{ptr @nvec_bat_psy_desc, !40, !"nvec_bat_psy_desc", i1 false, i1 false}
!40 = !{!"../drivers/staging/nvec/nvec_power.c", i32 324, i32 39}
!41 = !{ptr @nvec_battery_props, !42, !"nvec_battery_props", i1 false, i1 false}
!42 = !{!"../drivers/staging/nvec/nvec_power.c", i32 300, i32 35}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/nvec/nvec_power.c", i32 210, i32 33}
!45 = distinct !{null, !46, !"bat_init", i1 false, i1 false}
!46 = !{!"../drivers/staging/nvec/nvec_power.c", i32 104, i32 18}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
