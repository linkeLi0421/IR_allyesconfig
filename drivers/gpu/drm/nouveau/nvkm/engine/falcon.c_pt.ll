; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/falcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.138, %struct.anon.139, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.138 = type { ptr }
%struct.anon.139 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.136, %struct.anon.137, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.141, %struct.anon.141, [0 x %struct.nvkm_sclass] }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.141 = type { i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }

@nvkm_falcon = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_falcon_dtor, ptr null, ptr @nvkm_falcon_oneinit, ptr null, ptr @nvkm_falcon_init, ptr @nvkm_falcon_fini, ptr @nvkm_falcon_intr, ptr null, ptr null, %struct.anon.138 zeroinitializer, %struct.anon.139 { ptr null, ptr @nvkm_falcon_oclass_get }, ptr @nvkm_falcon_cclass, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_falcon_cclass = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_falcon_cclass_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_falcon_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: falcon version: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_falcon_oneinit\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/falcon.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_falcon_oneinit._entry_ptr = internal global ptr @nvkm_falcon_oneinit._entry, section ".printk_index", align 4
@nvkm_falcon_oneinit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: secret level: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_falcon_oneinit._entry_ptr.7 = internal global ptr @nvkm_falcon_oneinit._entry.5, section ".printk_index", align 4
@nvkm_falcon_oneinit._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: code limit: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_falcon_oneinit._entry_ptr.10 = internal global ptr @nvkm_falcon_oneinit._entry.8, section ".printk_index", align 4
@nvkm_falcon_oneinit._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: data limit: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_falcon_oneinit._entry_ptr.13 = internal global ptr @nvkm_falcon_oneinit._entry.11, section ".printk_index", align 4
@__const.nvkm_falcon_init.name = private unnamed_addr constant [32 x i8] c"internal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nouveau/nv%02x_fuc%03x\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nouveau/nv%02x_fuc%03xd\00", [40 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 217, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unable to load firmware data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_falcon_init\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry_ptr = internal global ptr @nvkm_falcon_init._entry, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nouveau/nv%02x_fuc%03xc\00", [40 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 232, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unable to load firmware code\0A\00", [62 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry_ptr.23 = internal global ptr @nvkm_falcon_init._entry.21, section ".printk_index", align 4
@nvkm_falcon_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: firmware: %s (%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry_ptr.26 = internal global ptr @nvkm_falcon_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"static code/data segments\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"self-bootstrapping\00", [45 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.2, i32 252, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: core allocation failed, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry_ptr.31 = internal global ptr @nvkm_falcon_init._entry.29, section ".printk_index", align 4
@nvkm_falcon_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.2, i32 276, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ucode exceeds falcon limit(s)\0A\00", [61 x i8] zeroinitializer }, align 32
@nvkm_falcon_init._entry_ptr.34 = internal global ptr @nvkm_falcon_init._entry.32, section ".printk_index", align 4
@nvkm_falcon_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ucode halted\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_falcon_intr\00", [47 x i8] zeroinitializer }, align 32
@nvkm_falcon_intr._entry_ptr = internal global ptr @nvkm_falcon_intr._entry, section ".printk_index", align 4
@nvkm_falcon_intr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 88, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@nvkm_falcon_intr._entry_ptr.39 = internal global ptr @nvkm_falcon_intr._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 170, i64 172]
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"nvkm_falcon\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 327, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"nvkm_falcon_cclass\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 54, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 152, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 153, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 154, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 155, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 173, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 193, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 212, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 217, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 227, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 232, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 243, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 252, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 276, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 82, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [48 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 88, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @nvkm_falcon_init._entry, ptr @nvkm_falcon_init._entry.21, ptr @nvkm_falcon_init._entry.24, ptr @nvkm_falcon_init._entry.29, ptr @nvkm_falcon_init._entry.32, ptr @nvkm_falcon_init._entry_ptr, ptr @nvkm_falcon_init._entry_ptr.23, ptr @nvkm_falcon_init._entry_ptr.26, ptr @nvkm_falcon_init._entry_ptr.31, ptr @nvkm_falcon_init._entry_ptr.34, ptr @nvkm_falcon_intr._entry, ptr @nvkm_falcon_intr._entry.37, ptr @nvkm_falcon_intr._entry_ptr, ptr @nvkm_falcon_intr._entry_ptr.39, ptr @nvkm_falcon_oneinit._entry, ptr @nvkm_falcon_oneinit._entry.11, ptr @nvkm_falcon_oneinit._entry.5, ptr @nvkm_falcon_oneinit._entry.8, ptr @nvkm_falcon_oneinit._entry_ptr, ptr @nvkm_falcon_oneinit._entry_ptr.10, ptr @nvkm_falcon_oneinit._entry_ptr.13, ptr @nvkm_falcon_oneinit._entry_ptr.7, ptr @nvkm_falcon, ptr @nvkm_falcon_cclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_cclass to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_oneinit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_oneinit._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_oneinit._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_intr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, i32 noundef %addr, ptr nocapture noundef writeonly %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 452) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  %addr2 = getelementptr inbounds %struct.nvkm_falcon, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %addr2, align 4
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %data4 = getelementptr inbounds %struct.nvkm_falcon, ptr %call7.i.i, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %data4, align 8
  %size = getelementptr inbounds %struct.anon, ptr %func, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %size7 = getelementptr inbounds %struct.nvkm_falcon, ptr %call7.i.i, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %size7, align 4
  %data8 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %func, i32 0, i32 1
  %9 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data8, align 4
  %data11 = getelementptr inbounds %struct.nvkm_falcon, ptr %call7.i.i, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %data11, align 8
  %size13 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %func, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size13, align 4
  %size15 = getelementptr inbounds %struct.nvkm_falcon, ptr %call7.i.i, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size15, align 4
  %engine = getelementptr inbounds %struct.nvkm_falcon, ptr %call7.i.i, i32 0, i32 15
  %15 = ptrtoint ptr %pengine to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %engine, ptr %pengine, align 4
  %call18 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_falcon, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr noundef %engine) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_falcon_dtor(ptr noundef readnone %engine) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -252
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_oneinit(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %addr = getelementptr i8, ptr %engine, i32 -240
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  %.fr = freeze i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %.fr)
  %cmp = icmp ult i32 %.fr, 163
  br i1 %cmp, label %entry.if.then_crit_edge, label %switch.early.test

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

switch.early.test:                                ; preds = %entry
  %6 = zext i32 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.fr, label %if.else [
    i32 172, label %switch.early.test.if.then_crit_edge
    i32 170, label %switch.early.test.if.then_crit_edge133
  ]

switch.early.test.if.then_crit_edge133:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

switch.early.test.if.then_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %switch.early.test.if.then_crit_edge, %switch.early.test.if.then_crit_edge133, %entry.if.then_crit_edge
  %version = getelementptr i8, ptr %engine, i32 -44
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 552960, i32 %3)
  %cmp10 = icmp eq i32 %3, 552960
  %conv = zext i1 %cmp10 to i8
  br label %if.end

