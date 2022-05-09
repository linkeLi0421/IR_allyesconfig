; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_iccsense = type { %struct.nvkm_subdev, i8, %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_iccsense_rail = type { %struct.list_head, ptr, ptr, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvbios_extdev_func = type { i8, i8, i8 }
%struct.nvbios_power_budget = type { i32, i8, i8, i8, i8, i8 }
%struct.nvbios_iccsense = type { i32, ptr }
%struct.nvbios_power_budget_entry = type { i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pwr_rail_t = type { i8, i8, i8, [3 x %struct.pwr_rail_resistor_t], i16 }
%struct.pwr_rail_resistor_t = type { i8, i8 }
%struct.nvkm_iccsense_sensor = type { %struct.list_head, i32, i32, ptr, i8, i16 }
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

@iccsense_func = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_iccsense_dtor, ptr null, ptr @nvkm_iccsense_oneinit, ptr null, ptr @nvkm_iccsense_init, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_iccsense_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: config mismatch found for extdev %i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_iccsense_oneinit\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_iccsense_oneinit._entry_ptr = internal global ptr @nvkm_iccsense_oneinit._entry, section ".printk_index", align 4
@nvkm_iccsense_oneinit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 290, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: create rail for extdev %i: { idx: %i, mohm: %i }\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_iccsense_oneinit._entry_ptr.8 = internal global ptr @nvkm_iccsense_oneinit._entry.5, section ".printk_index", align 4
@nvkm_iccsense_create_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Unknown sensor type %x, power reading disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvkm_iccsense_create_sensor\00", [36 x i8] zeroinitializer }, align 32
@nvkm_iccsense_create_sensor._entry_ptr = internal global ptr @nvkm_iccsense_create_sensor._entry, section ".printk_index", align 4
@nvkm_iccsense_create_sensor._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 187, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: found invalid sensor id: %i, power readingmight be invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nvkm_iccsense_create_sensor._entry_ptr.14 = internal global ptr @nvkm_iccsense_create_sensor._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_iccsense_sensor_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 104, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: write config of extdev %i: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvkm_iccsense_sensor_config\00", [36 x i8] zeroinitializer }, align 32
@nvkm_iccsense_sensor_config._entry_ptr = internal global ptr @nvkm_iccsense_sensor_config._entry, section ".printk_index", align 4
@switch.table.nvkm_iccsense_oneinit = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nvkm_iccsense_ina219_read, ptr @nvkm_iccsense_ina209_read, ptr @nvkm_iccsense_ina3221_read], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 76, i64 77, i64 78, i64 255]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 76, i64 77, i64 78]
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"iccsense_func\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 308, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 257, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 290, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 170, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 186, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 104, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [35 x i8] c"switch.table.nvkm_iccsense_oneinit\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @nvkm_iccsense_create_sensor._entry, ptr @nvkm_iccsense_create_sensor._entry.11, ptr @nvkm_iccsense_create_sensor._entry_ptr, ptr @nvkm_iccsense_create_sensor._entry_ptr.14, ptr @nvkm_iccsense_oneinit._entry, ptr @nvkm_iccsense_oneinit._entry.5, ptr @nvkm_iccsense_oneinit._entry_ptr, ptr @nvkm_iccsense_oneinit._entry_ptr.8, ptr @nvkm_iccsense_sensor_config._entry, ptr @nvkm_iccsense_sensor_config._entry_ptr, ptr @iccsense_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @switch.table.nvkm_iccsense_oneinit], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iccsense_func to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_iccsense_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_iccsense_oneinit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_iccsense_create_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_iccsense_create_sensor._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_iccsense_sensor_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_iccsense_oneinit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_iccsense_read_all(ptr noundef %iccsense) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iccsense, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.end

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

if.end:                                           ; preds = %entry
  %rails = getelementptr inbounds %struct.nvkm_iccsense, ptr %iccsense, i32 0, i32 3
  %0 = ptrtoint ptr %rails to i32
  call void @__asan_load4_noabort(i32 %0)
  %rail.029 = load ptr, ptr %rails, align 4
  %cmp.not30 = icmp eq ptr %rail.029, %rails
  br i1 %cmp.not30, label %if.end.cleanup14_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %rail.032 = phi ptr [ %rail.0, %cleanup.for.body_crit_edge ], [ %rail.029, %if.end.for.body_crit_edge ]
  %result.031 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %read = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail.032, i32 0, i32 1
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %for.body.cleanup14_crit_edge, label %if.end4

for.body.cleanup14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

if.end4:                                          ; preds = %for.body
  %call = tail call i32 %2(ptr noundef nonnull %iccsense, ptr noundef %rail.032) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end4.cleanup14_crit_edge, label %cleanup

if.end4.cleanup14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

