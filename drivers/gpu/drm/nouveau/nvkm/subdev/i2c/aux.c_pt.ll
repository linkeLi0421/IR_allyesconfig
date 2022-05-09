; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
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
%struct.nvkm_i2c_aux_func = type { i8, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@nvkm_i2c_aux_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: aux %04x: monitor: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_i2c_aux_monitor\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_monitor._entry_ptr = internal global ptr @nvkm_i2c_aux_monitor._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: aux %04x: release\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_i2c_aux_release\00", [43 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_release._entry_ptr = internal global ptr @nvkm_i2c_aux_release._entry, section ".printk_index", align 4
@nvkm_i2c_aux_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: aux %04x: acquire\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_i2c_aux_acquire\00", [43 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_acquire._entry_ptr = internal global ptr @nvkm_i2c_aux_acquire._entry, section ".printk_index", align 4
@nvkm_i2c_aux_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 137, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: aux %04x: address-only transaction dropped\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_aux_xfer\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_xfer._entry_ptr = internal global ptr @nvkm_i2c_aux_xfer._entry, section ".printk_index", align 4
@nvkm_i2c_aux_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: aux %04x: dtor\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_i2c_aux_del\00", [47 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_del._entry_ptr = internal global ptr @nvkm_i2c_aux_del._entry, section ".printk_index", align 4
@nvkm_i2c_aux_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: aux %04x: init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_aux_init\00", [46 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_init._entry_ptr = internal global ptr @nvkm_i2c_aux_init._entry, section ".printk_index", align 4
@nvkm_i2c_aux_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: aux %04x: fini\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_aux_fini\00", [46 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_fini._entry_ptr = internal global ptr @nvkm_i2c_aux_fini._entry, section ".printk_index", align 4
@nvkm_i2c_aux_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&aux->mutex\00", [20 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: aux %04x: ctor\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_i2c_aux_ctor\00", [46 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_ctor._entry_ptr = internal global ptr @nvkm_i2c_aux_ctor._entry, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm-%s-aux-%04x\00", [47 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @nvkm_i2c_aux_i2c_xfer, ptr null, ptr null, ptr null, ptr @nvkm_i2c_aux_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: aux %04x: no data after 32 retries\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_i2c_aux_i2c_xfer\00", [42 x i8] zeroinitializer }, align 32
@nvkm_i2c_aux_i2c_xfer._entry_ptr = internal global ptr @nvkm_i2c_aux_i2c_xfer._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 97, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 119, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 137, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 156, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 167, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 176, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 192, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 194, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 196, i32 49 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"nvkm_i2c_aux_i2c_algo\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 88, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 63, i32 5 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @nvkm_i2c_aux_acquire._entry, ptr @nvkm_i2c_aux_acquire._entry_ptr, ptr @nvkm_i2c_aux_ctor._entry, ptr @nvkm_i2c_aux_ctor._entry_ptr, ptr @nvkm_i2c_aux_del._entry, ptr @nvkm_i2c_aux_del._entry_ptr, ptr @nvkm_i2c_aux_fini._entry, ptr @nvkm_i2c_aux_fini._entry_ptr, ptr @nvkm_i2c_aux_i2c_xfer._entry, ptr @nvkm_i2c_aux_i2c_xfer._entry_ptr, ptr @nvkm_i2c_aux_init._entry, ptr @nvkm_i2c_aux_init._entry_ptr, ptr @nvkm_i2c_aux_monitor._entry, ptr @nvkm_i2c_aux_monitor._entry_ptr, ptr @nvkm_i2c_aux_release._entry, ptr @nvkm_i2c_aux_release._entry_ptr, ptr @nvkm_i2c_aux_xfer._entry, ptr @nvkm_i2c_aux_xfer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nvkm_i2c_aux_ctor.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @nvkm_i2c_aux_i2c_algo, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_i2c_aux_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_monitor(ptr nocapture noundef readonly %aux, i1 noundef zeroext %monitor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %cond = select i1 %monitor, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %11, ptr noundef nonnull %cond) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %. = select i1 %monitor, i32 2, i32 0
  tail call void @nvkm_i2c_pad_mode(ptr noundef %1, i32 noundef %.) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_release(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nvkm_i2c_pad_release(ptr noundef %1) #8
  %mutex = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end.if.then12_crit_edge, label %if.end10

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end10:                                         ; preds = %if.end
  %call = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %ret.025 = phi i32 [ %call, %if.end10.if.then12_crit_edge ], [ -5, %if.end.if.then12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %ret.026 = phi i32 [ %ret.025, %if.then12 ], [ 0, %if.end10.if.end14_crit_edge ]
  ret i32 %ret.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_pad_acquire(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef %aux, i1 noundef zeroext %retry, i8 noundef zeroext %type, i32 noundef %addr, ptr noundef %data, ptr noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  %pad = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %17) #11
  br label %return

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %18 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux, align 8
  %xfer = getelementptr inbounds %struct.nvkm_i2c_aux_func, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfer, align 4
  %call = tail call i32 %21(ptr noundef %aux, i1 noundef zeroext %retry, i8 noundef zeroext %type, i32 noundef %addr, ptr noundef %data, ptr noundef %size) #8
  br label %return

return:                                           ; preds = %if.end9, %do.end, %do.body.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -38, %do.end ], [ -38, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_lnk_ctl(ptr noundef %aux, i32 noundef %nr, i32 noundef %bw, i1 noundef zeroext %ef) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 8
  %lnk_ctl = getelementptr inbounds %struct.nvkm_i2c_aux_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lnk_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lnk_ctl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef %aux, i32 noundef %nr, i32 noundef %bw, i1 noundef zeroext %ef) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_del(ptr nocapture noundef %paux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %paux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %paux, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %do.body24.critedge, !prof !68

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #8
  br label %if.end36

do.body24.critedge:                               ; preds = %land.lhs.true
  %pad = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %1, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end29:                                         ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %15) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.body24.critedge.if.end30_crit_edge
  %head = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_del.exit_crit_edge

if.end30.list_del.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %1, i32 0, i32 4, i32 1
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
  %prev.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %1, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %i2c35 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %1, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %i2c35) #8
  %24 = ptrtoint ptr %paux to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %paux, align 4
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %paux to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %paux, align 4
  br label %if.end36

if.end36:                                         ; preds = %list_del.exit, %do.end, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_init(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_fini(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_ctor(ptr noundef %func, ptr noundef %pad, i32 noundef %id, ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %pad, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %device1 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %aux, align 8
  %pad3 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 1
  %5 = ptrtoint ptr %pad3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pad, ptr %pad3, align 4
  %id4 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 2
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id, ptr %id4, align 8
  %mutex = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @nvkm_i2c_aux_ctor.__key) #8
  %head = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 4
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %aux6 = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %10, ptr noundef %aux6) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %prev.i, align 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %aux6, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 4, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end14:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %26) #11
  br label %if.end

if.end:                                           ; preds = %do.end14, %list_add_tail.exit.if.end_crit_edge
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %if.end.dev_name.exit_crit_edge ]
  %name22 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 5, i32 12
  %i2c21 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 5
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name22, i32 noundef 48, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i, i32 noundef %id)
  %33 = ptrtoint ptr %i2c21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %i2c21, align 8
  %34 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev24, align 8
  %parent = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 5, i32 9, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %aux, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nvkm_i2c_aux_i2c_algo, ptr %algo, align 8
  %call32 = tail call i32 @i2c_add_adapter(ptr noundef %i2c21) #8
  ret i32 %call32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_new_(ptr noundef %func, ptr noundef %pad, i32 noundef %id, ptr nocapture noundef writeonly %paux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1480) #12
  %1 = ptrtoint ptr %paux to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %paux, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef %func, ptr noundef %pad, i32 noundef %id, ptr noundef nonnull %call7.i.i)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_aux_i2c_xfer(ptr noundef %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %cnt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %name.i, i32 noundef %11) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %mutex.i = getelementptr i8, ptr %adap, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %enabled.i = getelementptr i8, ptr %adap, i32 1360
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge, label %if.end10.i