if.else:                                          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add = add i32 %3, 300
  %add.ptr11 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %11 = trunc i32 %10 to i8
  %conv13 = and i8 %11, 15
  %version14 = getelementptr i8, ptr %engine, i32 -44
  %12 = ptrtoint ptr %version14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %version14, align 4
  %13 = lshr i8 %11, 4
  %conv16 = and i8 %13, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv16.sink = phi i8 [ %conv16, %if.else ], [ %conv, %if.then ]
  %secret17 = getelementptr i8, ptr %engine, i32 -43
  %14 = ptrtoint ptr %secret17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16.sink, ptr %secret17, align 1
  %pri19 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %pri19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri19, align 4
  %add20 = add i32 %3, 264
  %add.ptr21 = getelementptr i8, ptr %16, i32 %add20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  %and24 = shl i32 %17, 8
  %shl = and i32 %and24, 130816
  %code = getelementptr i8, ptr %engine, i32 -32
  %18 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl, ptr %code, align 4
  %and25 = lshr i32 %17, 1
  %shr26 = and i32 %and25, 130816
  %data = getelementptr i8, ptr %engine, i32 -16
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr26, ptr %data, align 4
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp28 = icmp ugt i32 %21, 3
  br i1 %cmp28, label %if.end35, label %if.end.if.end89_crit_edge

if.end.if.end89_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.end35:                                         ; preds = %if.end
  %22 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  %version33 = getelementptr i8, ptr %engine, i32 -44
  %26 = ptrtoint ptr %version33 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %version33, align 4
  %conv34 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv34) #13
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp41 = icmp ugt i32 %.pr, 3
  br i1 %cmp41, label %if.end53, label %if.end35.if.end89_crit_edge

if.end35.if.end89_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.end53:                                         ; preds = %if.end35
  %29 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device3, align 4
  %dev48 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev48, align 8
  %secret51 = getelementptr i8, ptr %engine, i32 -43
  %33 = ptrtoint ptr %secret51 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %secret51, align 1
  %conv52 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %conv52) #13
  %35 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr126 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr126)
  %cmp59 = icmp ugt i32 %.pr126, 3
  br i1 %cmp59, label %if.end71, label %if.end53.if.end89_crit_edge

if.end53.if.end89_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.end71:                                         ; preds = %if.end53
  %36 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device3, align 4
  %dev66 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev66, align 8
  %40 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %code, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %41) #13
  %42 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr128.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr128.pr)
  %cmp77 = icmp ugt i32 %.pr128.pr, 3
  br i1 %cmp77, label %do.end82, label %if.end71.if.end89_crit_edge

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end82:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device3, align 4
  %dev84 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev84, align 8
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %48) #13
  br label %if.end89

if.end89:                                         ; preds = %do.end82, %if.end71.if.end89_crit_edge, %if.end53.if.end89_crit_edge, %if.end35.if.end89_crit_edge, %if.end.if.end89_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_init(ptr noundef %engine) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %name = alloca [32 x i8], align 1
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait53 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -252
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #9
  %3 = call ptr @memcpy(ptr %name, ptr @__const.nvkm_falcon_init.name, i32 32)
  %addr = getelementptr i8, ptr %engine, i32 -240
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %secret = getelementptr i8, ptr %engine, i32 -43
  %6 = ptrtoint ptr %secret to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %secret, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.do.body124_crit_edge, label %land.lhs.true

entry.do.body124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr i8, ptr %engine, i32 -44
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp = icmp ult i8 %9, 4
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body124_crit_edge

land.lhs.true.do.body124_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #9
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %add = add i32 %5, 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.then8
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 %add
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.cond, label %do.body.if.end51_crit_edge

do.body.if.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.cond:                                          ; preds = %do.body
  %call13 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #9
  %cmp14 = icmp sgt i64 %call13, -1
  br i1 %cmp14, label %do.cond.do.body_crit_edge, label %do.end29

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end29:                                         ; preds = %do.cond
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device31 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device31, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call32 = call ptr @dev_driver_string(ptr noundef %19) #9
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device35 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device35, align 4
  %dev36 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev36, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end29.dev_name.exit_crit_edge

do.end29.dev_name.exit_crit_edge:                 ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end29.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call32, ptr noundef %retval.0.i) #9
  br label %if.end51

if.end51:                                         ; preds = %dev_name.exit, %do.body.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #9
  br label %do.body117

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait53) #9
  %30 = call ptr @memset(ptr %_wait53, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait53) #9
  %pri58 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %add59 = add i32 %5, 384
  br label %do.body56

do.body56:                                        ; preds = %do.cond67.do.body56_crit_edge, %if.else
  %31 = ptrtoint ptr %pri58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri58, align 4
  %add.ptr60 = getelementptr i8, ptr %32, i32 %add59
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool64.not = icmp sgt i32 %33, -1
  br i1 %tobool64.not, label %do.body56.if.end114_crit_edge, label %do.cond67

do.body56.if.end114_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

do.cond67:                                        ; preds = %do.body56
  %call68 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait53) #9
  %cmp69 = icmp sgt i64 %call68, -1
  br i1 %cmp69, label %do.cond67.do.body56_crit_edge, label %do.end90

do.cond67.do.body56_crit_edge:                    ; preds = %do.cond67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

do.end90:                                         ; preds = %do.cond67
  %34 = ptrtoint ptr %_wait53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_wait53, align 8
  %device93 = getelementptr inbounds %struct.nvkm_timer, ptr %35, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %device93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device93, align 4
  %dev94 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev94, align 8
  %call95 = call ptr @dev_driver_string(ptr noundef %39) #9
  %40 = ptrtoint ptr %_wait53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_wait53, align 8
  %device98 = getelementptr inbounds %struct.nvkm_timer, ptr %41, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %device98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device98, align 4
  %dev99 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev99, align 8
  %init_name.i751 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i751 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i751, align 8
  %tobool.not.i752 = icmp eq ptr %47, null
  br i1 %tobool.not.i752, label %if.end.i753, label %do.end90.dev_name.exit755_crit_edge

