; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_aux_func = type { i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gm200_i2c_aux = type { %struct.nvkm_i2c_aux, i32 }
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
%struct.nvkm_i2c_func = type { ptr, ptr, i32, ptr, ptr, ptr }

@gm200_i2c_aux_func = internal constant { %struct.nvkm_i2c_aux_func, [20 x i8] } { %struct.nvkm_i2c_aux_func { i8 1, ptr @gm200_i2c_aux_xfer, ptr null }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gm200_i2c_aux_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: aux %04x: %d: %08x %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gm200_i2c_aux_xfer\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_xfer._entry_ptr = internal global ptr @gm200_i2c_aux_xfer._entry, section ".printk_index", align 4
@gm200_i2c_aux_xfer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: aux %04x: sink not detected\0A\00", [63 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_xfer._entry_ptr.7 = internal global ptr @gm200_i2c_aux_xfer._entry.5, section ".printk_index", align 4
@gm200_i2c_aux_xfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: aux %04x: wr %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_xfer._entry_ptr.10 = internal global ptr @gm200_i2c_aux_xfer._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gm200_i2c_aux_xfer._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 132, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: aux %04x: timeout %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_xfer._entry_ptr.14 = internal global ptr @gm200_i2c_aux_xfer._entry.11, section ".printk_index", align 4
@gm200_i2c_aux_xfer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: aux %04x: %02d %08x %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_xfer._entry_ptr.17 = internal global ptr @gm200_i2c_aux_xfer._entry.15, section ".printk_index", align 4
@gm200_i2c_aux_xfer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: aux %04x: rd %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_xfer._entry_ptr.20 = internal global ptr @gm200_i2c_aux_xfer._entry.18, section ".printk_index", align 4
@gm200_i2c_aux_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 54, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: aux %04x: begin idle timeout %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gm200_i2c_aux_init\00", [45 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_init._entry_ptr = internal global ptr @gm200_i2c_aux_init._entry, section ".printk_index", align 4
@gm200_i2c_aux_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 66, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: aux %04x: magic wait %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@gm200_i2c_aux_init._entry_ptr.25 = internal global ptr @gm200_i2c_aux_init._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"gm200_i2c_aux_func\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 169, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 95, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 105, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 132, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 149, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 155, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 54, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 66, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @gm200_i2c_aux_init._entry, ptr @gm200_i2c_aux_init._entry.23, ptr @gm200_i2c_aux_init._entry_ptr, ptr @gm200_i2c_aux_init._entry_ptr.25, ptr @gm200_i2c_aux_xfer._entry, ptr @gm200_i2c_aux_xfer._entry.11, ptr @gm200_i2c_aux_xfer._entry.15, ptr @gm200_i2c_aux_xfer._entry.18, ptr @gm200_i2c_aux_xfer._entry.5, ptr @gm200_i2c_aux_xfer._entry.8, ptr @gm200_i2c_aux_xfer._entry_ptr, ptr @gm200_i2c_aux_xfer._entry_ptr.10, ptr @gm200_i2c_aux_xfer._entry_ptr.14, ptr @gm200_i2c_aux_xfer._entry_ptr.17, ptr @gm200_i2c_aux_xfer._entry_ptr.20, ptr @gm200_i2c_aux_xfer._entry_ptr.7, ptr @gm200_i2c_aux_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_func to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_xfer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_xfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_xfer._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_xfer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_xfer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_i2c_aux_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_i2c_aux_new(ptr noundef %pad, i32 noundef %index, i8 noundef zeroext %drive, ptr nocapture noundef writeonly %paux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1488) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %paux to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %paux, align 4
  %call2 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef nonnull @gm200_i2c_aux_func, ptr noundef %pad, i32 noundef %index, ptr noundef nonnull %call7.i.i) #5
  %conv = zext i8 %drive to i32
  %ch = getelementptr inbounds %struct.gm200_i2c_aux, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %ch, align 8
  %shl = shl nuw i32 1, %conv
  %intr = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %intr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm200_i2c_aux_xfer(ptr nocapture noundef readonly %obj, i1 noundef zeroext %retry, i8 noundef zeroext %type, i32 noundef %addr, ptr nocapture noundef %data, ptr nocapture noundef %size) #0 align 64 {
entry:
  %xbuf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c1 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %device2 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %ch = getelementptr inbounds %struct.gm200_i2c_aux, ptr %obj, i32 0, i32 1
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 8
  %mul = mul i32 %7, 80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xbuf)
  %8 = call ptr @memset(ptr %xbuf, i32 0, i32 16)
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp ugt i32 %10, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 2
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  %conv = zext i8 %type to i32
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %size, align 1
  %conv11 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %14, i32 noundef %conv, i32 noundef %addr, i32 noundef %conv11) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pad, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond16.i.do.body.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 1000, %if.end ], [ %dec.i, %do.cond16.i.do.body.i_crit_edge ]
  %23 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i, align 4
  %25 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch, align 8
  %mul.i = mul i32 %26, 80
  %add.i = add i32 %mul.i, 55636
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.cond16.i

