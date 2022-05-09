; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvbios_extdev_func = type { i8, i8, i8 }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.133, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.133 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"monitoring device\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@nv_board_infos = internal global { [21 x %struct.nvkm_i2c_bus_probe], [308 x i8] } { [21 x %struct.nvkm_i2c_bus_probe] [%struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"w83l785ts\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"w83781d\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 40 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 40 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 40 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"f75375\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 77, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 41, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 42, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 43, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 77, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm63\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm63\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe zeroinitializer], [308 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c:\00", [27 x i8] zeroinitializer }, align 32
@probe_monitoring_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 52, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: Found an %s at address 0x%x (controlled by lm_sensors, temp offset %+i C)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"probe_monitoring_device\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@probe_monitoring_device._entry_ptr = internal global ptr @probe_monitoring_device._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 97, i32 9 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 101, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 109, i32 9 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"nv_board_infos\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 58, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 37, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 49, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @probe_monitoring_device._entry, ptr @probe_monitoring_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nv_board_infos, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_board_infos to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_monitoring_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_therm_ic_ctor(ptr noundef %therm) local_unnamed_addr #0 align 64 {
entry:
  %extdev_entry = alloca %struct.nvbios_extdev_func, align 1
  %board = alloca [2 x %struct.nvkm_i2c_bus_probe], align 4
  %board18 = alloca [2 x %struct.nvkm_i2c_bus_probe], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  %i2c3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c3, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %extdev_entry) #4
  %6 = ptrtoint ptr %extdev_entry to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %extdev_entry, align 1, !annotation !28
  %7 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %extdev_entry, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !28
  %9 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %extdev_entry, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !28
  %call = tail call ptr @nvkm_i2c_bus_find(ptr noundef %5, i32 noundef -1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

if.end:                                           ; preds = %entry
  %call4 = call i32 @nvbios_extdev_find(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %extdev_entry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %board) #4
  %11 = getelementptr inbounds i8, ptr %board, i32 20
  %12 = call ptr @memset(ptr %11, i32 0, i32 100)
  %13 = call ptr @memcpy(ptr %board, ptr @.str, i32 20)
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board, i32 0, i32 2
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %16 = lshr i8 %15, 1
  %conv8 = zext i8 %16 to i16
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv8, ptr %addr, align 2
  %call10 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef nonnull %board, ptr noundef nonnull @probe_monitoring_device, ptr noundef %therm) #4
  %ic = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 12
  %18 = ptrtoint ptr %ic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ic, align 8
  %tobool11.not = icmp eq ptr %19, null
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %board) #4
  br i1 %tobool11.not, label %if.then6.if.end14_crit_edge, label %if.then6.cleanup44_crit_edge

if.then6.cleanup44_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = call i32 @nvbios_extdev_find(ptr noundef %3, i32 noundef 112, ptr noundef nonnull %extdev_entry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.if.end39_crit_edge

if.end14.if.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %board18) #4
  %20 = getelementptr inbounds i8, ptr %board18, i32 20
  %21 = call ptr @memset(ptr %20, i32 0, i32 100)
  %22 = call ptr @memcpy(ptr %board18, ptr @.str.2, i32 20)
  %addr22 = getelementptr inbounds %struct.i2c_board_info, ptr %board18, i32 0, i32 2
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 1
  %25 = lshr i8 %24, 1
  %conv26 = zext i8 %25 to i16
  %26 = ptrtoint ptr %addr22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv26, ptr %addr22, align 2
  %udelay = getelementptr inbounds %struct.nvkm_i2c_bus_probe, ptr %board18, i32 0, i32 1
  %27 = ptrtoint ptr %udelay to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 20, ptr %udelay, align 4
  %call31 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef nonnull %board18, ptr noundef nonnull @probe_monitoring_device, ptr noundef %therm) #4
  %ic32 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 12
  %28 = ptrtoint ptr %ic32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ic32, align 8
  %tobool33.not = icmp eq ptr %29, null
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %board18) #4
  br i1 %tobool33.not, label %if.then17.if.end39_crit_edge, label %if.then17.cleanup44_crit_edge

if.then17.cleanup44_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

if.then17.if.end39_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.end39:                                         ; preds = %if.then17.if.end39_crit_edge, %if.end14.if.end39_crit_edge
  %call40 = call zeroext i1 @nvbios_extdev_skip_probe(ptr noundef %3) #4
  br i1 %call40, label %if.end39.cleanup44_crit_edge, label %if.end42

if.end39.cleanup44_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

if.end42:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef nonnull @nv_board_infos, ptr noundef nonnull @probe_monitoring_device, ptr noundef %therm) #4
  br label %cleanup44

cleanup44:                                        ; preds = %if.end42, %if.end39.cleanup44_crit_edge, %if.then17.cleanup44_crit_edge, %if.then6.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %extdev_entry) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extdev_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @probe_monitoring_device(ptr noundef %bus, ptr noundef %info, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %info) #4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5
  %call1 = tail call ptr @i2c_new_client_device(ptr noundef %i2c, ptr noundef %info) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.i2c_client, ptr %call1, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %detect = getelementptr i8, ptr %1, i32 80
  %2 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %detect, align 4
  %call5 = tail call i32 %3(ptr noundef %call1, ptr noundef %info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @i2c_unregister_device(ptr noundef %call1) #4
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %data, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.if.end16_crit_edge

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %data, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev11 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 8
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %data, i32 0, i32 1, i32 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %conv = zext i16 %11 to i32
  %offset_constant = getelementptr inbounds %struct.nvkm_therm, ptr %data, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %offset_constant to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offset_constant, align 2
  %conv15 = sext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %info, i32 noundef %conv, i32 noundef %conv15) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge
  %ic = getelementptr inbounds %struct.nvkm_therm, ptr %data, i32 0, i32 12
  %14 = ptrtoint ptr %ic to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1, ptr %ic, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then7 ], [ true, %if.end16 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_extdev_skip_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c", i32 97, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c", i32 101, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c", i32 109, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c", i32 37, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c", i32 49, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @probe_monitoring_device._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @probe_monitoring_device._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nv_board_infos, !18, !"nv_board_infos", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c", i32 58, i32 1}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
