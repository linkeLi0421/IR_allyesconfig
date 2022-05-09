; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.nvkm_i2c_bus_func = type { ptr, ptr, ptr, ptr, ptr, ptr }

@nvkm_i2c_bus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bus %04x: init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_bus_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_init._entry_ptr = internal global ptr @nvkm_i2c_bus_init._entry, section ".printk_index", align 4
@nvkm_i2c_bus_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bus %04x: fini\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_bus_fini\00", [46 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_fini._entry_ptr = internal global ptr @nvkm_i2c_bus_fini._entry, section ".printk_index", align 4
@nvkm_i2c_bus_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: bus %04x: release\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_i2c_bus_release\00", [43 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_release._entry_ptr = internal global ptr @nvkm_i2c_bus_release._entry, section ".printk_index", align 4
@nvkm_i2c_bus_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: bus %04x: acquire\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_i2c_bus_acquire\00", [43 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_acquire._entry_ptr = internal global ptr @nvkm_i2c_bus_acquire._entry, section ".printk_index", align 4
@nvkm_i2c_bus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: bus %04x: probing %ss\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_i2c_bus_probe\00", [45 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_probe._entry_ptr = internal global ptr @nvkm_i2c_bus_probe._entry, section ".printk_index", align 4
@i2c_bit_algo = external dso_local constant %struct.i2c_algorithm, align 4
@nvkm_i2c_bus_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: bus %04x: %dms delay instead of %dms\0A\00", [54 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_probe._entry_ptr.15 = internal global ptr @nvkm_i2c_bus_probe._entry.13, section ".printk_index", align 4
@nvkm_i2c_bus_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: bus %04x: detected %s: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_probe._entry_ptr.18 = internal global ptr @nvkm_i2c_bus_probe._entry.16, section ".printk_index", align 4
@nvkm_i2c_bus_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: bus %04x: no devices found.\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_probe._entry_ptr.21 = internal global ptr @nvkm_i2c_bus_probe._entry.19, section ".printk_index", align 4
@nvkm_i2c_bus_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bus %04x: dtor\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_i2c_bus_del\00", [47 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_del._entry_ptr = internal global ptr @nvkm_i2c_bus_del._entry, section ".printk_index", align 4
@nvkm_i2c_bus_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&bus->mutex\00", [20 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bus %04x: ctor\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_bus_ctor\00", [46 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_ctor._entry_ptr = internal global ptr @nvkm_i2c_bus_ctor._entry, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm-%s-bus-%04x\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NvI2C\00", [26 x i8] zeroinitializer }, align 32
@nvkm_i2c_bus_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @nvkm_i2c_bus_xfer, ptr null, ptr null, ptr null, ptr @nvkm_i2c_bus_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 110, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 122, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 132, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 143, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 164, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 170, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 178, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 189, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 198, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 224, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 226, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 228, i32 49 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 234, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"nvkm_i2c_bus_algo\00", align 1
@___asan_gen_.132 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 99, i32 1 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @nvkm_i2c_bus_acquire._entry, ptr @nvkm_i2c_bus_acquire._entry_ptr, ptr @nvkm_i2c_bus_ctor._entry, ptr @nvkm_i2c_bus_ctor._entry_ptr, ptr @nvkm_i2c_bus_del._entry, ptr @nvkm_i2c_bus_del._entry_ptr, ptr @nvkm_i2c_bus_fini._entry, ptr @nvkm_i2c_bus_fini._entry_ptr, ptr @nvkm_i2c_bus_init._entry, ptr @nvkm_i2c_bus_init._entry_ptr, ptr @nvkm_i2c_bus_probe._entry, ptr @nvkm_i2c_bus_probe._entry.13, ptr @nvkm_i2c_bus_probe._entry.16, ptr @nvkm_i2c_bus_probe._entry.19, ptr @nvkm_i2c_bus_probe._entry_ptr, ptr @nvkm_i2c_bus_probe._entry_ptr.15, ptr @nvkm_i2c_bus_probe._entry_ptr.18, ptr @nvkm_i2c_bus_probe._entry_ptr.21, ptr @nvkm_i2c_bus_release._entry, ptr @nvkm_i2c_bus_release._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @nvkm_i2c_bus_ctor.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @nvkm_i2c_bus_algo], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_bus_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_init(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %bus) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %mutex = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 6
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_fini(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_release(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nvkm_i2c_pad_release(ptr noundef %1) #7
  %mutex = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_acquire(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end.if.then12_crit_edge, label %if.end10

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end10:                                         ; preds = %if.end
  %call = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %ret.025 = phi i32 [ %call, %if.end10.if.then12_crit_edge ], [ -5, %if.end.if.then12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %ret.026 = phi i32 [ %ret.025, %if.then12 ], [ 0, %if.end10.if.end14_crit_edge ]
  ret i32 %ret.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_pad_acquire(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_probe(ptr noundef %bus, ptr noundef %what, ptr noundef %info, ptr noundef readonly %match, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %11, ptr noundef %what) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %addr169 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %addr169 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr169, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not170 = icmp eq i16 %13, 0
  br i1 %tobool.not170, label %if.end.do.body100_crit_edge, label %for.body.lr.ph

if.end.do.body100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

for.body.lr.ph:                                   ; preds = %if.end
  %i2c8 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5
  %algo = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5, i32 2
  %algo_data = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5, i32 3
  %id34 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %tobool58.not = icmp eq ptr %match, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr174 = phi ptr [ %addr169, %for.body.lr.ph ], [ %addr, %for.inc.for.body_crit_edge ]
  %arrayidx173 = phi ptr [ %info, %for.body.lr.ph ], [ %arrayidx, %for.inc.for.body_crit_edge ]
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %algo, align 8
  %cmp9 = icmp eq ptr %16, @i2c_bit_algo
  br i1 %cmp9, label %land.lhs.true, label %for.body.if.end50_crit_edge

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.lhs.true:                                    ; preds = %for.body
  %udelay = getelementptr %struct.nvkm_i2c_bus_probe, ptr %info, i32 %i.0171, i32 1
  %17 = ptrtoint ptr %udelay to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %udelay, align 4
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp11.not = icmp eq i8 %18, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end50_crit_edge, label %if.then13

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then13:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %algo_data, align 4
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pad, align 4
  %i2c21 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %i2c21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c21, align 4
  %debug23 = getelementptr inbounds %struct.nvkm_i2c, ptr %24, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %debug23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp24 = icmp ugt i32 %26, 3
  br i1 %cmp24, label %do.end29, label %if.then13.if.end39_crit_edge

if.then13.if.end39_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end29:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %device30 = getelementptr inbounds %struct.nvkm_i2c, ptr %24, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %device30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device30, align 4
  %dev31 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev31, align 8
  %name32 = getelementptr inbounds %struct.nvkm_i2c, ptr %24, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %id34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id34, align 8
  %udelay38 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %20, i32 0, i32 7
  %33 = ptrtoint ptr %udelay38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %udelay38, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef %name32, i32 noundef %32, i32 noundef %conv, i32 noundef %34) #10
  br label %if.end39

if.end39:                                         ; preds = %do.end29, %if.then13.if.end39_crit_edge
  %udelay44 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %20, i32 0, i32 7
  %35 = ptrtoint ptr %udelay44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %udelay44, align 4
  %conv45 = trunc i32 %36 to i8
  %37 = ptrtoint ptr %udelay to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %udelay, align 4
  %conv48 = zext i8 %38 to i32
  store i32 %conv48, ptr %udelay44, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end39, %land.lhs.true.if.end50_crit_edge, %for.body.if.end50_crit_edge
  %orig_udelay.0 = phi i8 [ %conv45, %if.end39 ], [ 0, %land.lhs.true.if.end50_crit_edge ], [ 0, %for.body.if.end50_crit_edge ]
  %39 = ptrtoint ptr %addr174 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr174, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %41 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %42 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %val.i.i, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %43 = call ptr @memset(ptr %14, i32 255, i32 16)
  %conv.i.i = and i16 %40, 255
  %44 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i.i, align 2
  %46 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %14, align 4
  %47 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %48 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %49 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags4.i.i, align 2
  %50 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len5.i.i, align 4
  %51 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %val.i.i, ptr %buf6.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c8, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  br i1 %cmp.not.i.i, label %land.lhs.true57, label %if.end50.if.end91_crit_edge

if.end50.if.end91_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true57:                                  ; preds = %if.end50
  br i1 %tobool58.not, label %land.lhs.true57.do.body64_crit_edge, label %lor.lhs.false

land.lhs.true57.do.body64_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

lor.lhs.false:                                    ; preds = %land.lhs.true57
  %call61 = call zeroext i1 %match(ptr noundef %bus, ptr noundef %arrayidx173, ptr noundef %data) #7
  br i1 %call61, label %lor.lhs.false.do.body64_crit_edge, label %lor.lhs.false.if.end91_crit_edge

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

lor.lhs.false.do.body64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

do.body64:                                        ; preds = %lor.lhs.false.do.body64_crit_edge, %land.lhs.true57.do.body64_crit_edge
  %52 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pad, align 4
  %i2c69 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %i2c69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c69, align 4
  %debug71 = getelementptr inbounds %struct.nvkm_i2c, ptr %55, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %debug71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp72 = icmp ugt i32 %57, 3
  br i1 %cmp72, label %do.end77, label %do.body64.cleanup124_crit_edge

do.body64.cleanup124_crit_edge:                   ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

do.end77:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %device78 = getelementptr inbounds %struct.nvkm_i2c, ptr %55, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %device78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device78, align 4
  %dev79 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev79, align 8
  %name80 = getelementptr inbounds %struct.nvkm_i2c, ptr %55, i32 0, i32 1, i32 4
  %62 = ptrtoint ptr %id34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id34, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.17, ptr noundef %name80, i32 noundef %63, ptr noundef %what, ptr noundef %arrayidx173) #10
  br label %cleanup124

if.end91:                                         ; preds = %lor.lhs.false.if.end91_crit_edge, %if.end50.if.end91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %orig_udelay.0)
  %tobool92.not = icmp eq i8 %orig_udelay.0, 0
  br i1 %tobool92.not, label %if.end91.for.inc_crit_edge, label %if.then93

if.end91.for.inc_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %algo_data, align 4
  %conv97 = zext i8 %orig_udelay.0 to i32
  %udelay98 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %udelay98 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv97, ptr %udelay98, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then93, %if.end91.for.inc_crit_edge
  %inc = add i32 %i.0171, 1
  %arrayidx = getelementptr %struct.nvkm_i2c_bus_probe, ptr %info, i32 %inc
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %arrayidx, i32 0, i32 2
  %67 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr, align 2
  %tobool.not = icmp eq i16 %68, 0
  br i1 %tobool.not, label %for.inc.do.body100_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body100_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

do.body100:                                       ; preds = %for.inc.do.body100_crit_edge, %if.end.do.body100_crit_edge
  %69 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pad, align 4
  %i2c105 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %i2c105 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c105, align 4
  %debug107 = getelementptr inbounds %struct.nvkm_i2c, ptr %72, i32 0, i32 1, i32 5
  %73 = ptrtoint ptr %debug107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp108 = icmp ugt i32 %74, 3
  br i1 %cmp108, label %do.end113, label %do.body100.cleanup124_crit_edge

do.body100.cleanup124_crit_edge:                  ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

do.end113:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  %device114 = getelementptr inbounds %struct.nvkm_i2c, ptr %72, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %device114 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device114, align 4
  %dev115 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev115, align 8
  %name116 = getelementptr inbounds %struct.nvkm_i2c, ptr %72, i32 0, i32 1, i32 4
  %id118 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %79 = ptrtoint ptr %id118 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id118, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.20, ptr noundef %name116, i32 noundef %80) #10
  br label %cleanup124

cleanup124:                                       ; preds = %do.end113, %do.body100.cleanup124_crit_edge, %do.end77, %do.body64.cleanup124_crit_edge
  %retval.2 = phi i32 [ -19, %do.end113 ], [ -19, %do.body100.cleanup124_crit_edge ], [ %i.0171, %do.end77 ], [ %i.0171, %do.body64.cleanup124_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_del(ptr nocapture noundef %pbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %land.lhs.true

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %do.body24.critedge, !prof !69

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 197, i32 noundef 9, ptr noundef null) #7
  br label %if.end37

do.body24.critedge:                               ; preds = %land.lhs.true
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp ugt i32 %9, 4
  br i1 %cmp, label %do.end29, label %do.body24.critedge.if.end30_crit_edge

do.body24.critedge.if.end30_crit_edge:            ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end29:                                         ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %15) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.body24.critedge.if.end30_crit_edge
  %head = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_del.exit_crit_edge

if.end30.list_del.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end30.list_del.exit_crit_edge
  %22 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %i2c35 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %i2c35) #7
  %algo_data = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %1, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %algo_data, align 4
  tail call void @kfree(ptr noundef %25) #7
  %26 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbus, align 4
  tail call void @kfree(ptr noundef %27) #7
  %28 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pbus, align 4
  br label %if.end37