do.end90.dev_name.exit755_crit_edge:              ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit755

if.end.i753:                                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  br label %dev_name.exit755

dev_name.exit755:                                 ; preds = %if.end.i753, %do.end90.dev_name.exit755_crit_edge
  %retval.0.i754 = phi ptr [ %49, %if.end.i753 ], [ %47, %do.end90.dev_name.exit755_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 181, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call95, ptr noundef %retval.0.i754) #9
  br label %if.end114

if.end114:                                        ; preds = %dev_name.exit755, %do.body56.if.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait53) #9
  br label %do.body117

do.body117:                                       ; preds = %if.end114, %if.end51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  call void @arm_heavy_mb() #9
  %pri120 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %pri120 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri120, align 4
  %add121 = add i32 %5, 4
  %add.ptr122 = getelementptr i8, ptr %51, i32 %add121
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 16) #9, !srcloc !81
  br label %do.body124

do.body124:                                       ; preds = %do.body117, %land.lhs.true.do.body124_crit_edge, %entry.do.body124_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @arm_heavy_mb() #9
  %pri127 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri127, align 4
  %add128 = add i32 %5, 20
  %add.ptr129 = getelementptr i8, ptr %53, i32 %add128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 -1) #9, !srcloc !81
  %code = getelementptr i8, ptr %engine, i32 -32
  %data = getelementptr i8, ptr %engine, i32 -28
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %tobool130.not = icmp eq ptr %55, null
  br i1 %tobool130.not, label %if.then131, label %do.body124.do.body236_crit_edge

do.body124.do.body236_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body236

if.then131:                                       ; preds = %do.body124
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %56 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chipset, align 4
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr, align 4
  %shr = lshr i32 %59, 12
  %call133 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %57, i32 noundef %shr)
  %dev135 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev135, align 8
  %call136 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %name, ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.then131.if.end152_crit_edge

if.then131.if.end152_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then139:                                       ; preds = %if.then131
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw, align 4
  %data140 = getelementptr inbounds %struct.firmware, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %data140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data140, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %63, align 4
  %call.i = call noalias ptr @vmalloc(i32 noundef %67) #14
  %tobool.not.i756 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i756, label %if.then139.vmemdup.exit_crit_edge, label %if.then.i

if.then139.vmemdup.exit_crit_edge:                ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %vmemdup.exit

if.then.i:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  %68 = call ptr @memcpy(ptr %call.i, ptr %65, i32 %67)
  br label %vmemdup.exit

vmemdup.exit:                                     ; preds = %if.then.i, %if.then139.vmemdup.exit_crit_edge
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %data, align 4
  %70 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %size146 = getelementptr i8, ptr %engine, i32 -24
  %74 = ptrtoint ptr %size146 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %size146, align 4
  %data148 = getelementptr i8, ptr %engine, i32 -12
  %75 = ptrtoint ptr %data148 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %data148, align 4
  %size150 = getelementptr i8, ptr %engine, i32 -8
  %76 = ptrtoint ptr %size150 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %size150, align 4
  call void @release_firmware(ptr noundef %71) #9
  br label %if.end152

if.end152:                                        ; preds = %vmemdup.exit, %if.then131.if.end152_crit_edge
  %external = getelementptr i8, ptr %engine, i32 -36
  %77 = ptrtoint ptr %external to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %external, align 4
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr = load ptr, ptr %data, align 4
  %tobool155.not = icmp eq ptr %.pr, null
  br i1 %tobool155.not, label %if.then156, label %if.end152.do.body236_crit_edge

if.end152.do.body236_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body236

if.then156:                                       ; preds = %if.end152
  %79 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chipset, align 4
  %81 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr, align 4
  %shr160 = lshr i32 %82, 12
  %call161 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %80, i32 noundef %shr160)
  %83 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev135, align 8
  %call164 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %name, ptr noundef %84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end181, label %do.body167

do.body167:                                       ; preds = %if.then156
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %85 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp168.not = icmp eq i32 %86, 0
  br i1 %cmp168.not, label %do.body167.cleanup_crit_edge, label %do.end173

do.body167.cleanup_crit_edge:                     ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device3, align 4
  %dev175 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev175, align 8
  %name176 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.17, ptr noundef %name176) #13
  br label %cleanup

if.end181:                                        ; preds = %if.then156
  %91 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fw, align 4
  %data182 = getelementptr inbounds %struct.firmware, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %data182 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data182, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %92, align 4
  %call.i758 = call noalias ptr @vmalloc(i32 noundef %96) #14
  %tobool.not.i759 = icmp eq ptr %call.i758, null
  br i1 %tobool.not.i759, label %if.end181.vmemdup.exit762_crit_edge, label %if.then.i760

if.end181.vmemdup.exit762_crit_edge:              ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %vmemdup.exit762

if.then.i760:                                     ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %97 = call ptr @memcpy(ptr %call.i758, ptr %94, i32 %96)
  br label %vmemdup.exit762

vmemdup.exit762:                                  ; preds = %if.then.i760, %if.end181.vmemdup.exit762_crit_edge
  %data186 = getelementptr i8, ptr %engine, i32 -12
  %98 = ptrtoint ptr %data186 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i758, ptr %data186, align 4
  %99 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fw, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %size189 = getelementptr i8, ptr %engine, i32 -8
  %103 = ptrtoint ptr %size189 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %size189, align 4
  call void @release_firmware(ptr noundef %100) #9
  %104 = ptrtoint ptr %data186 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data186, align 4
  %tobool192.not = icmp eq ptr %105, null
  br i1 %tobool192.not, label %vmemdup.exit762.cleanup_crit_edge, label %if.end194

vmemdup.exit762.cleanup_crit_edge:                ; preds = %vmemdup.exit762
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end194:                                        ; preds = %vmemdup.exit762
  %106 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chipset, align 4
  %108 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %addr, align 4
  %shr198 = lshr i32 %109, 12
  %call199 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %107, i32 noundef %shr198)
  %110 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev135, align 8
  %call202 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %name, ptr noundef %111) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end221, label %do.body205

do.body205:                                       ; preds = %if.end194
  %debug207 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %112 = ptrtoint ptr %debug207 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %debug207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp208.not = icmp eq i32 %113, 0
  br i1 %cmp208.not, label %do.body205.cleanup_crit_edge, label %do.end213