cleanup:                                          ; preds = %if.end4
  %add = add i32 %call, %result.031
  %3 = ptrtoint ptr %rail.032 to i32
  call void @__asan_load4_noabort(i32 %3)
  %rail.0 = load ptr, ptr %rail.032, align 4
  %cmp.not = icmp eq ptr %rail.0, %rails
  br i1 %cmp.not, label %cleanup.cleanup14_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %if.end4.cleanup14_crit_edge, %for.body.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup14_crit_edge ], [ 0, %if.end.cleanup14_crit_edge ], [ %add, %cleanup.cleanup14_crit_edge ], [ -19, %for.body.cleanup14_crit_edge ], [ %call, %if.end4.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_iccsense_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %iccsense) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @iccsense_func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %iccsense) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_iccsense_new_(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef %iccsense) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #8
  %1 = ptrtoint ptr %iccsense to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %iccsense, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sensors = getelementptr inbounds %struct.nvkm_iccsense, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %sensors to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sensors, ptr %sensors, align 8
  %prev.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sensors, ptr %prev.i, align 4
  %rails = getelementptr inbounds %struct.nvkm_iccsense, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %rails to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %rails, ptr %rails, align 8
  %prev.i4 = getelementptr inbounds %struct.nvkm_iccsense, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rails, ptr %prev.i4, align 4
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @iccsense_func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_iccsense_dtor(ptr noundef readonly returned %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensors = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 2
  %0 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensors, align 4
  %cmp.not57 = icmp eq ptr %1, %sensors
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %sensor.058 = phi ptr [ %tmps.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %sensor.058 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmps.0 = load ptr, ptr %sensor.058, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sensor.058) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sensor.058, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %sensor.058 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sensor.058, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %sensor.058 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %sensor.058, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sensor.058, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %sensor.058) #5
  %cmp.not = icmp eq ptr %tmps.0, %sensors
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rails = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 3
  %11 = ptrtoint ptr %rails to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rails, align 4
  %cmp28.not60 = icmp eq ptr %12, %rails
  br i1 %cmp28.not60, label %for.end.for.end38_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.body30:                                       ; preds = %list_del.exit56.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %rail.061 = phi ptr [ %tmpr.0, %list_del.exit56.for.body30_crit_edge ], [ %12, %for.end.for.body30_crit_edge ]
  %13 = ptrtoint ptr %rail.061 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmpr.0 = load ptr, ptr %rail.061, align 4
  %call.i.i51 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rail.061) #5
  br i1 %call.i.i51, label %if.end.i.i54, label %for.body30.list_del.exit56_crit_edge

for.body30.list_del.exit56_crit_edge:             ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit56

if.end.i.i54:                                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i52 = getelementptr inbounds %struct.list_head, ptr %rail.061, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i52, align 4
  %16 = ptrtoint ptr %rail.061 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rail.061, align 4
  %prev1.i.i.i53 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i53, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit56

list_del.exit56:                                  ; preds = %if.end.i.i54, %for.body30.list_del.exit56_crit_edge
  %20 = ptrtoint ptr %rail.061 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %rail.061, align 4
  %prev.i55 = getelementptr inbounds %struct.list_head, ptr %rail.061, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i55, align 4
  tail call void @kfree(ptr noundef %rail.061) #5
  %cmp28.not = icmp eq ptr %tmpr.0, %rails
  br i1 %cmp28.not, label %list_del.exit56.for.end38_crit_edge, label %list_del.exit56.for.body30_crit_edge

list_del.exit56.for.body30_crit_edge:             ; preds = %list_del.exit56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

list_del.exit56.for.end38_crit_edge:              ; preds = %list_del.exit56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.end38:                                        ; preds = %list_del.exit56.for.end38_crit_edge, %for.end.for.end38_crit_edge
  ret ptr %subdev
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  %reg.addr.i30.i.i.i = alloca i8, align 1
  %val.i31.i.i.i = alloca [2 x i8], align 1
  %msgs.i32.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i10.i.i.i = alloca i8, align 1
  %val.i11.i.i.i = alloca [2 x i8], align 1
  %msgs.i12.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i.i.i = alloca i8, align 1
  %val.i.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %extdev.i.i = alloca %struct.nvbios_extdev_func, align 1
  %budget = alloca %struct.nvbios_power_budget, align 4
  %stbl = alloca %struct.nvbios_iccsense, align 4
  %entry5 = alloca %struct.nvbios_power_budget_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %budget) #5
  %4 = call ptr @memset(ptr %budget, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stbl) #5
  %5 = ptrtoint ptr %stbl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %stbl, align 4, !annotation !39
  %6 = getelementptr inbounds %struct.nvbios_iccsense, ptr %stbl, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !39
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup108_crit_edge, label %if.end

entry.cleanup108_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup108

if.end:                                           ; preds = %entry
  %call = call i32 @nvbios_power_budget_header(ptr noundef nonnull %3, ptr noundef nonnull %budget) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %cap_entry = getelementptr inbounds %struct.nvbios_power_budget, ptr %budget, i32 0, i32 5
  %8 = ptrtoint ptr %cap_entry to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cap_entry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp.not = icmp eq i8 %9, -1
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %if.then4

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %entry5) #5
  %10 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %entry5, align 4, !annotation !39
  %11 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %entry5, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !39
  %13 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %entry5, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !39
  %call7 = call i32 @nvbios_power_budget_entry(ptr noundef nonnull %3, ptr noundef nonnull %budget, i8 noundef zeroext %9, ptr noundef nonnull %entry5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 4
  %power_w_max = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 4
  %17 = ptrtoint ptr %power_w_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %power_w_max, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 4
  %power_w_crit = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 5
  %20 = ptrtoint ptr %power_w_crit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %power_w_crit, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then4.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %entry5) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = call i32 @nvbios_iccsense_parse(ptr noundef nonnull %3, ptr noundef nonnull %stbl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end11.cleanup108_crit_edge

if.end11.cleanup108_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup108

lor.lhs.false:                                    ; preds = %if.end11
  %21 = ptrtoint ptr %stbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stbl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %lor.lhs.false.cleanup108_crit_edge, label %if.end16

lor.lhs.false.cleanup108_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup108

if.end16:                                         ; preds = %lor.lhs.false
  %data_valid = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 1
  %23 = ptrtoint ptr %data_valid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %data_valid, align 4
  %24 = ptrtoint ptr %stbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stbl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp18169 = icmp sgt i32 %25, 0
  br i1 %cmp18169, label %for.body.lr.ph, label %if.end16.cleanup108_crit_edge

if.end16.cleanup108_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup108

for.body.lr.ph:                                   ; preds = %if.end16
  %sensors.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 2
  %26 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %extdev.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %extdev.i.i, i32 0, i32 2
  %28 = getelementptr inbounds [2 x i8], ptr %val.i11.i.i.i, i32 0, i32 1
  %29 = getelementptr inbounds i8, ptr %msgs.i12.i.i.i, i32 4
  %flags.i14.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i.i, i32 0, i32 1
  %buf.i16.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i.i, i32 0, i32 3
  %arrayinit.element.i17.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i.i, i32 1
  %flags4.i18.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i.i, i32 1, i32 1
  %len5.i19.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i.i, i32 1, i32 2
  %buf6.i20.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i.i, i32 1, i32 3
  %30 = getelementptr inbounds [2 x i8], ptr %val.i31.i.i.i, i32 0, i32 1
  %31 = getelementptr inbounds i8, ptr %msgs.i32.i.i.i, i32 4
  %flags.i34.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i32.i.i.i, i32 0, i32 1
  %buf.i36.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i32.i.i.i, i32 0, i32 3
  %arrayinit.element.i37.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i32.i.i.i, i32 1
  %flags4.i38.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i32.i.i.i, i32 1, i32 1
  %len5.i39.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i32.i.i.i, i32 1, i32 2
  %buf6.i40.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i32.i.i.i, i32 1, i32 3
  %32 = getelementptr inbounds [2 x i8], ptr %val.i.i.i.i, i32 0, i32 1
  %33 = getelementptr inbounds i8, ptr %msgs.i.i.i.i, i32 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 1
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1
  %flags4.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 1
  %len5.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 2
  %buf6.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 2, i32 1
  %debug56.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %name65.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %rails = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc105.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc106, %for.inc105.for.body_crit_edge ]
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr %struct.pwr_rail_t, ptr %35, i32 %i.0170
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp21.not = icmp eq i8 %37, 1
  br i1 %cmp21.not, label %lor.lhs.false23, label %for.body.for.inc105_crit_edge

