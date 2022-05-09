; ModuleID = '/llk/IR_all_yes/drivers/thermal/ti-soc-thermal/ti-thermal-common.c_pt.bc'
source_filename = "../drivers/thermal/ti-soc-thermal/ti-thermal-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ti_thermal_data = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.work_struct, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ti_bandgap = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, ptr, i32, %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ti_bandgap_data = type { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [0 x %struct.ti_temp_sensor] }
%struct.ti_temp_sensor = type { ptr, ptr, ptr, i32, i32, ptr, ptr }

@ti_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @__ti_thermal_get_temp, ptr @__ti_thermal_get_trend, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ti_thermal_expose_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"thermal zone device is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti_thermal_expose_sensor\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/thermal/ti-soc-thermal/ti-thermal-common.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_thermal_expose_sensor._entry_ptr = internal global ptr @ti_thermal_expose_sensor._entry, section ".printk_index", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"#thermal-sensor-cells\00", [42 x i8] zeroinitializer }, align 32
@ti_thermal_register_cpu_cooling.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_soc_thermal\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti_thermal_register_cpu_cooling\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: CPUFreq policy not found\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_thermal_register_cpu_cooling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to register cpu cooling device %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ti_thermal_register_cpu_cooling._entry_ptr = internal global ptr @ti_thermal_register_cpu_cooling._entry, section ".printk_index", align 4
@ti_thermal_build_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kzalloc fail\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_thermal_build_data\00", [42 x i8] zeroinitializer }, align 32
@ti_thermal_build_data._entry_ptr = internal global ptr @ti_thermal_build_data._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcb\00", [28 x i8] zeroinitializer }, align 32
@ti_thermal_build_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&data->thermal_wq)\00", [59 x i8] zeroinitializer }, align 32
@ti_thermal_work.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_thermal_work\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"updated thermal zone %s\0A\00", [39 x i8] zeroinitializer }, align 32
@__ti_thermal_get_temp._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read PCB state. Using defaults\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__ti_thermal_get_temp\00", [42 x i8] zeroinitializer }, align 32
@__ti_thermal_get_temp._entry_ptr = internal global ptr @__ti_thermal_get_temp._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"ti_of_thermal_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 140, i32 48 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 183, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 230, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 242, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 250, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 152, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 159, i32 47 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 160, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 45, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [54 x i8] c"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 99, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ti_thermal_get_temp._entry, ptr @__ti_thermal_get_temp._entry_ptr, ptr @ti_thermal_build_data._entry, ptr @ti_thermal_build_data._entry_ptr, ptr @ti_thermal_expose_sensor._entry, ptr @ti_thermal_expose_sensor._entry_ptr, ptr @ti_thermal_register_cpu_cooling._entry, ptr @ti_thermal_register_cpu_cooling._entry_ptr, ptr @ti_of_thermal_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ti_thermal_build_data.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_thermal_expose_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_thermal_register_cpu_cooling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_thermal_build_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_thermal_build_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_thermal_expose_sensor(ptr noundef %bgp, i32 noundef %id, ptr nocapture noundef readnone %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_bandgap_get_sensor_data(ptr noundef %bgp, i32 noundef %id) #6
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @ti_thermal_build_data(ptr noundef %bgp, i32 noundef %id)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %data.037 = phi ptr [ %call2, %if.end.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %0 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgp, align 4
  %call5 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %1, i32 noundef %id, ptr noundef nonnull %data.037, ptr noundef nonnull @ti_of_thermal_ops) #6
  %ti_thermal = getelementptr inbounds %struct.ti_thermal_data, ptr %data.037, i32 0, i32 1
  %2 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %ti_thermal, align 4
  %cmp.i34 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #9
  %5 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ti_thermal, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %polling_delay_jiffies = getelementptr inbounds %struct.thermal_zone_device, ptr %call5, i32 0, i32 12
  %8 = ptrtoint ptr %polling_delay_jiffies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %polling_delay_jiffies, align 4
  %call14 = tail call i32 @jiffies_to_msecs(i32 noundef %9) #6
  %call15 = tail call i32 @ti_bandgap_set_sensor_data(ptr noundef %bgp, i32 noundef %id, ptr noundef nonnull %data.037) #6
  %sensor_id = getelementptr inbounds %struct.ti_thermal_data, ptr %data.037, i32 0, i32 7
  %10 = ptrtoint ptr %sensor_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sensor_id, align 4
  %call16 = tail call i32 @ti_bandgap_write_update_interval(ptr noundef %bgp, i32 noundef %11, i32 noundef %call14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end12 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_bandgap_get_sensor_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ti_thermal_build_data(ptr noundef %bgp, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgp, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 76, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sensor_id = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %sensor_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %sensor_id, align 4
  %bgp2 = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %bgp2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bgp, ptr %bgp2, align 4
  %mode = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode, align 4
  %call3 = tail call ptr @thermal_zone_get_zone_by_name(ptr noundef nonnull @.str.12) #6
  %pcb_tz = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %pcb_tz to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %pcb_tz, align 4
  %thermal_wq = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %thermal_wq, i32 noundef 0) #6
  %8 = ptrtoint ptr %thermal_wq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %thermal_wq, align 4
  %lockdep_map = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @ti_thermal_build_data.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry9 = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ti_thermal_data, ptr %call.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ti_thermal_work, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_bandgap_set_sensor_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_bandgap_write_update_interval(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_thermal_remove_sensor(ptr noundef %bgp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_bandgap_get_sensor_data(ptr noundef %bgp, i32 noundef %id) #6
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %ti_thermal = getelementptr inbounds %struct.ti_thermal_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti_thermal, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %our_zone = getelementptr inbounds %struct.ti_thermal_data, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %our_zone to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %our_zone, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @thermal_zone_device_unregister(ptr noundef nonnull %1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_thermal_report_sensor_temperature(ptr noundef %bgp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_bandgap_get_sensor_data(ptr noundef %bgp, i32 noundef %id) #6
  %thermal_wq = getelementptr inbounds %struct.ti_thermal_data, ptr %call, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %thermal_wq) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_thermal_register_cpu_cooling(ptr noundef %bgp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgp, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ti_bandgap_get_sensor_data(ptr noundef %bgp, i32 noundef %id) #6
  %tobool2.not = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool2.not, %cmp.i
  br i1 %or.cond, label %if.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end6:                                          ; preds = %if.end
  %call5 = tail call fastcc ptr @ti_thermal_build_data(ptr noundef %bgp, i32 noundef %id)
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %data.056 = phi ptr [ %call5, %if.end6.if.end9_crit_edge ], [ %call1, %if.end.if.end9_crit_edge ]
  %call10 = tail call ptr @cpufreq_cpu_get(i32 noundef 0) #6
  %4 = ptrtoint ptr %data.056 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %data.056, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.body, label %if.end20

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_thermal_register_cpu_cooling.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_thermal_register_cpu_cooling, %if.then18)) #6
          to label %cleanup [label %if.then18], !srcloc !50

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ti_thermal_register_cpu_cooling.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %call22 = tail call ptr @cpufreq_cooling_register(ptr noundef nonnull %call10) #6
  %cool_dev = getelementptr inbounds %struct.ti_thermal_data, ptr %data.056, i32 0, i32 3
  %5 = ptrtoint ptr %cool_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %cool_dev, align 4
  %cmp.i53 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call22 to i32
  %7 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %6) #9
  %9 = ptrtoint ptr %data.056 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.056, align 4
  tail call void @cpufreq_cpu_put(ptr noundef %10) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 @ti_bandgap_set_sensor_data(ptr noundef %bgp, i32 noundef %id, ptr noundef nonnull %data.056) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then25, %if.then18, %do.body, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then25 ], [ 0, %if.end33 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -517, %if.then18 ], [ -517, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cooling_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_thermal_unregister_cpu_cooling(ptr noundef %bgp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_bandgap_get_sensor_data(ptr noundef %bgp, i32 noundef %id) #6
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %cool_dev = getelementptr inbounds %struct.ti_thermal_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %cool_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cool_dev, align 4
  tail call void @cpufreq_cooling_unregister(ptr noundef %1) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %3) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_thermal_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ti_thermal = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti_thermal, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_thermal_work.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_thermal_work, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti_thermal, align 4
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 2
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_thermal_work.__UNIQUE_ID_ddebug183, ptr noundef %device, ptr noundef nonnull @.str.15, ptr noundef %type) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ti_thermal_get_temp(ptr noundef readonly %devdata, ptr nocapture noundef writeonly %temp) #4 align 64 {
entry:
  %tmp = alloca i32, align 4
  %pcb_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcb_temp) #6
  %1 = ptrtoint ptr %pcb_temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pcb_temp, align 4, !annotation !51
  %tobool.not = icmp eq ptr %devdata, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bgp1 = getelementptr inbounds %struct.ti_thermal_data, ptr %devdata, i32 0, i32 4
  %2 = ptrtoint ptr %bgp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bgp1, align 4
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 4
  %sensor_id = getelementptr inbounds %struct.ti_thermal_data, ptr %devdata, i32 0, i32 7
  %6 = ptrtoint ptr %sensor_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_id, align 4
  %call = call i32 @ti_bandgap_read_temperature(ptr noundef %3, i32 noundef %7, ptr noundef nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ti_thermal = getelementptr inbounds %struct.ti_thermal_data, ptr %devdata, i32 0, i32 1
  %8 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ti_thermal, align 4
  %call6 = call i32 @thermal_zone_get_slope(ptr noundef %9) #6
  %10 = ptrtoint ptr %ti_thermal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ti_thermal, align 4
  %call8 = call i32 @thermal_zone_get_offset(ptr noundef %11) #6
  %pcb_tz9 = getelementptr inbounds %struct.ti_thermal_data, ptr %devdata, i32 0, i32 2
  %12 = ptrtoint ptr %pcb_tz9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcb_tz9, align 4
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.if.end16_crit_edge, label %if.then11

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %if.end5
  %call12 = call i32 @thermal_zone_get_temp(ptr noundef %13, ptr noundef nonnull %pcb_temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %do.end

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pcb_temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcb_temp, align 4
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp, align 4
  %sub = sub i32 %17, %15
  store i32 %sub, ptr %tmp, align 4
  %slope_pcb = getelementptr %struct.ti_bandgap_data, ptr %5, i32 0, i32 10, i32 %7, i32 3
  %18 = ptrtoint ptr %slope_pcb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slope_pcb, align 4
  %constant_pcb = getelementptr %struct.ti_bandgap_data, ptr %5, i32 0, i32 10, i32 %7, i32 4
  %20 = ptrtoint ptr %constant_pcb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %constant_pcb, align 4
  br label %if.end16

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.16) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then14, %if.end5.if.end16_crit_edge
  %slope.0 = phi i32 [ %call6, %if.end5.if.end16_crit_edge ], [ %call6, %do.end ], [ %19, %if.then14 ]
  %constant.0 = phi i32 [ %call8, %if.end5.if.end16_crit_edge ], [ %call8, %do.end ], [ %21, %if.then14 ]
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp, align 4
  %mul.i = mul i32 %25, %slope.0
  %div.i = sdiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %constant.0
  %26 = call i32 @llvm.smax.i32(i32 %add.i, i32 0) #6
  %add1.i = add i32 %26, %25
  %27 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add1.i, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcb_temp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ti_thermal_get_trend(ptr nocapture noundef readonly %p, i32 noundef %trip, ptr nocapture noundef writeonly %trend) #0 align 64 {
entry:
  %tr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tr) #6
  %0 = ptrtoint ptr %tr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tr, align 4, !annotation !51
  %bgp1 = getelementptr inbounds %struct.ti_thermal_data, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %bgp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bgp1, align 4
  %sensor_id = getelementptr inbounds %struct.ti_thermal_data, ptr %p, i32 0, i32 7
  %3 = ptrtoint ptr %sensor_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensor_id, align 4
  %call = call i32 @ti_bandgap_get_trend(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %tr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tr, align 4
  %7 = lshr i32 %6, 30
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.inv = icmp slt i32 %6, 1
  %.sink = select i1 %cmp.inv, i32 %8, i32 1
  %9 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %trend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tr) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_bandgap_read_temperature(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_slope(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_bandgap_get_trend(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 183, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ti_thermal_expose_sensor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ti_thermal_expose_sensor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 230, i32 27}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 242, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ti_thermal_register_cpu_cooling.__UNIQUE_ID_ddebug184, !11, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 250, i32 3}
!17 = !{ptr @ti_thermal_register_cpu_cooling._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ti_thermal_register_cpu_cooling._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 152, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ti_thermal_build_data._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ti_thermal_build_data._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 159, i32 47}
!26 = !{ptr @ti_thermal_build_data.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 160, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 45, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ti_thermal_work.__UNIQUE_ID_ddebug183, !30, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!33 = !{ptr @ti_of_thermal_ops, !34, !"ti_of_thermal_ops", i1 false, i1 false}
!34 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 140, i32 48}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/ti-soc-thermal/ti-thermal-common.c", i32 99, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__ti_thermal_get_temp._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @__ti_thermal_get_temp._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{i64 2148282012, i64 2148282017, i64 2148282030, i64 2148282074, i64 2148282108, i64 2148282129}
!51 = !{!"auto-init"}