do.body205.cleanup_crit_edge:                     ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end213:                                        ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device3, align 4
  %dev215 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev215, align 8
  %name216 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.22, ptr noundef %name216) #13
  br label %cleanup

if.end221:                                        ; preds = %if.end194
  %118 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw, align 4
  %data222 = getelementptr inbounds %struct.firmware, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %data222 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data222, align 4
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %119, align 4
  %call.i763 = call noalias ptr @vmalloc(i32 noundef %123) #14
  %tobool.not.i764 = icmp eq ptr %call.i763, null
  br i1 %tobool.not.i764, label %if.end221.vmemdup.exit767_crit_edge, label %if.then.i765

if.end221.vmemdup.exit767_crit_edge:              ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %vmemdup.exit767

if.then.i765:                                     ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  %124 = call ptr @memcpy(ptr %call.i763, ptr %121, i32 %123)
  br label %vmemdup.exit767

vmemdup.exit767:                                  ; preds = %if.then.i765, %if.end221.vmemdup.exit767_crit_edge
  %125 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i763, ptr %data, align 4
  %126 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fw, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %size229 = getelementptr i8, ptr %engine, i32 -24
  %130 = ptrtoint ptr %size229 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %size229, align 4
  call void @release_firmware(ptr noundef %127) #9
  %131 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data, align 4
  %tobool232.not = icmp eq ptr %132, null
  br i1 %tobool232.not, label %vmemdup.exit767.cleanup_crit_edge, label %vmemdup.exit767.do.body236_crit_edge

vmemdup.exit767.do.body236_crit_edge:             ; preds = %vmemdup.exit767
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body236

vmemdup.exit767.cleanup_crit_edge:                ; preds = %vmemdup.exit767
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body236:                                       ; preds = %vmemdup.exit767.do.body236_crit_edge, %if.end152.do.body236_crit_edge, %do.body124.do.body236_crit_edge
  %debug238 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %133 = ptrtoint ptr %debug238 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %debug238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp239 = icmp ugt i32 %134, 3
  br i1 %cmp239, label %do.end244, label %do.body236.if.end253_crit_edge

do.body236.if.end253_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253

do.end244:                                        ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device3, align 4
  %dev246 = getelementptr inbounds %struct.nvkm_device, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %dev246 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev246, align 8
  %name247 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  %data251 = getelementptr i8, ptr %engine, i32 -12
  %139 = ptrtoint ptr %data251 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data251, align 4
  %tobool252.not = icmp eq ptr %140, null
  %cond = select i1 %tobool252.not, ptr @.str.28, ptr @.str.27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %138, ptr noundef nonnull @.str.25, ptr noundef %name247, ptr noundef nonnull %name, ptr noundef nonnull %cond) #13
  br label %if.end253

if.end253:                                        ; preds = %do.end244, %do.body236.if.end253_crit_edge
  %data256 = getelementptr i8, ptr %engine, i32 -16
  %data257 = getelementptr i8, ptr %engine, i32 -12
  %141 = ptrtoint ptr %data257 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data257, align 4
  %tobool258.not = icmp eq ptr %142, null
  br i1 %tobool258.not, label %land.lhs.true259, label %if.end253.if.end302_crit_edge

if.end253.if.end302_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302

land.lhs.true259:                                 ; preds = %if.end253
  %core = getelementptr i8, ptr %engine, i32 -40
  %143 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %core, align 4
  %tobool260.not = icmp eq ptr %144, null
  br i1 %tobool260.not, label %if.then261, label %land.lhs.true259.if.end302_crit_edge

land.lhs.true259.if.end302_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302

if.then261:                                       ; preds = %land.lhs.true259
  %size263 = getelementptr i8, ptr %engine, i32 -24
  %145 = ptrtoint ptr %size263 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %size263, align 4
  %conv264 = zext i32 %146 to i64
  %call266 = call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv264, i32 noundef 256, i1 noundef zeroext false, ptr noundef %core) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %if.end285, label %do.body269

do.body269:                                       ; preds = %if.then261
  %147 = ptrtoint ptr %debug238 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %debug238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp272.not = icmp eq i32 %148, 0
  br i1 %cmp272.not, label %do.body269.cleanup_crit_edge, label %do.end277

do.body269.cleanup_crit_edge:                     ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end277:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device3, align 4
  %dev279 = getelementptr inbounds %struct.nvkm_device, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %dev279 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev279, align 8
  %name280 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.30, ptr noundef %name280, i32 noundef %call266) #13
  br label %cleanup

if.end285:                                        ; preds = %if.then261
  %153 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %core, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %acquire, align 4
  %call288 = call ptr %158(ptr noundef %154) #9
  %159 = ptrtoint ptr %size263 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %size263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp291775.not = icmp eq i32 %160, 0
  br i1 %cmp291775.not, label %if.end285.for.end_crit_edge, label %if.end285.for.body_crit_edge

if.end285.for.body_crit_edge:                     ; preds = %if.end285
  br label %for.body

if.end285.for.end_crit_edge:                      ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end285.for.body_crit_edge
  %i.0776 = phi i32 [ %add298, %for.body.for.body_crit_edge ], [ 0, %if.end285.for.body_crit_edge ]
  %161 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %core, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wr32, align 4
  %conv295 = sext i32 %i.0776 to i64
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data, align 4
  %div = sdiv i32 %i.0776, 4
  %arrayidx = getelementptr i32, ptr %168, i32 %div
  %169 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx, align 4
  call void %166(ptr noundef %162, i64 noundef %conv295, i32 noundef %170) #9
  %add298 = add i32 %i.0776, 4
  %171 = ptrtoint ptr %size263 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %size263, align 4
  %cmp291 = icmp ult i32 %add298, %172
  br i1 %cmp291, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end285.for.end_crit_edge
  %173 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %core, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %176, i32 0, i32 8
  %177 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %release, align 4
  call void %178(ptr noundef %174) #9
  br label %if.end302

if.end302:                                        ; preds = %for.end, %land.lhs.true259.if.end302_crit_edge, %if.end253.if.end302_crit_edge
  %core303 = getelementptr i8, ptr %engine, i32 -40
  %179 = ptrtoint ptr %core303 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %core303, align 4
  %tobool304.not = icmp eq ptr %180, null
  br i1 %tobool304.not, label %if.else355, label %if.then305