for.body.for.inc105_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc105

lor.lhs.false23:                                  ; preds = %for.body
  %resistor_count = getelementptr %struct.pwr_rail_t, ptr %35, i32 %i.0170, i32 2
  %38 = ptrtoint ptr %resistor_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %resistor_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not = icmp eq i8 %39, 0
  br i1 %tobool24.not, label %lor.lhs.false23.for.inc105_crit_edge, label %if.end26

lor.lhs.false23.for.inc105_crit_edge:             ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc105

if.end26:                                         ; preds = %lor.lhs.false23
  %extdev_id = getelementptr %struct.pwr_rail_t, ptr %35, i32 %i.0170, i32 1
  %40 = ptrtoint ptr %extdev_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %extdev_id, align 1
  %conv.i = zext i8 %41 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end26
  %sensor.0.in.i = phi ptr [ %sensors.i, %if.end26 ], [ %sensor.0.i, %for.body.i.for.cond.i_crit_edge ]
  %42 = ptrtoint ptr %sensor.0.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %sensor.0.i = load ptr, ptr %sensor.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %sensor.0.i, %sensors.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id2.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %sensor.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id2.i, align 4
  %cmp3.i = icmp eq i32 %44, %conv.i
  br i1 %cmp3.i, label %for.body.i.nvkm_iccsense_get_sensor.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.nvkm_iccsense_get_sensor.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_get_sensor.exit

for.end.i:                                        ; preds = %for.cond.i
  %45 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device, align 4
  %bios2.i.i = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 21
  %47 = ptrtoint ptr %bios2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bios2.i.i, align 8
  %i2c4.i.i = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 26
  %49 = ptrtoint ptr %i2c4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c4.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %extdev.i.i) #5
  %51 = ptrtoint ptr %extdev.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %extdev.i.i, align 1, !annotation !39
  %52 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %26, align 1, !annotation !39
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %27, align 1, !annotation !39
  %tobool.not.i.i = icmp eq ptr %50, null
  %tobool5.not.i.i = icmp eq ptr %48, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool5.not.i.i
  br i1 %or.cond.i.i, label %for.end.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, label %lor.lhs.false6.i.i

for.end.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

lor.lhs.false6.i.i:                               ; preds = %for.end.i
  %call.i.i = call i32 @nvbios_extdev_parse(ptr noundef nonnull %48, i32 noundef %conv.i, ptr noundef nonnull %extdev.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i, label %lor.lhs.false6.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge

lor.lhs.false6.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false6.i.i
  %54 = ptrtoint ptr %extdev.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %extdev.i.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i8 %55, label %if.then25.i.i [
    i8 -1, label %if.end.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge
    i8 77, label %if.end.i.i.if.end36.i.i_crit_edge
    i8 76, label %if.end.i.i.if.end36.i.i_crit_edge183
    i8 78, label %if.end.i.i.if.end36.i.i_crit_edge184
  ]

if.end.i.i.if.end36.i.i_crit_edge184:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i.i

if.end.i.i.if.end36.i.i_crit_edge183:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i.i

if.end.i.i.if.end36.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i.i

if.end.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

if.then25.i.i:                                    ; preds = %if.end.i.i
  %57 = ptrtoint ptr %data_valid to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %data_valid, align 4
  %58 = ptrtoint ptr %debug56.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug56.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp26.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp26.not.i.i, label %if.then25.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, label %do.end.i.i

if.then25.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

do.end.i.i:                                       ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i, align 8
  %conv32.i.i = zext i8 %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.9, ptr noundef %name65.i.i, i32 noundef %conv32.i.i) #9
  br label %nvkm_iccsense_create_sensor.exit.i

if.end36.i.i:                                     ; preds = %if.end.i.i.if.end36.i.i_crit_edge, %if.end.i.i.if.end36.i.i_crit_edge183, %if.end.i.i.if.end36.i.i_crit_edge184
  %64 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool37.not.i.i = icmp eq i8 %65, 0
  %..i.i = select i1 %tobool37.not.i.i, i32 -1, i32 -2
  %call40.i.i = call ptr @nvkm_i2c_bus_find(ptr noundef nonnull %50, i32 noundef %..i.i) #5
  %tobool42.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool42.not.i.i, label %if.end36.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, label %if.end44.i.i