do.body2.i:                                       ; preds = %do.body.i
  %29 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad, align 4
  %i2c6.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %i2c6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c6.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_i2c, ptr %32, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %do.body2.i.out_crit_edge, label %do.end.i

do.body2.i.out_crit_edge:                         ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end.i:                                         ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %device10.i = getelementptr inbounds %struct.nvkm_i2c, ptr %32, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %device10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device10.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_i2c, ptr %32, i32 0, i32 1, i32 4
  %id.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 2
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21, ptr noundef %name.i, i32 noundef %40, i32 noundef %27) #9
  br label %out

do.cond16.i:                                      ; preds = %do.body.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %and.i = and i32 %27, 117506048
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %do.end18.i, label %do.cond16.i.do.body.i_crit_edge

do.cond16.i.do.body.i_crit_edge:                  ; preds = %do.cond16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end18.i:                                       ; preds = %do.cond16.i
  %41 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ch, align 8
  %mul20.i = mul i32 %42, 80
  %add21.i = add i32 %mul20.i, 55636
  %43 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %44, i32 %add21.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %and30.i = and i32 %45, -7340033
  %or.i = or i32 %and30.i, 1048576
  %46 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %47, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %or.i) #5, !srcloc !53
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.cond71.i.do.body34.i_crit_edge, %do.end18.i
  %timeout.1.i = phi i32 [ 1000, %do.end18.i ], [ %dec43.i, %do.cond71.i.do.body34.i_crit_edge ]
  %48 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i, align 4
  %50 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ch, align 8
  %mul38.i = mul i32 %51, 80
  %add39.i = add i32 %mul38.i, 55636
  %add.ptr40.i = getelementptr i8, ptr %49, i32 %add39.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1.i)
  %tobool44.not.i = icmp eq i32 %timeout.1.i, 0
  br i1 %tobool44.not.i, label %do.body46.i, label %do.cond71.i

do.body46.i:                                      ; preds = %do.body34.i
  %54 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pad, align 4
  %i2c52.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %i2c52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c52.i, align 4
  %debug54.i = getelementptr inbounds %struct.nvkm_i2c, ptr %57, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %debug54.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp55.not.i = icmp eq i32 %59, 0
  br i1 %cmp55.not.i, label %do.body46.i.if.end65.i_crit_edge, label %do.end59.i

do.body46.i.if.end65.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.i

do.end59.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #7
  %device60.i = getelementptr inbounds %struct.nvkm_i2c, ptr %57, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %device60.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device60.i, align 4
  %dev61.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev61.i, align 8
  %name62.i = getelementptr inbounds %struct.nvkm_i2c, ptr %57, i32 0, i32 1, i32 4
  %id64.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 2
  %64 = ptrtoint ptr %id64.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id64.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.24, ptr noundef %name62.i, i32 noundef %65, i32 noundef %52) #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end59.i, %do.body46.i.if.end65.i_crit_edge
  %66 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pad, align 4
  %i2c.i.i = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_i2c, ptr %69, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device1.i.i, align 4
  %72 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ch, align 8
  %mul.i.i = mul i32 %73, 80
  %add.i.i = add i32 %mul.i.i, 55636
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %74 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 %add.i.i
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %and.i.i = and i32 %76, -7405569
  %77 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %78, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %and.i.i) #5, !srcloc !53
  br label %out

do.cond71.i:                                      ; preds = %do.body34.i
  %dec43.i = add nsw i32 %timeout.1.i, -1
  %and72.i = and i32 %52, 117440512
  %cmp73.not.i = icmp eq i32 %and72.i, 16777216
  br i1 %cmp73.not.i, label %if.end19, label %do.cond71.i.do.body34.i_crit_edge

do.cond71.i.do.body34.i_crit_edge:                ; preds = %do.cond71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34.i

if.end19:                                         ; preds = %do.cond71.i
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add = add i32 %mul, 55640
  %add.ptr20 = getelementptr i8, ptr %80, i32 %add
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %and = and i32 %81, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body24, label %if.end49

do.body24:                                        ; preds = %if.end19
  %82 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pad, align 4
  %i2c30 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %i2c30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c30, align 4
  %debug32 = getelementptr inbounds %struct.nvkm_i2c, ptr %85, i32 0, i32 1, i32 5
  %86 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %debug32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp33 = icmp ugt i32 %87, 4
  br i1 %cmp33, label %do.end38, label %do.body24.out_crit_edge