if.then305:                                       ; preds = %if.end302
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %addr309 = getelementptr inbounds %struct.nvkm_memory_func, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %addr309 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %addr309, align 4
  %call311 = call i64 %184(ptr noundef nonnull %180) #9
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %185 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %186)
  %cmp312 = icmp ult i32 %186, 192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %187 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pri127, align 4
  %add319 = add i32 %5, 1560
  %add.ptr320 = getelementptr i8, ptr %188, i32 %add319
  br i1 %cmp312, label %do.body315, label %do.body322

do.body315:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 67108864) #9, !srcloc !81
  br label %do.body329

do.body322:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 276) #9, !srcloc !81
  br label %do.body329

do.body329:                                       ; preds = %do.body322, %do.body315
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @arm_heavy_mb() #9
  %189 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pri127, align 4
  %add333 = add i32 %5, 284
  %add.ptr334 = getelementptr i8, ptr %190, i32 %add333
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr334, i32 0) #9, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  call void @arm_heavy_mb() #9
  %shr338 = lshr i64 %call311, 8
  %conv339 = trunc i64 %shr338 to i32
  %191 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pri127, align 4
  %add341 = add i32 %5, 272
  %add.ptr342 = getelementptr i8, ptr %192, i32 %add341
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr342, i32 %conv339) #9, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @arm_heavy_mb() #9
  %193 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pri127, align 4
  %add347 = add i32 %5, 276
  %add.ptr348 = getelementptr i8, ptr %194, i32 %add347
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr348, i32 0) #9, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @arm_heavy_mb() #9
  %195 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pri127, align 4
  %add353 = add i32 %5, 280
  %add.ptr354 = getelementptr i8, ptr %196, i32 %add353
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354, i32 26128) #9, !srcloc !81
  br label %if.end453

if.else355:                                       ; preds = %if.end302
  %size357 = getelementptr i8, ptr %engine, i32 -24
  %197 = ptrtoint ptr %size357 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %size357, align 4
  %199 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %200)
  %cmp359 = icmp ugt i32 %198, %200
  br i1 %cmp359, label %if.else355.do.body368_crit_edge, label %lor.lhs.false

if.else355.do.body368_crit_edge:                  ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body368

lor.lhs.false:                                    ; preds = %if.else355
  %size362 = getelementptr i8, ptr %engine, i32 -8
  %201 = ptrtoint ptr %size362 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %size362, align 4
  %203 = ptrtoint ptr %data256 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %data256, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp365 = icmp ugt i32 %202, %204
  br i1 %cmp365, label %lor.lhs.false.do.body368_crit_edge, label %if.end384

lor.lhs.false.do.body368_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body368

do.body368:                                       ; preds = %lor.lhs.false.do.body368_crit_edge, %if.else355.do.body368_crit_edge
  %205 = ptrtoint ptr %debug238 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %debug238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp371.not = icmp eq i32 %206, 0
  br i1 %cmp371.not, label %do.body368.cleanup_crit_edge, label %do.end376

do.body368.cleanup_crit_edge:                     ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end376:                                        ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %device3, align 4
  %dev378 = getelementptr inbounds %struct.nvkm_device, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %dev378 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev378, align 8
  %name379 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.33, ptr noundef %name379) #13
  br label %cleanup

if.end384:                                        ; preds = %lor.lhs.false
  %version385 = getelementptr i8, ptr %engine, i32 -44
  %211 = ptrtoint ptr %version385 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %version385, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %212)
  %cmp387 = icmp ult i8 %212, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %213 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pri127, align 4
  br i1 %cmp387, label %do.body390, label %do.body415

do.body390:                                       ; preds = %if.end384
  %add394 = add i32 %5, 4088
  %add.ptr395 = getelementptr i8, ptr %214, i32 %add394
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr395, i32 1048576) #9, !srcloc !81
  %215 = ptrtoint ptr %size357 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %size357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %216)
  %cmp400782.not = icmp ult i32 %216, 4
  br i1 %cmp400782.not, label %do.body390.if.end453_crit_edge, label %do.body403.lr.ph

do.body390.if.end453_crit_edge:                   ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end453

do.body403.lr.ph:                                 ; preds = %do.body390
  %add410 = add i32 %5, 4084
  br label %do.body403

do.body403:                                       ; preds = %do.body403.do.body403_crit_edge, %do.body403.lr.ph
  %i.1783 = phi i32 [ 0, %do.body403.lr.ph ], [ %inc, %do.body403.do.body403_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @arm_heavy_mb() #9
  %217 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data, align 4
  %arrayidx408 = getelementptr i32, ptr %218, i32 %i.1783
  %219 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx408, align 4
  %221 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pri127, align 4
  %add.ptr411 = getelementptr i8, ptr %222, i32 %add410
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr411, i32 %220) #9, !srcloc !81
  %inc = add nuw nsw i32 %i.1783, 1
  %223 = ptrtoint ptr %size357 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %size357, align 4
  %div399750 = lshr i32 %224, 2
  %cmp400 = icmp ult i32 %inc, %div399750
  br i1 %cmp400, label %do.body403.do.body403_crit_edge, label %do.body403.if.end453_crit_edge

do.body403.if.end453_crit_edge:                   ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end453

do.body403.do.body403_crit_edge:                  ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body403

do.body415:                                       ; preds = %if.end384
  %add419 = add i32 %5, 384
  %add.ptr420 = getelementptr i8, ptr %214, i32 %add419
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr420, i32 16777216) #9, !srcloc !81
  %225 = ptrtoint ptr %size357 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %size357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %226)
  %cmp425778.not = icmp ult i32 %226, 4
  br i1 %cmp425778.not, label %do.body415.if.end453_crit_edge, label %for.body427.lr.ph

do.body415.if.end453_crit_edge:                   ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end453

for.body427.lr.ph:                                ; preds = %do.body415
  %add437 = add i32 %5, 392
  %add447 = add i32 %5, 388
  br label %for.body427

for.body427:                                      ; preds = %do.body440.for.body427_crit_edge, %for.body427.lr.ph
  %i.2779 = phi i32 [ 0, %for.body427.lr.ph ], [ %inc450, %do.body440.for.body427_crit_edge ]
  %and428 = and i32 %i.2779, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %cmp429 = icmp eq i32 %and428, 0
  br i1 %cmp429, label %do.body432, label %for.body427.do.body440_crit_edge

for.body427.do.body440_crit_edge:                 ; preds = %for.body427
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body440