if.end36.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

if.end44.i.i:                                     ; preds = %if.end36.i.i
  %66 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %26, align 1
  %68 = lshr i8 %67, 1
  %i2c48.i.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call40.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %extdev.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %extdev.i.i, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %70, label %if.end44.i.i.if.then52.i.i_crit_edge [
    i8 77, label %if.end44.i.i.sw.bb.i.i.i_crit_edge
    i8 76, label %if.end44.i.i.sw.bb.i.i.i_crit_edge185
    i8 78, label %sw.bb1.i.i.i
  ]

if.end44.i.i.sw.bb.i.i.i_crit_edge185:            ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i.i

if.end44.i.i.sw.bb.i.i.i_crit_edge:               ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i.i

if.end44.i.i.if.then52.i.i_crit_edge:             ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52.i.i

sw.bb.i.i.i:                                      ; preds = %if.end44.i.i.sw.bb.i.i.i_crit_edge, %if.end44.i.i.sw.bb.i.i.i_crit_edge185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i.i) #5
  %72 = ptrtoint ptr %reg.addr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %reg.addr.i.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i.i) #5
  %73 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %val.i.i.i.i, align 1, !annotation !39
  %74 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %32, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #5
  %75 = call ptr @memset(ptr %33, i32 255, i32 16)
  %conv.i.i.i.i = zext i8 %68 to i16
  %76 = ptrtoint ptr %msgs.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i.i.i.i, ptr %msgs.i.i.i.i, align 4
  %77 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %78 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %33, align 4
  %79 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %reg.addr.i.i.i.i, ptr %buf.i.i.i.i, align 4
  %80 = ptrtoint ptr %arrayinit.element.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i.i.i.i, ptr %arrayinit.element.i.i.i.i, align 4
  %81 = ptrtoint ptr %flags4.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %flags4.i.i.i.i, align 2
  %82 = ptrtoint ptr %len5.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 2, ptr %len5.i.i.i.i, align 4
  %83 = ptrtoint ptr %buf6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %val.i.i.i.i, ptr %buf6.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %i2c48.i.i, ptr noundef nonnull %msgs.i.i.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i.i) #5
  br i1 %cmp.not.i.i.i.i, label %sw.bb.i.i.i.if.end71.i.i_crit_edge, label %sw.bb.i.i.i.if.then52.i.i_crit_edge

sw.bb.i.i.i.if.then52.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52.i.i

sw.bb.i.i.i.if.end71.i.i_crit_edge:               ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end44.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i10.i.i.i) #5
  %84 = ptrtoint ptr %reg.addr.i10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -1, ptr %reg.addr.i10.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i11.i.i.i) #5
  %85 = ptrtoint ptr %val.i11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %val.i11.i.i.i, align 1, !annotation !39
  %86 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %28, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i12.i.i.i) #5
  %87 = call ptr @memset(ptr %29, i32 255, i32 16)
  %conv.i13.i.i.i = zext i8 %68 to i16
  %88 = ptrtoint ptr %msgs.i12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i13.i.i.i, ptr %msgs.i12.i.i.i, align 4
  %89 = ptrtoint ptr %flags.i14.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i14.i.i.i, align 2
  %90 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %29, align 4
  %91 = ptrtoint ptr %buf.i16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %reg.addr.i10.i.i.i, ptr %buf.i16.i.i.i, align 4
  %92 = ptrtoint ptr %arrayinit.element.i17.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i13.i.i.i, ptr %arrayinit.element.i17.i.i.i, align 4
  %93 = ptrtoint ptr %flags4.i18.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %flags4.i18.i.i.i, align 2
  %94 = ptrtoint ptr %len5.i19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 2, ptr %len5.i19.i.i.i, align 4
  %95 = ptrtoint ptr %buf6.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %val.i11.i.i.i, ptr %buf6.i20.i.i.i, align 4
  %call.i21.i.i.i = call i32 @i2c_transfer(ptr noundef %i2c48.i.i, ptr noundef nonnull %msgs.i12.i.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i21.i.i.i)
  %cmp.not.i22.i.i.i = icmp eq i32 %call.i21.i.i.i, 2
  br i1 %cmp.not.i22.i.i.i, label %nv_rd16i2cr.exit29.i.i.i, label %nv_rd16i2cr.exit29.thread.i.i.i

nv_rd16i2cr.exit29.thread.i.i.i:                  ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i12.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i11.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i10.i.i.i) #5
  br label %if.then52.i.i

nv_rd16i2cr.exit29.i.i.i:                         ; preds = %sw.bb1.i.i.i
  %96 = ptrtoint ptr %val.i11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val.i11.i.i.i, align 1
  %conv9.i23.i.i.i = zext i8 %97 to i32
  %shl.i24.i.i.i = shl nuw nsw i32 %conv9.i23.i.i.i, 8
  %98 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %28, align 1
  %conv11.i25.i.i.i = zext i8 %99 to i32
  %or.i26.i.i.i = or i32 %shl.i24.i.i.i, %conv11.i25.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i12.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i11.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i10.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12832, i32 %or.i26.i.i.i)
  %cmp3.i.i.i = icmp eq i32 %or.i26.i.i.i, 12832
  br i1 %cmp3.i.i.i, label %land.rhs.i.i.i, label %nv_rd16i2cr.exit29.i.i.i.if.then52.i.i_crit_edge

nv_rd16i2cr.exit29.i.i.i.if.then52.i.i_crit_edge: ; preds = %nv_rd16i2cr.exit29.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52.i.i