do.body24.out_crit_edge:                          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end38:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %device39 = getelementptr inbounds %struct.nvkm_i2c, ptr %85, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device39, align 4
  %dev40 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev40, align 8
  %name41 = getelementptr inbounds %struct.nvkm_i2c, ptr %85, i32 0, i32 1, i32 4
  %id43 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 2
  %92 = ptrtoint ptr %id43 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %id43, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.6, ptr noundef %name41, i32 noundef %93) #9
  br label %out

if.end49:                                         ; preds = %if.end19
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 4
  %aux_autodpcd.i = getelementptr inbounds %struct.nvkm_i2c_func, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %aux_autodpcd.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %aux_autodpcd.i, align 4
  %tobool.not.i391 = icmp eq ptr %97, null
  br i1 %tobool.not.i391, label %if.end49.nvkm_i2c_aux_autodpcd.exit_crit_edge, label %if.then.i

if.end49.nvkm_i2c_aux_autodpcd.exit_crit_edge:    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_i2c_aux_autodpcd.exit

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ch, align 8
  tail call void %97(ptr noundef %3, i32 noundef %99, i1 noundef zeroext false) #5
  br label %nvkm_i2c_aux_autodpcd.exit

nvkm_i2c_aux_autodpcd.exit:                       ; preds = %if.then.i, %if.end49.nvkm_i2c_aux_autodpcd.exit_crit_edge
  %conv51 = zext i8 %type to i32
  %and52 = and i32 %conv51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %nvkm_i2c_aux_autodpcd.exit.if.end94_crit_edge

nvkm_i2c_aux_autodpcd.exit.if.end94_crit_edge:    ; preds = %nvkm_i2c_aux_autodpcd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then54:                                        ; preds = %nvkm_i2c_aux_autodpcd.exit
  %100 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %size, align 1
  %conv56 = zext i8 %101 to i32
  %102 = call ptr @memcpy(ptr %xbuf, ptr %data, i32 %conv56)
  %id78 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 2
  %add90 = add i32 %mul, 55600
  %103 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pad, align 4
  %i2c65 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %i2c65 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c65, align 4
  %debug67 = getelementptr inbounds %struct.nvkm_i2c, ptr %106, i32 0, i32 1, i32 5
  %107 = ptrtoint ptr %debug67 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %debug67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %108)
  %cmp68 = icmp ugt i32 %108, 4
  br i1 %cmp68, label %do.end73, label %if.then54.if.end79_crit_edge

if.then54.if.end79_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

do.end73:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %device74 = getelementptr inbounds %struct.nvkm_i2c, ptr %106, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %device74 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device74, align 4
  %dev75 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev75, align 8
  %name76 = getelementptr inbounds %struct.nvkm_i2c, ptr %106, i32 0, i32 1, i32 4
  %113 = ptrtoint ptr %id78 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id78, align 8
  %115 = ptrtoint ptr %xbuf to i32
  call void @__asan_load4_noabort(i32 %115)
  %xbuf.0. = load i32, ptr %xbuf, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull @.str.9, ptr noundef %name76, i32 noundef %114, i32 noundef %xbuf.0.) #9
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.then54.if.end79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %xbuf to i32
  call void @__asan_load4_noabort(i32 %116)
  %xbuf.0.429 = load i32, ptr %xbuf, align 4
  %117 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pri, align 4
  %add.ptr92 = getelementptr i8, ptr %118, i32 %add90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %xbuf.0.429) #5, !srcloc !53
  %119 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pad, align 4
  %i2c65.1 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %i2c65.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c65.1, align 4
  %debug67.1 = getelementptr inbounds %struct.nvkm_i2c, ptr %122, i32 0, i32 1, i32 5
  %123 = ptrtoint ptr %debug67.1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %debug67.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %124)
  %cmp68.1 = icmp ugt i32 %124, 4
  br i1 %cmp68.1, label %do.end73.1, label %if.end79.if.end79.1_crit_edge

if.end79.if.end79.1_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.1

do.end73.1:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %device74.1 = getelementptr inbounds %struct.nvkm_i2c, ptr %122, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %device74.1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device74.1, align 4
  %dev75.1 = getelementptr inbounds %struct.nvkm_device, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %dev75.1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev75.1, align 8
  %name76.1 = getelementptr inbounds %struct.nvkm_i2c, ptr %122, i32 0, i32 1, i32 4
  %129 = ptrtoint ptr %id78 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id78, align 8
  %xbuf.4.arrayidx.1.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 4
  %131 = ptrtoint ptr %xbuf.4.arrayidx.1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %131)
  %xbuf.4. = load i32, ptr %xbuf.4.arrayidx.1.sroa_idx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.9, ptr noundef %name76.1, i32 noundef %130, i32 noundef %xbuf.4.) #9
  br label %if.end79.1