do.body432:                                       ; preds = %for.body427
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  call void @arm_heavy_mb() #9
  %227 = lshr i32 %i.2779, 6
  %228 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %pri127, align 4
  %add.ptr438 = getelementptr i8, ptr %229, i32 %add437
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr438, i32 %227) #9, !srcloc !81
  br label %do.body440

do.body440:                                       ; preds = %do.body432, %for.body427.do.body440_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @arm_heavy_mb() #9
  %230 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %data, align 4
  %arrayidx445 = getelementptr i32, ptr %231, i32 %i.2779
  %232 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx445, align 4
  %234 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pri127, align 4
  %add.ptr448 = getelementptr i8, ptr %235, i32 %add447
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr448, i32 %233) #9, !srcloc !81
  %inc450 = add nuw nsw i32 %i.2779, 1
  %236 = ptrtoint ptr %size357 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %size357, align 4
  %div424746 = lshr i32 %237, 2
  %cmp425 = icmp ult i32 %inc450, %div424746
  br i1 %cmp425, label %do.body440.for.body427_crit_edge, label %do.body440.if.end453_crit_edge

do.body440.if.end453_crit_edge:                   ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end453

do.body440.for.body427_crit_edge:                 ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body427

if.end453:                                        ; preds = %do.body440.if.end453_crit_edge, %do.body415.if.end453_crit_edge, %do.body403.if.end453_crit_edge, %do.body390.if.end453_crit_edge, %do.body329
  %version454 = getelementptr i8, ptr %engine, i32 -44
  %238 = ptrtoint ptr %version454 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %version454, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %239)
  %cmp456 = icmp ult i8 %239, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %240 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pri127, align 4
  br i1 %cmp456, label %do.body459, label %do.body502

do.body459:                                       ; preds = %if.end453
  %add463 = add i32 %5, 4088
  %add.ptr464 = getelementptr i8, ptr %241, i32 %add463
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr464, i32 0) #9, !srcloc !81
  %size469 = getelementptr i8, ptr %engine, i32 -8
  %242 = ptrtoint ptr %core303 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %core303, align 4
  %tobool467.not790 = icmp eq ptr %243, null
  br i1 %tobool467.not790, label %land.rhs.lr.ph, label %do.body459.for.end485_crit_edge

do.body459.for.end485_crit_edge:                  ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end485

land.rhs.lr.ph:                                   ; preds = %do.body459
  %add481 = add i32 %5, 4084
  br label %land.rhs

land.rhs:                                         ; preds = %do.body474.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.3791 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc484, %do.body474.land.rhs_crit_edge ]
  %244 = ptrtoint ptr %size469 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %size469, align 4
  %div470749 = lshr i32 %245, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3791, i32 %div470749)
  %cmp471 = icmp ult i32 %i.3791, %div470749
  br i1 %cmp471, label %do.body474, label %land.rhs.for.end485_crit_edge

land.rhs.for.end485_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end485

do.body474:                                       ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %246 = ptrtoint ptr %data257 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data257, align 4
  %arrayidx479 = getelementptr i32, ptr %247, i32 %i.3791
  %248 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx479, align 4
  %250 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pri127, align 4
  %add.ptr482 = getelementptr i8, ptr %251, i32 %add481
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr482, i32 %249) #9, !srcloc !81
  %inc484 = add nuw nsw i32 %i.3791, 1
  %252 = ptrtoint ptr %core303 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %core303, align 4
  %tobool467.not = icmp eq ptr %253, null
  br i1 %tobool467.not, label %do.body474.land.rhs_crit_edge, label %do.body474.for.end485_crit_edge

do.body474.for.end485_crit_edge:                  ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end485

do.body474.land.rhs_crit_edge:                    ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end485:                                       ; preds = %do.body474.for.end485_crit_edge, %land.rhs.for.end485_crit_edge, %do.body459.for.end485_crit_edge
  %i.3.lcssa = phi i32 [ 0, %do.body459.for.end485_crit_edge ], [ %inc484, %do.body474.for.end485_crit_edge ], [ %i.3791, %land.rhs.for.end485_crit_edge ]
  %254 = ptrtoint ptr %data256 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %data256, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.lcssa, i32 %255)
  %cmp489794 = icmp ult i32 %i.3.lcssa, %255
  br i1 %cmp489794, label %do.body492.lr.ph, label %for.end485.do.body548_crit_edge

for.end485.do.body548_crit_edge:                  ; preds = %for.end485
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body548

do.body492.lr.ph:                                 ; preds = %for.end485
  %add496 = add i32 %5, 4084
  br label %do.body492

do.body492:                                       ; preds = %do.body492.do.body492_crit_edge, %do.body492.lr.ph
  %i.4795 = phi i32 [ %i.3.lcssa, %do.body492.lr.ph ], [ %add499, %do.body492.do.body492_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @arm_heavy_mb() #9
  %256 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pri127, align 4
  %add.ptr497 = getelementptr i8, ptr %257, i32 %add496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr497, i32 0) #9, !srcloc !81
  %add499 = add i32 %i.4795, 4
  %258 = ptrtoint ptr %data256 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %data256, align 4
  %cmp489 = icmp ult i32 %add499, %259
  br i1 %cmp489, label %do.body492.do.body492_crit_edge, label %do.body492.do.body548_crit_edge

do.body492.do.body548_crit_edge:                  ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body548

do.body492.do.body492_crit_edge:                  ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body492

do.body502:                                       ; preds = %if.end453
  %add506 = add i32 %5, 448
  %add.ptr507 = getelementptr i8, ptr %241, i32 %add506
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr507, i32 16777216) #9, !srcloc !81
  %size513 = getelementptr i8, ptr %engine, i32 -8
  %260 = ptrtoint ptr %core303 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %core303, align 4
  %tobool510.not784 = icmp eq ptr %261, null
  br i1 %tobool510.not784, label %land.rhs511.lr.ph, label %do.body502.for.end530_crit_edge

do.body502.for.end530_crit_edge:                  ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

land.rhs511.lr.ph:                                ; preds = %do.body502
  %add526 = add i32 %5, 452
  br label %land.rhs511

land.rhs511:                                      ; preds = %do.body519.land.rhs511_crit_edge, %land.rhs511.lr.ph
  %i.5785 = phi i32 [ 0, %land.rhs511.lr.ph ], [ %inc529, %do.body519.land.rhs511_crit_edge ]
  %262 = ptrtoint ptr %size513 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %size513, align 4
  %div514747 = lshr i32 %263, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5785, i32 %div514747)
  %cmp515 = icmp ult i32 %i.5785, %div514747
  br i1 %cmp515, label %do.body519, label %land.rhs511.for.end530_crit_edge