if.end.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_i2c_aux_acquire.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %while.cond.preheader, label %if.end10.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge

if.end10.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_i2c_aux_acquire.exit.thread

while.cond.preheader:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool1.not124 = icmp eq i32 %num, 0
  br i1 %tobool1.not124, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

nvkm_i2c_aux_acquire.exit.thread:                 ; preds = %if.end10.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge, %if.end.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge
  %ret.025.i = phi i32 [ %call.i, %if.end10.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge ], [ -5, %if.end.i.nvkm_i2c_aux_acquire.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %cleanup59

while.body:                                       ; preds = %cleanup54.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec128.in = phi i32 [ %dec128, %cleanup54.while.body_crit_edge ], [ %num, %while.cond.preheader.while.body_crit_edge ]
  %msg.0125 = phi ptr [ %incdec.ptr, %cleanup54.while.body_crit_edge ], [ %msgs, %while.cond.preheader.while.body_crit_edge ]
  %dec128 = add i32 %dec128.in, -1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg.0125, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv = trunc i16 %15 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool3.not119 = icmp eq i8 %conv, 0
  br i1 %tobool3.not119, label %while.body.cleanup54_crit_edge, label %while.body4.lr.ph

while.body.cleanup54_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

while.body4.lr.ph:                                ; preds = %while.body
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg.0125, i32 0, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg.0125, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec128)
  %tobool9.not = icmp ne i32 %dec128, 0
  br label %while.body4