if.end79.1:                                       ; preds = %do.end73.1, %if.end79.if.end79.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %xbuf.4.arrayidx88.1.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 4
  %132 = ptrtoint ptr %xbuf.4.arrayidx88.1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %132)
  %xbuf.4.430 = load i32, ptr %xbuf.4.arrayidx88.1.sroa_idx, align 4
  %133 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pri, align 4
  %add91.1 = add i32 %mul, 55604
  %add.ptr92.1 = getelementptr i8, ptr %134, i32 %add91.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.1, i32 %xbuf.4.430) #5, !srcloc !53
  %135 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pad, align 4
  %i2c65.2 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %i2c65.2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c65.2, align 4
  %debug67.2 = getelementptr inbounds %struct.nvkm_i2c, ptr %138, i32 0, i32 1, i32 5
  %139 = ptrtoint ptr %debug67.2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %debug67.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %140)
  %cmp68.2 = icmp ugt i32 %140, 4
  br i1 %cmp68.2, label %do.end73.2, label %if.end79.1.if.end79.2_crit_edge

if.end79.1.if.end79.2_crit_edge:                  ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.2

do.end73.2:                                       ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #7
  %device74.2 = getelementptr inbounds %struct.nvkm_i2c, ptr %138, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %device74.2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %device74.2, align 4
  %dev75.2 = getelementptr inbounds %struct.nvkm_device, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %dev75.2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev75.2, align 8
  %name76.2 = getelementptr inbounds %struct.nvkm_i2c, ptr %138, i32 0, i32 1, i32 4
  %145 = ptrtoint ptr %id78 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %id78, align 8
  %xbuf.8.arrayidx.2.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 8
  %147 = ptrtoint ptr %xbuf.8.arrayidx.2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %147)
  %xbuf.8. = load i32, ptr %xbuf.8.arrayidx.2.sroa_idx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.9, ptr noundef %name76.2, i32 noundef %146, i32 noundef %xbuf.8.) #9
  br label %if.end79.2

if.end79.2:                                       ; preds = %do.end73.2, %if.end79.1.if.end79.2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %xbuf.8.arrayidx88.2.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 8
  %148 = ptrtoint ptr %xbuf.8.arrayidx88.2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %148)
  %xbuf.8.431 = load i32, ptr %xbuf.8.arrayidx88.2.sroa_idx, align 4
  %149 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pri, align 4
  %add91.2 = add i32 %mul, 55608
  %add.ptr92.2 = getelementptr i8, ptr %150, i32 %add91.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.2, i32 %xbuf.8.431) #5, !srcloc !53
  %151 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pad, align 4
  %i2c65.3 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %i2c65.3 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i2c65.3, align 4
  %debug67.3 = getelementptr inbounds %struct.nvkm_i2c, ptr %154, i32 0, i32 1, i32 5
  %155 = ptrtoint ptr %debug67.3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %debug67.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %156)
  %cmp68.3 = icmp ugt i32 %156, 4
  br i1 %cmp68.3, label %do.end73.3, label %if.end79.2.if.end79.3_crit_edge

if.end79.2.if.end79.3_crit_edge:                  ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.3

do.end73.3:                                       ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #7
  %device74.3 = getelementptr inbounds %struct.nvkm_i2c, ptr %154, i32 0, i32 1, i32 1
  %157 = ptrtoint ptr %device74.3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %device74.3, align 4
  %dev75.3 = getelementptr inbounds %struct.nvkm_device, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %dev75.3 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev75.3, align 8
  %name76.3 = getelementptr inbounds %struct.nvkm_i2c, ptr %154, i32 0, i32 1, i32 4
  %161 = ptrtoint ptr %id78 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %id78, align 8
  %xbuf.12.arrayidx.3.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 12
  %163 = ptrtoint ptr %xbuf.12.arrayidx.3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %163)
  %xbuf.12. = load i32, ptr %xbuf.12.arrayidx.3.sroa_idx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %160, ptr noundef nonnull @.str.9, ptr noundef %name76.3, i32 noundef %162, i32 noundef %xbuf.12.) #9
  br label %if.end79.3

if.end79.3:                                       ; preds = %do.end73.3, %if.end79.2.if.end79.3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %xbuf.12.arrayidx88.3.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 12
  %164 = ptrtoint ptr %xbuf.12.arrayidx88.3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %164)
  %xbuf.12.432 = load i32, ptr %xbuf.12.arrayidx88.3.sroa_idx, align 4
  %165 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pri, align 4
  %add91.3 = add i32 %mul, 55612
  %add.ptr92.3 = getelementptr i8, ptr %166, i32 %add91.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.3, i32 %xbuf.12.432) #5, !srcloc !53
  br label %if.end94