if.end37:                                         ; preds = %list_del.exit, %do.end, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_ctor(ptr noundef %func, ptr noundef %pad, i32 noundef %id, ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %pad, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %device1 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %bus, align 8
  %pad3 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %5 = ptrtoint ptr %pad3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pad, ptr %pad3, align 4
  %id4 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 2
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id, ptr %id4, align 8
  %mutex = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.24, ptr noundef nonnull @nvkm_i2c_bus_ctor.__key) #7
  %head = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 4
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %bus6 = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %10, ptr noundef %bus6) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %prev.i, align 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bus6, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %head, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %15 = ptrtoint ptr %pad3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pad3, align 4
  %i2c10 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %i2c10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c10, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp = icmp ugt i32 %20, 4
  br i1 %cmp, label %do.end14, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end14:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %device15 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device15, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %26) #10
  br label %if.end

if.end:                                           ; preds = %do.end14, %list_add_tail.exit.if.end_crit_edge
  %i2c21 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5
  %name22 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5, i32 12
  %dev24 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev24, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %if.end.dev_name.exit_crit_edge ]
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name22, i32 noundef 48, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i, i32 noundef %id)
  %33 = ptrtoint ptr %i2c21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %i2c21, align 8
  %34 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev24, align 8
  %parent = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5, i32 9, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %parent, align 8
  %37 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus, align 8
  %drive_scl = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %drive_scl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drive_scl, align 4
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %dev_name.exit.if.else_crit_edge, label %land.lhs.true