land.rhs511.for.end530_crit_edge:                 ; preds = %land.rhs511
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

do.body519:                                       ; preds = %land.rhs511
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  call void @arm_heavy_mb() #9
  %264 = ptrtoint ptr %data257 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %data257, align 4
  %arrayidx524 = getelementptr i32, ptr %265, i32 %i.5785
  %266 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx524, align 4
  %268 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pri127, align 4
  %add.ptr527 = getelementptr i8, ptr %269, i32 %add526
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr527, i32 %267) #9, !srcloc !81
  %inc529 = add nuw nsw i32 %i.5785, 1
  %270 = ptrtoint ptr %core303 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %core303, align 4
  %tobool510.not = icmp eq ptr %271, null
  br i1 %tobool510.not, label %do.body519.land.rhs511_crit_edge, label %do.body519.for.end530_crit_edge

do.body519.for.end530_crit_edge:                  ; preds = %do.body519
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end530

do.body519.land.rhs511_crit_edge:                 ; preds = %do.body519
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs511

for.end530:                                       ; preds = %do.body519.for.end530_crit_edge, %land.rhs511.for.end530_crit_edge, %do.body502.for.end530_crit_edge
  %i.5.lcssa = phi i32 [ 0, %do.body502.for.end530_crit_edge ], [ %inc529, %do.body519.for.end530_crit_edge ], [ %i.5785, %land.rhs511.for.end530_crit_edge ]
  %272 = ptrtoint ptr %data256 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %data256, align 4
  %div534748787 = lshr i32 %273, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5.lcssa, i32 %div534748787)
  %cmp535788 = icmp ult i32 %i.5.lcssa, %div534748787
  br i1 %cmp535788, label %do.body538.lr.ph, label %for.end530.do.body548_crit_edge

for.end530.do.body548_crit_edge:                  ; preds = %for.end530
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body548

do.body538.lr.ph:                                 ; preds = %for.end530
  %add542 = add i32 %5, 452
  br label %do.body538

do.body538:                                       ; preds = %do.body538.do.body538_crit_edge, %do.body538.lr.ph
  %i.6789 = phi i32 [ %i.5.lcssa, %do.body538.lr.ph ], [ %inc545, %do.body538.do.body538_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  call void @arm_heavy_mb() #9
  %274 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pri127, align 4
  %add.ptr543 = getelementptr i8, ptr %275, i32 %add542
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr543, i32 0) #9, !srcloc !81
  %inc545 = add nuw nsw i32 %i.6789, 1
  %276 = ptrtoint ptr %data256 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %data256, align 4
  %div534748 = lshr i32 %277, 2
  %cmp535 = icmp ult i32 %inc545, %div534748
  br i1 %cmp535, label %do.body538.do.body538_crit_edge, label %do.body538.do.body548_crit_edge

do.body538.do.body548_crit_edge:                  ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body548

do.body538.do.body538_crit_edge:                  ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body538

do.body548:                                       ; preds = %do.body538.do.body548_crit_edge, %for.end530.do.body548_crit_edge, %do.body492.do.body548_crit_edge, %for.end485.do.body548_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %pri127, align 4
  %add552 = add i32 %5, 268
  %add.ptr553 = getelementptr i8, ptr %279, i32 %add552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr553, i32 1) #9, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @arm_heavy_mb() #9
  %280 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pri127, align 4
  %add558 = add i32 %5, 260
  %add.ptr559 = getelementptr i8, ptr %281, i32 %add558
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr559, i32 0) #9, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @arm_heavy_mb() #9
  %282 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pri127, align 4
  %add564 = add i32 %5, 256
  %add.ptr565 = getelementptr i8, ptr %283, i32 %add564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr565, i32 2) #9, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @arm_heavy_mb() #9
  %284 = ptrtoint ptr %pri127 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %pri127, align 4
  %add570 = add i32 %5, 72
  %add.ptr571 = getelementptr i8, ptr %285, i32 %add570
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr571, i32 3) #9, !srcloc !81
  %286 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_falcon_func, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %init, align 4
  %tobool573.not = icmp eq ptr %289, null
  br i1 %tobool573.not, label %do.body548.cleanup_crit_edge, label %if.then574

do.body548.cleanup_crit_edge:                     ; preds = %do.body548
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then574:                                       ; preds = %do.body548
  call void @__sanitizer_cov_trace_pc() #11
  call void %289(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then574, %do.body548.cleanup_crit_edge, %do.end376, %do.body368.cleanup_crit_edge, %do.end277, %do.body269.cleanup_crit_edge, %vmemdup.exit767.cleanup_crit_edge, %do.end213, %do.body205.cleanup_crit_edge, %vmemdup.exit762.cleanup_crit_edge, %do.end173, %do.body167.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end173 ], [ -19, %do.body167.cleanup_crit_edge ], [ -12, %vmemdup.exit762.cleanup_crit_edge ], [ -19, %do.end213 ], [ -19, %do.body205.cleanup_crit_edge ], [ -12, %vmemdup.exit767.cleanup_crit_edge ], [ %call266, %do.end277 ], [ %call266, %do.body269.cleanup_crit_edge ], [ -22, %do.end376 ], [ -22, %do.body368.cleanup_crit_edge ], [ 0, %if.then574 ], [ 0, %do.body548.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %addr = getelementptr i8, ptr %engine, i32 -240
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  br i1 %suspend, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %core = getelementptr i8, ptr %engine, i32 -40
  tail call void @nvkm_memory_unref(ptr noundef %core) #9
  %external = getelementptr i8, ptr %engine, i32 -36
  %4 = ptrtoint ptr %external to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %external, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %data5 = getelementptr i8, ptr %engine, i32 -12
  %6 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data5, align 4
  tail call void @vfree(ptr noundef %7) #9
  %data6 = getelementptr i8, ptr %engine, i32 -28
  %8 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data6, align 4
  tail call void @vfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %data6, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %inst = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inst, align 4
  %call = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %1, i32 noundef %12, i32 noundef %14) #9
  br i1 %call, label %if.then12, label %if.end9.if.end25_crit_edge

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %3, 72
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %and = and i32 %17, -4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %and) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add23 = add i32 %3, 20
  %add.ptr24 = getelementptr i8, ptr %21, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -1) #9, !srcloc !81
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %if.end9.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_falcon_intr(ptr noundef %engine) #0 align 64 {
entry:
  %chan = alloca ptr, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -252
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %addr = getelementptr i8, ptr %engine, i32 -240
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add = add i32 %3, 28
  %add.ptr4 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add8 = add i32 %3, 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 %add8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %shr = lshr i32 %6, 16
  %neg = xor i32 %shr, -1
  %and = and i32 %6, %neg
  %and12 = and i32 %and, %9
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add15 = add i32 %3, 80
  %add.ptr16 = getelementptr i8, ptr %11, i32 %add15
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  %and19 = and i32 %12, 1073741823
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %flags, align 4, !annotation !77
  %fifo = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %14 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo, align 8
  %conv = zext i32 %and19 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %call20 = call ptr @nvkm_fifo_chan_inst(ptr noundef %15, i64 noundef %shl, ptr noundef nonnull %flags) #9
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %chan, align 4
  %and21 = and i32 %and12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %entry
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %intr22 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %intr22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intr22, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.then.if.end31_crit_edge, label %if.then24

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void %20(ptr noundef %add.ptr, ptr noundef %call20) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add28 = add i32 %3, 4
  %add.ptr29 = getelementptr i8, ptr %22, i32 %add28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 64) #9, !srcloc !81
  %and30 = and i32 %and12, -65
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  %intr.0 = phi i32 [ %and30, %if.then24 ], [ %and12, %if.then.if.end31_crit_edge ], [ %and12, %entry.if.end31_crit_edge ]
  %and32 = and i32 %intr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end52_crit_edge, label %do.body35

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body35:                                        ; preds = %if.end31
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp = icmp ugt i32 %24, 3
  br i1 %cmp, label %do.end40, label %do.body35.if.end42_crit_edge