if.end94:                                         ; preds = %if.end79.3, %nvkm_i2c_aux_autodpcd.exit.if.end94_crit_edge
  %167 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pri, align 4
  %add97 = add i32 %mul, 55636
  %add.ptr98 = getelementptr i8, ptr %168, i32 %add97
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %and101 = and i32 %169, -127488
  %shl = shl nuw nsw i32 %conv51, 12
  %or = or i32 %and101, %shl
  %170 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool104.not = icmp eq i8 %171, 0
  %conv103 = zext i8 %171 to i32
  %sub = add nsw i32 %conv103, -1
  %cond = select i1 %tobool104.not, i32 256, i32 %sub
  %or106 = or i32 %or, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri, align 4
  %add111 = add i32 %mul, 55632
  %add.ptr112 = getelementptr i8, ptr %173, i32 %add111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %addr) #5, !srcloc !53
  %id226 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %obj, i32 0, i32 2
  br label %do.body113

do.body113:                                       ; preds = %if.end227.do.body113_crit_edge, %if.end94
  %retries.0 = phi i32 [ 0, %if.end94 ], [ %inc, %if.end227.do.body113_crit_edge ]
  %stat.0 = phi i32 [ %81, %if.end94 ], [ %199, %if.end227.do.body113_crit_edge ]
  %ctrl.0 = phi i32 [ %or106, %if.end94 ], [ %183, %if.end227.do.body113_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %or117 = or i32 %ctrl.0, -2147483648
  %174 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pri, align 4
  %add.ptr120 = getelementptr i8, ptr %175, i32 %add97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %or117) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pri, align 4
  %add.ptr127 = getelementptr i8, ptr %177, i32 %add97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %ctrl.0) #5, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool128.not = icmp eq i32 %retries.0, 0
  br i1 %tobool128.not, label %do.body113.do.body131_crit_edge, label %if.then129

do.body113.do.body131_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body131

if.then129:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 85899200) #5
  br label %do.body131

do.body131:                                       ; preds = %if.then129, %do.body113.do.body131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %or134 = or i32 %ctrl.0, 65536
  %179 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pri, align 4
  %add.ptr137 = getelementptr i8, ptr %180, i32 %add97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %or134) #5, !srcloc !53
  br label %do.body138

do.body138:                                       ; preds = %do.cond173.do.body138_crit_edge, %do.body131
  %timeout.0 = phi i32 [ 2000, %do.body131 ], [ %dec, %do.cond173.do.body138_crit_edge ]
  %181 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pri, align 4
  %add.ptr142 = getelementptr i8, ptr %182, i32 %add97
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 214748) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool145.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool145.not, label %do.body147, label %do.cond173

do.body147:                                       ; preds = %do.body138
  %185 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pad, align 4
  %i2c153 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %i2c153 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i2c153, align 4
  %debug155 = getelementptr inbounds %struct.nvkm_i2c, ptr %188, i32 0, i32 1, i32 5
  %189 = ptrtoint ptr %debug155 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %debug155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp156.not = icmp eq i32 %190, 0
  br i1 %cmp156.not, label %do.body147.out_err_crit_edge, label %do.end161

do.body147.out_err_crit_edge:                     ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

do.end161:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  %device162 = getelementptr inbounds %struct.nvkm_i2c, ptr %188, i32 0, i32 1, i32 1
  %191 = ptrtoint ptr %device162 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %device162, align 4
  %dev163 = getelementptr inbounds %struct.nvkm_device, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev163, align 8
  %name164 = getelementptr inbounds %struct.nvkm_i2c, ptr %188, i32 0, i32 1, i32 4
  %195 = ptrtoint ptr %id226 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %id226, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.12, ptr noundef %name164, i32 noundef %196, i32 noundef %183) #9
  br label %out_err

do.cond173:                                       ; preds = %do.body138
  %dec = add nsw i32 %timeout.0, -1
  %and174 = and i32 %183, 65536
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.end176, label %do.cond173.do.body138_crit_edge

do.cond173.do.body138_crit_edge:                  ; preds = %do.cond173
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body138

do.end176:                                        ; preds = %do.cond173
  %197 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pri, align 4
  %add.ptr180 = getelementptr i8, ptr %198, i32 %add
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pri, align 4
  %add.ptr189 = getelementptr i8, ptr %201, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 %199) #5, !srcloc !53
  %and191 = and i32 %199, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %and191)
  %switch.selectcmp.case1 = icmp eq i32 %and191, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and191)
  %switch.selectcmp.case2 = icmp eq i32 %and191, 131072
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %202 = zext i1 %switch.selectcmp to i32
  %and199 = and i32 %199, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  %spec.select = select i1 %tobool200.not, i32 %202, i32 -110
  %and203 = and i32 %199, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  %ret.2 = select i1 %tobool204.not, i32 %spec.select, i32 -5
  %203 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pad, align 4
  %i2c213 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %i2c213 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %i2c213, align 4
  %debug215 = getelementptr inbounds %struct.nvkm_i2c, ptr %206, i32 0, i32 1, i32 5
  %207 = ptrtoint ptr %debug215 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %debug215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %208)
  %cmp216 = icmp ugt i32 %208, 4
  br i1 %cmp216, label %do.end221, label %do.end176.if.end227_crit_edge