dev_name.exit.if.else_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %dev_name.exit
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfgopt, align 4
  %call31 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %42, ptr noundef nonnull @.str.28, i1 noundef zeroext false) #7
  br i1 %call31, label %land.lhs.true.if.else_crit_edge, label %if.then32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 40) #11
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %if.end36

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 10, ptr %udelay, align 4
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2200, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 2200
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %timeout = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i, ptr %timeout, align 8
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %bus, ptr %call7.i.i, align 8
  %pre_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %pre_xfer to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @nvkm_i2c_bus_pre_xfer, ptr %pre_xfer, align 4
  %post_xfer = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %post_xfer to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nvkm_i2c_bus_post_xfer, ptr %post_xfer, align 8
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @nvkm_i2c_bus_setscl, ptr %setscl, align 8
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @nvkm_i2c_bus_setsda, ptr %setsda, align 4
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @nvkm_i2c_bus_getscl, ptr %getscl, align 8
  %getsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @nvkm_i2c_bus_getsda, ptr %getsda, align 4
  %algo_data = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5, i32 3
  %53 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %algo_data, align 4
  %call40 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c21) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dev_name.exit.if.else_crit_edge
  %algo = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @nvkm_i2c_bus_algo, ptr %algo, align 8
  %call43 = tail call i32 @i2c_add_adapter(ptr noundef %i2c21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end36, %if.then32.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then32.cleanup_crit_edge ], [ %call43, %if.else ], [ %call40, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_pre_xfer(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1.i = getelementptr i8, ptr %adap, i32 -108
  %0 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1.i, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id.i = getelementptr i8, ptr %adap, i32 -104
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %name.i, i32 noundef %11) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %mutex.i = getelementptr i8, ptr %adap, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %enabled.i = getelementptr i8, ptr %adap, i32 1360
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.if.then12.i_crit_edge, label %if.end10.i

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.end10.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.nvkm_i2c_bus_acquire.exit_crit_edge, label %if.end10.i.if.then12.i_crit_edge

if.end10.i.if.then12.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.end10.i.nvkm_i2c_bus_acquire.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_i2c_bus_acquire.exit

if.then12.i:                                      ; preds = %if.end10.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %ret.025.i = phi i32 [ %call.i, %if.end10.i.if.then12.i_crit_edge ], [ -5, %if.end.i.if.then12.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %nvkm_i2c_bus_acquire.exit

nvkm_i2c_bus_acquire.exit:                        ; preds = %if.then12.i, %if.end10.i.nvkm_i2c_bus_acquire.exit_crit_edge
  %ret.026.i = phi i32 [ %ret.025.i, %if.then12.i ], [ 0, %if.end10.i.nvkm_i2c_bus_acquire.exit_crit_edge ]
  ret i32 %ret.026.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_i2c_bus_post_xfer(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1.i = getelementptr i8, ptr %adap, i32 -108
  %0 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1.i, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %entry.nvkm_i2c_bus_release.exit_crit_edge

entry.nvkm_i2c_bus_release.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_i2c_bus_release.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id.i = getelementptr i8, ptr %adap, i32 -104
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %11) #10
  br label %nvkm_i2c_bus_release.exit

nvkm_i2c_bus_release.exit:                        ; preds = %do.end.i, %entry.nvkm_i2c_bus_release.exit_crit_edge
  tail call void @nvkm_i2c_pad_release(ptr noundef %1) #7
  %mutex.i = getelementptr i8, ptr %adap, i32 -100
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_i2c_bus_setscl(ptr noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %drive_scl = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drive_scl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drive_scl, align 4
  tail call void %3(ptr noundef %data, i32 noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_i2c_bus_setsda(ptr noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %drive_sda = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %drive_sda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drive_sda, align 4
  tail call void %3(ptr noundef %data, i32 noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_getscl(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %sense_scl = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sense_scl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sense_scl, align 4
  %call = tail call i32 %3(ptr noundef %data) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_getsda(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %sense_sda = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sense_sda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sense_sda, align 4
  %call = tail call i32 %3(ptr noundef %data) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_new_(ptr noundef %func, ptr noundef %pad, i32 noundef %id, ptr nocapture noundef writeonly %pbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1480) #11
  %1 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pbus, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @nvkm_i2c_bus_ctor(ptr noundef %func, ptr noundef %pad, i32 noundef %id, ptr noundef nonnull %call7.i.i)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_xfer(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %adap, i32 -112
  %pad1.i = getelementptr i8, ptr %adap, i32 -108
  %0 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1.i, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id.i = getelementptr i8, ptr %adap, i32 -104
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %name.i, i32 noundef %11) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %mutex.i = getelementptr i8, ptr %adap, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %enabled.i = getelementptr i8, ptr %adap, i32 1360
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end10.i
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %xfer = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfer, align 4
  %call1 = tail call i32 %17(ptr noundef %add.ptr, ptr noundef %msgs, i32 noundef %num) #7
  %18 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pad1.i, align 4
  %i2c.i9 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %i2c.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i9, align 4
  %debug.i10 = getelementptr inbounds %struct.nvkm_i2c, ptr %21, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %debug.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp.i11 = icmp ugt i32 %23, 4
  br i1 %cmp.i11, label %do.end.i16, label %if.end.nvkm_i2c_bus_release.exit_crit_edge

if.end.nvkm_i2c_bus_release.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_i2c_bus_release.exit

do.end.i16:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %device.i12 = getelementptr inbounds %struct.nvkm_i2c, ptr %21, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device.i12, align 4
  %dev.i13 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i13, align 8
  %name.i14 = getelementptr inbounds %struct.nvkm_i2c, ptr %21, i32 0, i32 1, i32 4
  %id.i15 = getelementptr i8, ptr %adap, i32 -104
  %28 = ptrtoint ptr %id.i15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef %name.i14, i32 noundef %29) #10
  br label %nvkm_i2c_bus_release.exit

nvkm_i2c_bus_release.exit:                        ; preds = %do.end.i16, %if.end.nvkm_i2c_bus_release.exit_crit_edge
  tail call void @nvkm_i2c_pad_release(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %nvkm_i2c_bus_release.exit, %if.end10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %nvkm_i2c_bus_release.exit ], [ %call.i, %if.end10.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_i2c_bus_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 110, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_i2c_bus_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_i2c_bus_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 122, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_i2c_bus_fini._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_i2c_bus_fini._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 132, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_i2c_bus_release._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_i2c_bus_release._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 143, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nvkm_i2c_bus_acquire._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_i2c_bus_acquire._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 164, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nvkm_i2c_bus_probe._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvkm_i2c_bus_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 170, i32 4}
!30 = !{ptr @nvkm_i2c_bus_probe._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_i2c_bus_probe._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 178, i32 4}
!34 = !{ptr @nvkm_i2c_bus_probe._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvkm_i2c_bus_probe._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 189, i32 2}
!38 = !{ptr @nvkm_i2c_bus_probe._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvkm_i2c_bus_probe._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 198, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nvkm_i2c_bus_del._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvkm_i2c_bus_del._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @nvkm_i2c_bus_ctor.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 224, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 226, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nvkm_i2c_bus_ctor._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvkm_i2c_bus_ctor._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 228, i32 49}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 234, i32 36}
!57 = !{ptr @nvkm_i2c_bus_algo, !58, !"nvkm_i2c_bus_algo", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c", i32 99, i32 1}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 1, i32 2000}