land.rhs.i.i.i:                                   ; preds = %nv_rd16i2cr.exit29.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i30.i.i.i) #5
  %100 = ptrtoint ptr %reg.addr.i30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -2, ptr %reg.addr.i30.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i31.i.i.i) #5
  %101 = ptrtoint ptr %val.i31.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %val.i31.i.i.i, align 1, !annotation !39
  %102 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %30, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i32.i.i.i) #5
  %103 = call ptr @memset(ptr %31, i32 255, i32 16)
  %104 = ptrtoint ptr %msgs.i32.i.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i13.i.i.i, ptr %msgs.i32.i.i.i, align 4
  %105 = ptrtoint ptr %flags.i34.i.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i34.i.i.i, align 2
  %106 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %31, align 4
  %107 = ptrtoint ptr %buf.i36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %reg.addr.i30.i.i.i, ptr %buf.i36.i.i.i, align 4
  %108 = ptrtoint ptr %arrayinit.element.i37.i.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i13.i.i.i, ptr %arrayinit.element.i37.i.i.i, align 4
  %109 = ptrtoint ptr %flags4.i38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %flags4.i38.i.i.i, align 2
  %110 = ptrtoint ptr %len5.i39.i.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 2, ptr %len5.i39.i.i.i, align 4
  %111 = ptrtoint ptr %buf6.i40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %val.i31.i.i.i, ptr %buf6.i40.i.i.i, align 4
  %call.i41.i.i.i = call i32 @i2c_transfer(ptr noundef %i2c48.i.i, ptr noundef nonnull %msgs.i32.i.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i41.i.i.i)
  %cmp.not.i42.i.i.i = icmp eq i32 %call.i41.i.i.i, 2
  br i1 %cmp.not.i42.i.i.i, label %nvkm_iccsense_validate_device.exit.i.i, label %nvkm_iccsense_validate_device.exit.thread118.i.i

nvkm_iccsense_validate_device.exit.thread118.i.i: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i32.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i31.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i30.i.i.i) #5
  br label %if.then52.i.i

nvkm_iccsense_validate_device.exit.i.i:           ; preds = %land.rhs.i.i.i
  %112 = ptrtoint ptr %val.i31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %val.i31.i.i.i, align 1
  %conv9.i43.i.i.i = zext i8 %113 to i32
  %shl.i44.i.i.i = shl nuw nsw i32 %conv9.i43.i.i.i, 8
  %114 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %30, align 1
  %conv11.i45.i.i.i = zext i8 %115 to i32
  %or.i46.i.i.i = or i32 %shl.i44.i.i.i, %conv11.i45.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21577, i32 %or.i46.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %or.i46.i.i.i, 21577
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i32.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i31.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i30.i.i.i) #5
  br i1 %phi.cmp.i.i.i, label %nvkm_iccsense_validate_device.exit.i.i.if.end71.i.i_crit_edge, label %nvkm_iccsense_validate_device.exit.i.i.if.then52.i.i_crit_edge

nvkm_iccsense_validate_device.exit.i.i.if.then52.i.i_crit_edge: ; preds = %nvkm_iccsense_validate_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52.i.i

nvkm_iccsense_validate_device.exit.i.i.if.end71.i.i_crit_edge: ; preds = %nvkm_iccsense_validate_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i.i

if.then52.i.i:                                    ; preds = %nvkm_iccsense_validate_device.exit.i.i.if.then52.i.i_crit_edge, %nvkm_iccsense_validate_device.exit.thread118.i.i, %nv_rd16i2cr.exit29.i.i.i.if.then52.i.i_crit_edge, %nv_rd16i2cr.exit29.thread.i.i.i, %sw.bb.i.i.i.if.then52.i.i_crit_edge, %if.end44.i.i.if.then52.i.i_crit_edge
  %116 = ptrtoint ptr %data_valid to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %data_valid, align 4
  %117 = ptrtoint ptr %debug56.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug56.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp57.i.i = icmp ugt i32 %118, 1
  br i1 %cmp57.i.i, label %do.end62.i.i, label %if.then52.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge

if.then52.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

do.end62.i.i:                                     ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device, align 4
  %dev64.i.i = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %dev64.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev64.i.i, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %122, ptr noundef nonnull @.str.12, ptr noundef %name65.i.i, i32 noundef %conv.i) #9
  br label %nvkm_iccsense_create_sensor.exit.i

if.end71.i.i:                                     ; preds = %nvkm_iccsense_validate_device.exit.i.i.if.end71.i.i_crit_edge, %sw.bb.i.i.i.if.end71.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3264, i32 noundef 24) #8
  %tobool73.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool73.not.i.i, label %if.end71.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, label %if.end75.i.i

if.end71.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge: ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_create_sensor.exit.i

if.end75.i.i:                                     ; preds = %if.end71.i.i
  %124 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i116.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %125, ptr noundef %sensors.i) #5
  br i1 %call.i.i116.i.i, label %if.end.i.i.i.i, label %if.end75.i.i.list_add_tail.exit.i.i_crit_edge

if.end75.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %127 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %sensors.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %call7.i.i.i, ptr %125, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end75.i.i.list_add_tail.exit.i.i_crit_edge
  %id77.i.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %call7.i.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %id77.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv.i, ptr %id77.i.i, align 8
  %131 = ptrtoint ptr %extdev.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %extdev.i.i, align 1
  %conv79.i.i = zext i8 %132 to i32
  %type80.i.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %call7.i.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %type80.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv79.i.i, ptr %type80.i.i, align 4
  %i2c82.i.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %call7.i.i.i, i32 0, i32 3
  %134 = ptrtoint ptr %i2c82.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %i2c48.i.i, ptr %i2c82.i.i, align 8
  %addr83.i.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %call7.i.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %addr83.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %68, ptr %addr83.i.i, align 4
  %config.i.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %call7.i.i.i, i32 0, i32 5
  %136 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %config.i.i, align 2
  br label %nvkm_iccsense_create_sensor.exit.i