do.end176.if.end227_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227

do.end221:                                        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #7
  %device222 = getelementptr inbounds %struct.nvkm_i2c, ptr %206, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %device222 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %device222, align 4
  %dev223 = getelementptr inbounds %struct.nvkm_device, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %dev223 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev223, align 8
  %name224 = getelementptr inbounds %struct.nvkm_i2c, ptr %206, i32 0, i32 1, i32 4
  %213 = ptrtoint ptr %id226 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %id226, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %212, ptr noundef nonnull @.str.16, ptr noundef %name224, i32 noundef %214, i32 noundef %retries.0, i32 noundef %183, i32 noundef %199) #9
  br label %if.end227

if.end227:                                        ; preds = %do.end221, %do.end176.if.end227_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool233.not = icmp ne i32 %ret.2, 0
  %215 = and i1 %tobool233.not, %retry
  %inc = add nuw nsw i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retries.0)
  %cmp236 = icmp ult i32 %retries.0, 32
  %or.cond = select i1 %215, i1 %cmp236, i1 false
  br i1 %or.cond, label %if.end227.do.body113_crit_edge, label %do.end238

if.end227.do.body113_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body113

do.end238:                                        ; preds = %if.end227
  br i1 %tobool53.not, label %do.end238.out_err_crit_edge, label %for.cond243.preheader

do.end238.out_err_crit_edge:                      ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

for.cond243.preheader:                            ; preds = %do.end238
  %add249 = add i32 %mul, 55616
  %216 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pri, align 4
  %add.ptr251 = getelementptr i8, ptr %217, i32 %add249
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %219 = ptrtoint ptr %xbuf to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %xbuf, align 4
  %220 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pad, align 4
  %i2c262 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %i2c262 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %i2c262, align 4
  %debug264 = getelementptr inbounds %struct.nvkm_i2c, ptr %223, i32 0, i32 1, i32 5
  %224 = ptrtoint ptr %debug264 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %debug264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %225)
  %cmp265 = icmp ugt i32 %225, 4
  br i1 %cmp265, label %do.end270, label %for.cond243.preheader.if.end278_crit_edge

for.cond243.preheader.if.end278_crit_edge:        ; preds = %for.cond243.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278

do.end270:                                        ; preds = %for.cond243.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %device271 = getelementptr inbounds %struct.nvkm_i2c, ptr %223, i32 0, i32 1, i32 1
  %226 = ptrtoint ptr %device271 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %device271, align 4
  %dev272 = getelementptr inbounds %struct.nvkm_device, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %dev272 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev272, align 8
  %name273 = getelementptr inbounds %struct.nvkm_i2c, ptr %223, i32 0, i32 1, i32 4
  %230 = ptrtoint ptr %id226 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %id226, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %229, ptr noundef nonnull @.str.19, ptr noundef %name273, i32 noundef %231, i32 noundef %218) #9
  br label %if.end278

if.end278:                                        ; preds = %do.end270, %for.cond243.preheader.if.end278_crit_edge
  %232 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pri, align 4
  %add250.1 = add i32 %mul, 55620
  %add.ptr251.1 = getelementptr i8, ptr %233, i32 %add250.1
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.1) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %xbuf.4.arrayidx255.1.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 4
  %235 = ptrtoint ptr %xbuf.4.arrayidx255.1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %xbuf.4.arrayidx255.1.sroa_idx, align 4
  %236 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pad, align 4
  %i2c262.1 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %i2c262.1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %i2c262.1, align 4
  %debug264.1 = getelementptr inbounds %struct.nvkm_i2c, ptr %239, i32 0, i32 1, i32 5
  %240 = ptrtoint ptr %debug264.1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %debug264.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %241)
  %cmp265.1 = icmp ugt i32 %241, 4
  br i1 %cmp265.1, label %do.end270.1, label %if.end278.if.end278.1_crit_edge

if.end278.if.end278.1_crit_edge:                  ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278.1

do.end270.1:                                      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #7
  %device271.1 = getelementptr inbounds %struct.nvkm_i2c, ptr %239, i32 0, i32 1, i32 1
  %242 = ptrtoint ptr %device271.1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %device271.1, align 4
  %dev272.1 = getelementptr inbounds %struct.nvkm_device, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %dev272.1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev272.1, align 8
  %name273.1 = getelementptr inbounds %struct.nvkm_i2c, ptr %239, i32 0, i32 1, i32 4
  %246 = ptrtoint ptr %id226 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %id226, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %245, ptr noundef nonnull @.str.19, ptr noundef %name273.1, i32 noundef %247, i32 noundef %234) #9
  br label %if.end278.1