while.body4:                                      ; preds = %cleanup.while.body4_crit_edge, %while.body4.lr.ph
  %ptr.0122 = phi ptr [ %17, %while.body4.lr.ph ], [ %add.ptr48, %cleanup.while.body4_crit_edge ]
  %remaining.0121 = phi i8 [ %conv, %while.body4.lr.ph ], [ %sub, %cleanup.while.body4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %remaining.0121)
  %cmp = icmp ugt i8 %remaining.0121, 16
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp
  %22 = or i8 %21, 4
  %cmd.1 = select i1 %or.cond, i8 %22, i8 %21
  %23 = call i8 @llvm.umin.i8(i8 %remaining.0121, i8 16)
  br label %land.rhs

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i8 %retries.0118, 1
  %cmp17 = icmp ult i8 %retries.0118, 31
  %24 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr134 = load i8, ptr %cnt, align 1
  br i1 %cmp17, label %for.cond.land.rhs_crit_edge, label %for.end

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %while.body4
  %25 = phi i8 [ 0, %while.body4 ], [ %.pr134, %for.cond.land.rhs_crit_edge ]
  %retries.0118 = phi i8 [ 0, %while.body4 ], [ %inc, %for.cond.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  br i1 %tobool19.not, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %26 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %cnt, align 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %xfer = getelementptr inbounds %struct.nvkm_i2c_aux_func, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xfer, align 4
  %31 = ptrtoint ptr %msg.0125 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %msg.0125, align 4
  %conv28 = zext i16 %32 to i32
  %call29 = call i32 %30(ptr noundef %add.ptr, i1 noundef zeroext true, i8 noundef zeroext %cmd.1, i32 noundef %conv28, ptr noundef %ptr.0122, ptr noundef nonnull %cnt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.body.cleanup54.thread_crit_edge, label %for.cond

for.body.cleanup54.thread_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54.thread

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr134)
  %tobool34.not = icmp eq i8 %.pr134, 0
  br i1 %tobool34.not, label %do.body, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %for.end
  %33 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad1.i, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %36, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp37 = icmp ugt i32 %38, 4
  br i1 %cmp37, label %do.end, label %do.body.cleanup54.thread_crit_edge

do.body.cleanup54.thread_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %36, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %36, i32 0, i32 1, i32 4
  %id = getelementptr i8, ptr %adap, i32 -104
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %44) #11
  br label %cleanup54.thread