nvkm_iccsense_create_sensor.exit.i:               ; preds = %list_add_tail.exit.i.i, %if.end71.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, %do.end62.i.i, %if.then52.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, %if.end36.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, %do.end.i.i, %if.then25.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, %if.end.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, %lor.lhs.false6.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge, %for.end.i.nvkm_iccsense_create_sensor.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i, %list_add_tail.exit.i.i ], [ null, %lor.lhs.false6.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ], [ null, %for.end.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ], [ null, %if.end.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ], [ null, %do.end.i.i ], [ null, %if.then25.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ], [ null, %if.end36.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ], [ null, %do.end62.i.i ], [ null, %if.then52.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ], [ null, %if.end71.i.i.nvkm_iccsense_create_sensor.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %extdev.i.i) #5
  br label %nvkm_iccsense_get_sensor.exit

nvkm_iccsense_get_sensor.exit:                    ; preds = %nvkm_iccsense_create_sensor.exit.i, %for.body.i.nvkm_iccsense_get_sensor.exit_crit_edge
  %retval.0.i = phi ptr [ %retval.0.i.i, %nvkm_iccsense_create_sensor.exit.i ], [ %sensor.0.i, %for.body.i.nvkm_iccsense_get_sensor.exit_crit_edge ]
  %tobool28.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool28.not, label %nvkm_iccsense_get_sensor.exit.for.inc105_crit_edge, label %if.end30

nvkm_iccsense_get_sensor.exit.for.inc105_crit_edge: ; preds = %nvkm_iccsense_get_sensor.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc105

if.end30:                                         ; preds = %nvkm_iccsense_get_sensor.exit
  %config = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %retval.0.i, i32 0, i32 5
  %137 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %config, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool31.not = icmp eq i16 %138, 0
  %config33 = getelementptr %struct.pwr_rail_t, ptr %35, i32 %i.0170, i32 4
  %139 = ptrtoint ptr %config33 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %config33, align 2
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %config, align 2
  br label %if.end53

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %140)
  %cmp39.not = icmp eq i16 %138, %140
  br i1 %cmp39.not, label %if.else.if.end53_crit_edge, label %do.body

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.body:                                          ; preds = %if.else
  %142 = ptrtoint ptr %debug56.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %debug56.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp42.not = icmp eq i32 %143, 0
  br i1 %cmp42.not, label %do.body.if.end53_crit_edge, label %do.end

do.body.if.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 8
  %148 = ptrtoint ptr %extdev_id to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %extdev_id, align 1
  %conv48 = zext i8 %149 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str, ptr noundef %name65.i.i, i32 noundef %conv48) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.then32
  %150 = ptrtoint ptr %resistor_count to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %resistor_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp57165.not = icmp eq i8 %151, 0
  br i1 %cmp57165.not, label %if.end53.for.inc105_crit_edge, label %for.body59.lr.ph

if.end53.for.inc105_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc105

for.body59.lr.ph:                                 ; preds = %if.end53
  %type = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %retval.0.i, i32 0, i32 2
  br label %for.body59

for.body59:                                       ; preds = %for.inc.for.body59_crit_edge, %for.body59.lr.ph
  %r.0166 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc, %for.inc.for.body59_crit_edge ]
  %arrayidx61 = getelementptr %struct.pwr_rail_t, ptr %35, i32 %i.0170, i32 3, i32 %r.0166
  %152 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool62.not = icmp eq i8 %153, 0
  br i1 %tobool62.not, label %for.body59.for.inc_crit_edge, label %lor.lhs.false63

for.body59.for.inc_crit_edge:                     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false63:                                  ; preds = %for.body59
  %enabled = getelementptr %struct.pwr_rail_t, ptr %35, i32 %i.0170, i32 3, i32 %r.0166, i32 1
  %154 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %enabled, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool64.not = icmp eq i8 %155, 0
  br i1 %tobool64.not, label %lor.lhs.false63.for.inc_crit_edge, label %if.end66

lor.lhs.false63.for.inc_crit_edge:                ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end66:                                         ; preds = %lor.lhs.false63
  %156 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %157, -76
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %158 = icmp ult i32 %switch.tableidx, 3
  br i1 %158, label %switch.lookup, label %if.end66.for.inc_crit_edge

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

switch.lookup:                                    ; preds = %if.end66
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.nvkm_iccsense_oneinit, i32 0, i32 %switch.tableidx
  %159 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %159)
  %switch.load = load ptr, ptr %switch.gep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %160 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %160, i32 noundef 3264, i32 noundef 20) #8
  %tobool70.not = icmp eq ptr %call7.i, null
  br i1 %tobool70.not, label %switch.lookup.cleanup108_crit_edge, label %if.end72

switch.lookup.cleanup108_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup108

if.end72:                                         ; preds = %switch.lookup
  %read73 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %call7.i, i32 0, i32 1
  %161 = ptrtoint ptr %read73 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %switch.load, ptr %read73, align 8
  %sensor74 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %call7.i, i32 0, i32 2
  %162 = ptrtoint ptr %sensor74 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %retval.0.i, ptr %sensor74, align 4
  %conv75 = trunc i32 %r.0166 to i8
  %idx = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %call7.i, i32 0, i32 3
  %163 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv75, ptr %idx, align 8
  %164 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx61, align 1
  %mohm77 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %call7.i, i32 0, i32 4
  %166 = ptrtoint ptr %mohm77 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %mohm77, align 1
  %167 = ptrtoint ptr %debug56.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %debug56.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %168)
  %cmp81 = icmp ugt i32 %168, 3
  br i1 %cmp81, label %do.end86, label %if.end72.if.end95_crit_edge