if.end278.1:                                      ; preds = %do.end270.1, %if.end278.if.end278.1_crit_edge
  %248 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %pri, align 4
  %add250.2 = add i32 %mul, 55624
  %add.ptr251.2 = getelementptr i8, ptr %249, i32 %add250.2
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.2) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %xbuf.8.arrayidx255.2.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 8
  %251 = ptrtoint ptr %xbuf.8.arrayidx255.2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %xbuf.8.arrayidx255.2.sroa_idx, align 4
  %252 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pad, align 4
  %i2c262.2 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %i2c262.2 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %i2c262.2, align 4
  %debug264.2 = getelementptr inbounds %struct.nvkm_i2c, ptr %255, i32 0, i32 1, i32 5
  %256 = ptrtoint ptr %debug264.2 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %debug264.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %257)
  %cmp265.2 = icmp ugt i32 %257, 4
  br i1 %cmp265.2, label %do.end270.2, label %if.end278.1.if.end278.2_crit_edge

if.end278.1.if.end278.2_crit_edge:                ; preds = %if.end278.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278.2

do.end270.2:                                      ; preds = %if.end278.1
  call void @__sanitizer_cov_trace_pc() #7
  %device271.2 = getelementptr inbounds %struct.nvkm_i2c, ptr %255, i32 0, i32 1, i32 1
  %258 = ptrtoint ptr %device271.2 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %device271.2, align 4
  %dev272.2 = getelementptr inbounds %struct.nvkm_device, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %dev272.2 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev272.2, align 8
  %name273.2 = getelementptr inbounds %struct.nvkm_i2c, ptr %255, i32 0, i32 1, i32 4
  %262 = ptrtoint ptr %id226 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %id226, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %261, ptr noundef nonnull @.str.19, ptr noundef %name273.2, i32 noundef %263, i32 noundef %250) #9
  br label %if.end278.2

if.end278.2:                                      ; preds = %do.end270.2, %if.end278.1.if.end278.2_crit_edge
  %264 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pri, align 4
  %add250.3 = add i32 %mul, 55628
  %add.ptr251.3 = getelementptr i8, ptr %265, i32 %add250.3
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.3) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %xbuf.12.arrayidx255.3.sroa_idx = getelementptr inbounds i8, ptr %xbuf, i32 12
  %267 = ptrtoint ptr %xbuf.12.arrayidx255.3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %xbuf.12.arrayidx255.3.sroa_idx, align 4
  %268 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pad, align 4
  %i2c262.3 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %i2c262.3 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %i2c262.3, align 4
  %debug264.3 = getelementptr inbounds %struct.nvkm_i2c, ptr %271, i32 0, i32 1, i32 5
  %272 = ptrtoint ptr %debug264.3 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %debug264.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %273)
  %cmp265.3 = icmp ugt i32 %273, 4
  br i1 %cmp265.3, label %do.end270.3, label %if.end278.2.if.end278.3_crit_edge

if.end278.2.if.end278.3_crit_edge:                ; preds = %if.end278.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278.3

do.end270.3:                                      ; preds = %if.end278.2
  call void @__sanitizer_cov_trace_pc() #7
  %device271.3 = getelementptr inbounds %struct.nvkm_i2c, ptr %271, i32 0, i32 1, i32 1
  %274 = ptrtoint ptr %device271.3 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %device271.3, align 4
  %dev272.3 = getelementptr inbounds %struct.nvkm_device, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %dev272.3 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev272.3, align 8
  %name273.3 = getelementptr inbounds %struct.nvkm_i2c, ptr %271, i32 0, i32 1, i32 4
  %278 = ptrtoint ptr %id226 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %id226, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %277, ptr noundef nonnull @.str.19, ptr noundef %name273.3, i32 noundef %279, i32 noundef %266) #9
  br label %if.end278.3

if.end278.3:                                      ; preds = %do.end270.3, %if.end278.2.if.end278.3_crit_edge
  %280 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %size, align 1
  %conv287 = zext i8 %281 to i32
  %282 = call ptr @memcpy(ptr %data, ptr %xbuf, i32 %conv287)
  %283 = trunc i32 %199 to i8
  %conv289 = and i8 %283, 31
  store i8 %conv289, ptr %size, align 1
  br label %out_err