cleanup54.thread:                                 ; preds = %do.end, %do.body.cleanup54.thread_crit_edge, %for.body.cleanup54.thread_crit_edge
  %ret.3.ph = phi i32 [ -5, %do.body.cleanup54.thread_crit_edge ], [ -5, %do.end ], [ %call29, %for.body.cleanup54.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #8
  br label %out

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %45 = phi i8 [ %.pr134, %for.end.cleanup_crit_edge ], [ %25, %land.rhs.cleanup_crit_edge ]
  %conv47 = zext i8 %45 to i32
  %add.ptr48 = getelementptr i8, ptr %ptr.0122, i32 %conv47
  %sub = sub i8 %remaining.0121, %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #8
  %tobool3.not = icmp eq i8 %sub, 0
  br i1 %tobool3.not, label %cleanup.cleanup54_crit_edge, label %cleanup.while.body4_crit_edge

cleanup.while.body4_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4

cleanup.cleanup54_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup.cleanup54_crit_edge, %while.body.cleanup54_crit_edge
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msg.0125, i32 1
  %tobool1.not = icmp eq i32 %dec128, 0
  br i1 %tobool1.not, label %cleanup54.out_crit_edge, label %cleanup54.while.body_crit_edge

cleanup54.while.body_crit_edge:                   ; preds = %cleanup54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup54.out_crit_edge:                          ; preds = %cleanup54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %cleanup54.out_crit_edge, %cleanup54.thread, %while.cond.preheader.out_crit_edge
  %ret.5 = phi i32 [ %ret.3.ph, %cleanup54.thread ], [ 0, %while.cond.preheader.out_crit_edge ], [ %num, %cleanup54.out_crit_edge ]
  %46 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pad1.i, align 4
  %i2c.i90 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %i2c.i90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c.i90, align 4
  %debug.i91 = getelementptr inbounds %struct.nvkm_i2c, ptr %49, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %debug.i91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp.i92 = icmp ugt i32 %51, 4
  br i1 %cmp.i92, label %do.end.i97, label %out.nvkm_i2c_aux_release.exit_crit_edge

out.nvkm_i2c_aux_release.exit_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_i2c_aux_release.exit

do.end.i97:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %device.i93 = getelementptr inbounds %struct.nvkm_i2c, ptr %49, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %device.i93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device.i93, align 4
  %dev.i94 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev.i94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i94, align 8
  %name.i95 = getelementptr inbounds %struct.nvkm_i2c, ptr %49, i32 0, i32 1, i32 4
  %id.i96 = getelementptr i8, ptr %adap, i32 -104
  %56 = ptrtoint ptr %id.i96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i96, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.7, ptr noundef %name.i95, i32 noundef %57) #11
  br label %nvkm_i2c_aux_release.exit

nvkm_i2c_aux_release.exit:                        ; preds = %do.end.i97, %out.nvkm_i2c_aux_release.exit_crit_edge
  call void @nvkm_i2c_pad_release(ptr noundef %47) #8
  call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %cleanup59

cleanup59:                                        ; preds = %nvkm_i2c_aux_release.exit, %nvkm_i2c_aux_acquire.exit.thread
  %retval.0 = phi i32 [ %ret.5, %nvkm_i2c_aux_release.exit ], [ %ret.025.i, %nvkm_i2c_aux_acquire.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_i2c_aux_i2c_func(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 97, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_i2c_aux_monitor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_i2c_aux_monitor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 108, i32 2}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nvkm_i2c_aux_release._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nvkm_i2c_aux_release._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 119, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nvkm_i2c_aux_acquire._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvkm_i2c_aux_acquire._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 137, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvkm_i2c_aux_xfer._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvkm_i2c_aux_xfer._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 156, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvkm_i2c_aux_del._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_i2c_aux_del._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 167, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nvkm_i2c_aux_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvkm_i2c_aux_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 176, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nvkm_i2c_aux_fini._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvkm_i2c_aux_fini._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nvkm_i2c_aux_ctor.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 192, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 194, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nvkm_i2c_aux_ctor._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @nvkm_i2c_aux_ctor._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 196, i32 49}
!51 = !{ptr @nvkm_i2c_aux_i2c_algo, !52, !"nvkm_i2c_aux_i2c_algo", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 88, i32 1}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c", i32 63, i32 5}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @nvkm_i2c_aux_i2c_xfer._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvkm_i2c_aux_i2c_xfer._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 1, i32 2000}