if.end72.if.end95_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end86:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %169 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev88, align 8
  %173 = ptrtoint ptr %extdev_id to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %extdev_id, align 1
  %conv92 = zext i8 %174 to i32
  %conv94 = zext i8 %165 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %172, ptr noundef nonnull @.str.6, ptr noundef %name65.i.i, i32 noundef %conv92, i32 noundef %r.0166, i32 noundef %conv94) #9
  br label %if.end95

if.end95:                                         ; preds = %do.end86, %if.end72.if.end95_crit_edge
  %175 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i, align 4
  %call.i.i158 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %176, ptr noundef %rails) #5
  br i1 %call.i.i158, label %if.end.i.i159, label %if.end95.for.inc_crit_edge

if.end95.for.inc_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i.i159:                                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %177 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call7.i, ptr %prev.i, align 4
  %178 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %rails, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %179 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev3.i.i, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %call7.i, ptr %176, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i159, %if.end95.for.inc_crit_edge, %if.end66.for.inc_crit_edge, %lor.lhs.false63.for.inc_crit_edge, %for.body59.for.inc_crit_edge
  %inc = add nuw nsw i32 %r.0166, 1
  %181 = ptrtoint ptr %resistor_count to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %resistor_count, align 2
  %conv56 = zext i8 %182 to i32
  %cmp57 = icmp ult i32 %inc, %conv56
  br i1 %cmp57, label %for.inc.for.body59_crit_edge, label %for.inc.for.inc105_crit_edge

for.inc.for.inc105_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc105

for.inc.for.body59_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body59

for.inc105:                                       ; preds = %for.inc.for.inc105_crit_edge, %if.end53.for.inc105_crit_edge, %nvkm_iccsense_get_sensor.exit.for.inc105_crit_edge, %lor.lhs.false23.for.inc105_crit_edge, %for.body.for.inc105_crit_edge
  %inc106 = add nuw nsw i32 %i.0170, 1
  %183 = ptrtoint ptr %stbl to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %stbl, align 4
  %cmp18 = icmp slt i32 %inc106, %184
  br i1 %cmp18, label %for.inc105.for.body_crit_edge, label %for.inc105.cleanup108_crit_edge

for.inc105.cleanup108_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup108

for.inc105.for.body_crit_edge:                    ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup108:                                       ; preds = %for.inc105.cleanup108_crit_edge, %switch.lookup.cleanup108_crit_edge, %if.end16.cleanup108_crit_edge, %lor.lhs.false.cleanup108_crit_edge, %if.end11.cleanup108_crit_edge, %entry.cleanup108_crit_edge
  %retval.4 = phi i32 [ 0, %entry.cleanup108_crit_edge ], [ 0, %lor.lhs.false.cleanup108_crit_edge ], [ 0, %if.end11.cleanup108_crit_edge ], [ 0, %if.end16.cleanup108_crit_edge ], [ -12, %switch.lookup.cleanup108_crit_edge ], [ 0, %for.inc105.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stbl) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %budget) #5
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_init(ptr noundef %subdev) #0 align 64 {
entry:
  %buf.i.i = alloca [3 x i8], align 1
  %msgs.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensors = getelementptr inbounds %struct.nvkm_iccsense, ptr %subdev, i32 0, i32 2
  %0 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %0)
  %sensor.014 = load ptr, ptr %sensors, align 4
  %cmp.not15 = icmp eq ptr %sensor.014, %sensors
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %1 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %nvkm_iccsense_sensor_config.exit.for.body_crit_edge, %for.body.lr.ph
  %sensor.016 = phi ptr [ %sensor.014, %for.body.lr.ph ], [ %sensor.0, %nvkm_iccsense_sensor_config.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %for.body.nvkm_iccsense_sensor_config.exit_crit_edge

for.body.nvkm_iccsense_sensor_config.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_iccsense_sensor_config.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %id.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %sensor.016, i32 0, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %config.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %sensor.016, i32 0, i32 5
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %config.i, align 2
  %conv.i = zext i16 %13 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %11, i32 noundef %conv.i) #9
  br label %nvkm_iccsense_sensor_config.exit

nvkm_iccsense_sensor_config.exit:                 ; preds = %do.end.i, %for.body.nvkm_iccsense_sensor_config.exit_crit_edge
  %i2c.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %sensor.016, i32 0, i32 3
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %sensor.016, i32 0, i32 4
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.i, align 4
  %config5.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %sensor.016, i32 0, i32 5
  %18 = ptrtoint ptr %config5.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %config5.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #5
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf.i.i, align 1
  %21 = lshr i16 %19, 8
  %conv1.i.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i.i, ptr %1, align 1
  %conv4.i.i = trunc i16 %19 to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4.i.i, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #5
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 262143, ptr %3, align 4
  %conv7.i.i = zext i8 %17 to i16
  %25 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv7.i.i, ptr %msgs.i.i, align 4
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i, align 2
  %27 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i.i, ptr %buf8.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #5
  %28 = ptrtoint ptr %sensor.016 to i32
  call void @__asan_load4_noabort(i32 %28)
  %sensor.0 = load ptr, ptr %sensor.016, align 4
  %cmp.not = icmp eq ptr %sensor.0, %sensors
  br i1 %cmp.not, label %nvkm_iccsense_sensor_config.exit.for.end_crit_edge, label %nvkm_iccsense_sensor_config.exit.for.body_crit_edge

nvkm_iccsense_sensor_config.exit.for.body_crit_edge: ; preds = %nvkm_iccsense_sensor_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