out_err:                                          ; preds = %if.end278.3, %do.end238.out_err_crit_edge, %do.end161, %do.body147.out_err_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end278.3 ], [ %ret.2, %do.end238.out_err_crit_edge ], [ -5, %do.end161 ], [ -5, %do.body147.out_err_crit_edge ]
  %stat.1 = phi i32 [ %199, %if.end278.3 ], [ %199, %do.end238.out_err_crit_edge ], [ %stat.0, %do.end161 ], [ %stat.0, %do.body147.out_err_crit_edge ]
  %284 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %3, align 4
  %aux_autodpcd.i392 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %285, i32 0, i32 5
  %286 = ptrtoint ptr %aux_autodpcd.i392 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %aux_autodpcd.i392, align 4
  %tobool.not.i393 = icmp eq ptr %287, null
  br i1 %tobool.not.i393, label %out_err.out_crit_edge, label %if.then.i394

out_err.out_crit_edge:                            ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i394:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  %288 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %ch, align 8
  tail call void %287(ptr noundef %3, i32 noundef %289, i1 noundef zeroext false) #5
  br label %out

out:                                              ; preds = %if.then.i394, %out_err.out_crit_edge, %do.end38, %do.body24.out_crit_edge, %if.end65.i, %do.end.i, %do.body2.i.out_crit_edge
  %ret.4 = phi i32 [ -6, %do.end38 ], [ -6, %do.body24.out_crit_edge ], [ %ret.3, %out_err.out_crit_edge ], [ %ret.3, %if.then.i394 ], [ -16, %if.end65.i ], [ -16, %do.end.i ], [ -16, %do.body2.i.out_crit_edge ]
  %stat.2 = phi i32 [ %81, %do.end38 ], [ %81, %do.body24.out_crit_edge ], [ %stat.1, %out_err.out_crit_edge ], [ %stat.1, %if.then.i394 ], [ -1, %if.end65.i ], [ -1, %do.end.i ], [ -1, %do.body2.i.out_crit_edge ]
  %290 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %pad, align 4
  %i2c.i397 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %i2c.i397 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i2c.i397, align 4
  %device1.i398 = getelementptr inbounds %struct.nvkm_i2c, ptr %293, i32 0, i32 1, i32 1
  %294 = ptrtoint ptr %device1.i398 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %device1.i398, align 4
  %296 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %ch, align 8
  %mul.i400 = mul i32 %297, 80
  %add.i401 = add i32 %mul.i400, 55636
  %pri.i402 = getelementptr inbounds %struct.nvkm_device, ptr %295, i32 0, i32 11
  %298 = ptrtoint ptr %pri.i402 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %pri.i402, align 4
  %add.ptr.i403 = getelementptr i8, ptr %299, i32 %add.i401
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i403) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %and.i404 = and i32 %300, -7405569
  %301 = ptrtoint ptr %pri.i402 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pri.i402, align 4
  %add.ptr3.i = getelementptr i8, ptr %302, i32 %add.i401
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and.i404) #5, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp292 = icmp slt i32 %ret.4, 0
  %and296 = lshr i32 %stat.2, 16
  %shr = and i32 %and296, 15
  %spec.select440 = select i1 %cmp292, i32 %ret.4, i32 %shr
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xbuf)
  ret i32 %spec.select440
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @gm200_i2c_aux_func, !1, !"gm200_i2c_aux_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 169, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 87, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gm200_i2c_aux_xfer._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @gm200_i2c_aux_xfer._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 95, i32 3}
!12 = !{ptr @gm200_i2c_aux_xfer._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @gm200_i2c_aux_xfer._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 105, i32 4}
!16 = !{ptr @gm200_i2c_aux_xfer._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @gm200_i2c_aux_xfer._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 132, i32 5}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gm200_i2c_aux_xfer._entry.11, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @gm200_i2c_aux_xfer._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 149, i32 3}
!25 = !{ptr @gm200_i2c_aux_xfer._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gm200_i2c_aux_xfer._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 155, i32 4}
!29 = !{ptr @gm200_i2c_aux_xfer._entry.18, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gm200_i2c_aux_xfer._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 54, i32 4}
!33 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gm200_i2c_aux_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gm200_i2c_aux_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxgm200.c", i32 66, i32 4}
!38 = !{ptr @gm200_i2c_aux_init._entry.23, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gm200_i2c_aux_init._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 5396636}
!50 = !{i64 2156238125}
!51 = !{i64 2156242362}
!52 = !{i64 2156242752}
!53 = !{i64 5396218}
!54 = !{i64 2156243291}
!55 = !{i64 2156237178}
!56 = !{i64 2156237580}
!57 = !{i64 2156251146}
!58 = !{i64 2156257058}
!59 = !{i64 2156257536}
!60 = !{i64 2156257880}
!61 = !{i64 2156258315}
!62 = !{i64 2156258763}
!63 = !{i64 2156259759}
!64 = !{i64 2156260243}
!65 = !{i64 2156264302}
!66 = !{i64 2156264668}
!67 = !{i64 2156268078}