do.body35.if.end42_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.35, ptr noundef %name) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %do.body35.if.end42_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add49 = add i32 %3, 4
  %add.ptr50 = getelementptr i8, ptr %30, i32 %add49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 16) #9, !srcloc !81
  %and51 = and i32 %intr.0, -17
  br label %if.end52

if.end52:                                         ; preds = %if.end42, %if.end31.if.end52_crit_edge
  %intr.1 = phi i32 [ %and51, %if.end42 ], [ %intr.0, %if.end31.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr.1)
  %tobool53.not = icmp eq i32 %intr.1, 0
  br i1 %tobool53.not, label %if.end52.if.end77_crit_edge, label %do.body55

if.end52.if.end77_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.body55:                                        ; preds = %if.end52
  %debug57 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %debug57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp58.not = icmp eq i32 %32, 0
  br i1 %cmp58.not, label %do.body55.if.end68_crit_edge, label %do.end63

do.body55.if.end68_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.end63:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device3, align 4
  %dev65 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev65, align 8
  %name66 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef %name66, i32 noundef %intr.1) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end63, %do.body55.if.end68_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add75 = add i32 %3, 4
  %add.ptr76 = getelementptr i8, ptr %38, i32 %add75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %intr.1) #9, !srcloc !81
  br label %if.end77

if.end77:                                         ; preds = %if.end68, %if.end52.if.end77_crit_edge
  %39 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fifo, align 8
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %chan) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #9
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_oclass_get(ptr nocapture noundef %oclass, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -252
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %c.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %oclass1 = getelementptr %struct.nvkm_falcon_func, ptr %3, i32 0, i32 20, i32 %c.0, i32 2
  %4 = ptrtoint ptr %oclass1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oclass1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp = icmp eq i32 %c.0, %index
  br i1 %cmp, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %arrayidx4 = getelementptr %struct.nvkm_falcon_func, ptr %3, i32 0, i32 20, i32 %index
  %6 = call ptr @memcpy(ptr %base, ptr %arrayidx4, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %index, %if.then ], [ %c.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_cclass_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 256, i32 noundef %align, i1 noundef zeroext true, ptr noundef %parent, ptr noundef %pgpuobj) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @nvkm_falcon, !1, !"nvkm_falcon", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 327, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 152, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_falcon_oneinit._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_falcon_oneinit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 153, i32 2}
!12 = !{ptr @nvkm_falcon_oneinit._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_falcon_oneinit._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 154, i32 2}
!16 = !{ptr @nvkm_falcon_oneinit._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_falcon_oneinit._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 155, i32 2}
!20 = !{ptr @nvkm_falcon_oneinit._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_falcon_oneinit._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 173, i32 4}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 193, i32 32}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 212, i32 32}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 217, i32 4}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nvkm_falcon_init._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @nvkm_falcon_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 227, i32 32}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 232, i32 4}
!38 = !{ptr @nvkm_falcon_init._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvkm_falcon_init._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 243, i32 2}
!42 = !{ptr @nvkm_falcon_init._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nvkm_falcon_init._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 252, i32 4}
!48 = !{ptr @nvkm_falcon_init._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvkm_falcon_init._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 276, i32 4}
!52 = !{ptr @nvkm_falcon_init._entry.32, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvkm_falcon_init._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 82, i32 3}
!56 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nvkm_falcon_intr._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @nvkm_falcon_intr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 88, i32 3}
!61 = !{ptr @nvkm_falcon_intr._entry.37, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nvkm_falcon_intr._entry_ptr.39, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @nvkm_falcon_cclass, !64, !"nvkm_falcon_cclass", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c", i32 54, i32 1}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 5395931}
!75 = !{i64 2156272882}
!76 = !{i64 2156273279}
!77 = !{!"auto-init"}
!78 = !{i64 2156285405}
!79 = !{i64 2156288136}
!80 = !{i64 2156289378}
!81 = !{i64 5395513}
!82 = !{i64 2156289799}
!83 = !{i64 2156300797}
!84 = !{i64 2156301207}
!85 = !{i64 2156301609}
!86 = !{i64 2156302021}
!87 = !{i64 2156309264}
!88 = !{i64 2156310108}
!89 = !{i64 2156310545}
!90 = !{i64 2156311417}
!91 = !{i64 2156311848}
!92 = !{i64 2156312710}
!93 = !{i64 2156313141}
!94 = !{i64 2156313562}
!95 = !{i64 2156313983}
!96 = !{i64 2156314404}
!97 = !{i64 2156314825}
!98 = !{i8 0, i8 2}
!99 = !{i64 2156270262}
!100 = !{i64 2156270664}
!101 = !{i64 2156271117}
!102 = !{i64 2156261919}
!103 = !{i64 2156262316}
!104 = !{i64 2156262713}
!105 = !{i64 2156263063}
!106 = !{i64 2156265602}
!107 = !{i64 2156268114}