nvkm_iccsense_sensor_config.exit.for.end_crit_edge: ; preds = %nvkm_iccsense_sensor_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %nvkm_iccsense_sensor_config.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_power_budget_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_power_budget_entry(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_iccsense_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_ina209_read(ptr nocapture noundef readnone %iccsense, ptr nocapture noundef readonly %rail) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor.i = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 2
  %0 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor.i, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.i, align 4
  %mohm.i = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 4
  %6 = ptrtoint ptr %mohm.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mohm.i, align 1
  %call.i = tail call fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext %7, i16 noundef zeroext 40) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_ina219_read(ptr nocapture noundef readnone %iccsense, ptr nocapture noundef readonly %rail) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor.i = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 2
  %0 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor.i, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.i, align 4
  %mohm.i = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 4
  %6 = ptrtoint ptr %mohm.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mohm.i, align 1
  %call.i = tail call fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext %7, i16 noundef zeroext 40) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_ina3221_read(ptr nocapture noundef readnone %iccsense, ptr nocapture noundef readonly %rail) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %i2c = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %addr = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 4
  %idx = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %idx, align 4
  %mul = shl i8 %7, 1
  %conv2 = or i8 %mul, 1
  %conv7 = add i8 %mul, 2
  %mohm = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %rail, i32 0, i32 4
  %8 = ptrtoint ptr %mohm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mohm, align 1
  %call = tail call fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %conv2, i8 noundef zeroext 3, i8 noundef zeroext %conv7, i8 noundef zeroext %9, i16 noundef zeroext 320)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extdev_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %i2c, i8 noundef zeroext %addr, i8 noundef zeroext %shunt_reg, i8 noundef zeroext %shunt_shift, i8 noundef zeroext %bus_reg, i8 noundef zeroext %shunt, i16 noundef zeroext %lsb) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i1 = alloca i8, align 1
  %val.i2 = alloca [2 x i8], align 1
  %msgs.i3 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %shunt_reg, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !39
  %2 = getelementptr inbounds [2 x i8], ptr %val.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %conv.i = zext i8 %addr to i16
  %6 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %12 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val.i, ptr %buf6.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.nv_rd16i2cr.exit_crit_edge

entry.nv_rd16i2cr.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv_rd16i2cr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i, align 1
  %conv9.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %conv11.i = zext i8 %17 to i32
  %or.i = or i32 %shl.i, %conv11.i
  br label %nv_rd16i2cr.exit

nv_rd16i2cr.exit:                                 ; preds = %if.end.i, %entry.nv_rd16i2cr.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end.i ], [ -5, %entry.nv_rd16i2cr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1)
  %18 = ptrtoint ptr %reg.addr.i1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bus_reg, ptr %reg.addr.i1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i2) #5
  %19 = ptrtoint ptr %val.i2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %val.i2, align 1, !annotation !39
  %20 = getelementptr inbounds [2 x i8], ptr %val.i2, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %20, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i3) #5
  %22 = getelementptr inbounds i8, ptr %msgs.i3, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %msgs.i3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %msgs.i3, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i5, align 2
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %22, align 4
  %buf.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %reg.addr.i1, ptr %buf.i7, align 4
  %arrayinit.element.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3, i32 1
  %28 = ptrtoint ptr %arrayinit.element.i8 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %arrayinit.element.i8, align 4
  %flags4.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3, i32 1, i32 1
  %29 = ptrtoint ptr %flags4.i9 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags4.i9, align 2
  %len5.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3, i32 1, i32 2
  %30 = ptrtoint ptr %len5.i10 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %len5.i10, align 4
  %buf6.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i3, i32 1, i32 3
  %31 = ptrtoint ptr %buf6.i11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %val.i2, ptr %buf6.i11, align 4
  %call.i12 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i3, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i12)
  %cmp.not.i13 = icmp eq i32 %call.i12, 2
  br i1 %cmp.not.i13, label %nv_rd16i2cr.exit20, label %nv_rd16i2cr.exit20.thread

nv_rd16i2cr.exit20.thread:                        ; preds = %nv_rd16i2cr.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1)
  br label %cleanup

nv_rd16i2cr.exit20:                               ; preds = %nv_rd16i2cr.exit
  %32 = ptrtoint ptr %val.i2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i2, align 1
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %20, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %nv_rd16i2cr.exit20.cleanup_crit_edge, label %if.end

nv_rd16i2cr.exit20.cleanup_crit_edge:             ; preds = %nv_rd16i2cr.exit20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nv_rd16i2cr.exit20
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.i14 = zext i8 %33 to i32
  %shl.i15 = shl nuw nsw i32 %conv9.i14, 8
  %conv11.i16 = zext i8 %35 to i32
  %or.i17 = or i32 %shl.i15, %conv11.i16
  %conv = zext i8 %shunt_shift to i32
  %shr25 = lshr i32 %retval.0.i, %conv
  %shr426 = lshr i32 %or.i17, 3
  %conv5 = zext i16 %lsb to i32
  %mul = mul i32 %shr25, %conv5
  %mul6 = mul i32 %mul, %shr426
  %conv7 = zext i8 %shunt to i32
  %div = sdiv i32 %mul6, %conv7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nv_rd16i2cr.exit20.cleanup_crit_edge, %nv_rd16i2cr.exit20.thread
  %retval.0 = phi i32 [ %div, %if.end ], [ -22, %nv_rd16i2cr.exit20.cleanup_crit_edge ], [ -22, %nv_rd16i2cr.exit20.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @iccsense_func, !1, !"iccsense_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c", i32 308, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c", i32 257, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_iccsense_oneinit._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_iccsense_oneinit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c", i32 290, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nvkm_iccsense_oneinit._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nvkm_iccsense_oneinit._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c", i32 170, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nvkm_iccsense_create_sensor._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvkm_iccsense_create_sensor._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c", i32 186, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nvkm_iccsense_create_sensor._entry.11, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_iccsense_create_sensor._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c", i32 104, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nvkm_iccsense_sensor_config._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvkm_iccsense_sensor_config._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
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
!40 = !{i8 0, i8 2}
