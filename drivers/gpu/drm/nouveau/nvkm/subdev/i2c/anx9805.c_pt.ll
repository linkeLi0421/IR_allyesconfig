; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_pad_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_bus_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_i2c_aux_func = type { i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.anx9805_pad = type { %struct.nvkm_i2c_pad, ptr, i8 }
%struct.anx9805_bus = type { %struct.nvkm_i2c_bus, ptr, i8 }
%struct.anx9805_aux = type { %struct.nvkm_i2c_aux, ptr, i8 }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@anx9805_pad_func = internal constant { %struct.nvkm_i2c_pad_func, [16 x i8] } { %struct.nvkm_i2c_pad_func { ptr null, ptr @anx9805_bus_new, ptr @anx9805_aux_new, ptr null }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@anx9805_bus_func = internal constant { %struct.nvkm_i2c_bus_func, [40 x i8] } { %struct.nvkm_i2c_bus_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anx9805_bus_xfer }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@anx9805_aux_func = internal constant { %struct.nvkm_i2c_aux_func, [20 x i8] } { %struct.nvkm_i2c_aux_func { i8 0, ptr @anx9805_aux_xfer, ptr @anx9805_aux_lnk_ctl }, [20 x i8] zeroinitializer }, align 32
@anx9805_aux_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: aux %04x: %02x %05x %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"anx9805_aux_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@anx9805_aux_xfer._entry_ptr = internal global ptr @anx9805_aux_xfer._entry, section ".printk_index", align 4
@anx9805_aux_xfer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: aux %04x: %16ph\0A\00", [43 x i8] zeroinitializer }, align 32
@anx9805_aux_xfer._entry_ptr.7 = internal global ptr @anx9805_aux_xfer._entry.5, section ".printk_index", align 4
@anx9805_aux_xfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@anx9805_aux_xfer._entry_ptr.9 = internal global ptr @anx9805_aux_xfer._entry.8, section ".printk_index", align 4
@anx9805_aux_lnk_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: aux %04x: ANX9805 train %d %02x %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"anx9805_aux_lnk_ctl\00", [44 x i8] zeroinitializer }, align 32
@anx9805_aux_lnk_ctl._entry_ptr = internal global ptr @anx9805_aux_lnk_ctl._entry, section ".printk_index", align 4
@anx9805_aux_lnk_ctl._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 212, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: aux %04x: link training timeout\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@anx9805_aux_lnk_ctl._entry_ptr.15 = internal global ptr @anx9805_aux_lnk_ctl._entry.12, section ".printk_index", align 4
@anx9805_aux_lnk_ctl._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 218, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: aux %04x: link training failed\0A\00", [60 x i8] zeroinitializer }, align 32
@anx9805_aux_lnk_ctl._entry_ptr.18 = internal global ptr @anx9805_aux_lnk_ctl._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 57, i64 59]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 57, i64 59]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 80]
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"anx9805_pad_func\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 259, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"anx9805_bus_func\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 98, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"anx9805_aux_func\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 226, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 146, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 181, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 200, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 212, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 218, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @anx9805_aux_lnk_ctl._entry, ptr @anx9805_aux_lnk_ctl._entry.12, ptr @anx9805_aux_lnk_ctl._entry.16, ptr @anx9805_aux_lnk_ctl._entry_ptr, ptr @anx9805_aux_lnk_ctl._entry_ptr.15, ptr @anx9805_aux_lnk_ctl._entry_ptr.18, ptr @anx9805_aux_xfer._entry, ptr @anx9805_aux_xfer._entry.5, ptr @anx9805_aux_xfer._entry.8, ptr @anx9805_aux_xfer._entry_ptr, ptr @anx9805_aux_xfer._entry_ptr.7, ptr @anx9805_aux_xfer._entry_ptr.9, ptr @anx9805_pad_func, ptr @anx9805_bus_func, ptr @anx9805_aux_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_pad_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_bus_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_func to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_xfer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_xfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_lnk_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_lnk_ctl._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx9805_aux_lnk_ctl._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @anx9805_pad_new(ptr noundef %bus, i32 noundef %id, i8 noundef zeroext %addr, ptr nocapture noundef writeonly %ppad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %ppad to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ppad, align 4
  %pad1 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad1, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  tail call void @nvkm_i2c_pad_ctor(ptr noundef nonnull @anx9805_pad_func, ptr noundef %5, i32 noundef %id, ptr noundef nonnull %call7.i.i) #5
  %bus3 = getelementptr inbounds %struct.anx9805_pad, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %bus3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bus, ptr %bus3, align 4
  %addr4 = getelementptr inbounds %struct.anx9805_pad, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %addr4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %addr, ptr %addr4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx9805_bus_new(ptr noundef %base, i32 noundef %id, i8 noundef zeroext %drive, ptr nocapture noundef writeonly %pbus) #0 align 64 {
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
  %1 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pbus, align 4
  %pad2 = getelementptr inbounds %struct.anx9805_bus, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pad2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %pad2, align 8
  %call5 = tail call i32 @nvkm_i2c_bus_ctor(ptr noundef nonnull @anx9805_bus_func, ptr noundef %base, i32 noundef %id, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.anx9805_pad, ptr %base, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.end8.cleanup_crit_edge [
    i8 57, label %if.end8.cleanup.sink.split_crit_edge
    i8 59, label %sw.bb10
  ]

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 63, %sw.bb10 ], [ 61, %if.end8.cleanup.sink.split_crit_edge ]
  %addr9 = getelementptr inbounds %struct.anx9805_bus, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %addr9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %addr9, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -38, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx9805_aux_new(ptr noundef %base, i32 noundef %id, i8 noundef zeroext %drive, ptr nocapture noundef writeonly %pbus) #0 align 64 {
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
  %1 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pbus, align 4
  %pad2 = getelementptr inbounds %struct.anx9805_aux, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pad2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %pad2, align 8
  %call5 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef nonnull @anx9805_aux_func, ptr noundef %base, i32 noundef %id, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.anx9805_pad, ptr %base, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %4, label %if.end8.cleanup_crit_edge [
    i8 57, label %if.end8.cleanup.sink.split_crit_edge
    i8 59, label %sw.bb10
  ]

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 60, %sw.bb10 ], [ 56, %if.end8.cleanup.sink.split_crit_edge ]
  %addr9 = getelementptr inbounds %struct.anx9805_aux, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %addr9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %addr9, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -38, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx9805_bus_xfer(ptr nocapture noundef readonly %base, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %buf.i239 = alloca [2 x i8], align 1
  %msgs.i240 = alloca [1 x %struct.i2c_msg], align 4
  %reg.addr.i222 = alloca i8, align 1
  %val.i223 = alloca i8, align 1
  %msgs.i224 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i205 = alloca i8, align 1
  %val.i206 = alloca i8, align 1
  %msgs.i207 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i198 = alloca [2 x i8], align 1
  %msgs.i199 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i191 = alloca [2 x i8], align 1
  %msgs.i192 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i184 = alloca [2 x i8], align 1
  %msgs.i185 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i177 = alloca [2 x i8], align 1
  %msgs.i178 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i170 = alloca [2 x i8], align 1
  %msgs.i171 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i163 = alloca [2 x i8], align 1
  %msgs.i164 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i156 = alloca [2 x i8], align 1
  %msgs.i157 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i149 = alloca [2 x i8], align 1
  %msgs.i150 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i143 = alloca [2 x i8], align 1
  %msgs.i144 = alloca [1 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.anx9805_bus, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1, align 8
  %bus2 = getelementptr inbounds %struct.anx9805_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus2, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5
  %addr = getelementptr inbounds %struct.anx9805_pad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 7, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %8 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.i, ptr %buf6.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.nvkm_rdi2cr.exit_crit_edge

entry.nvkm_rdi2cr.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdi2cr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i, align 1
  br label %nvkm_rdi2cr.exit

nvkm_rdi2cr.exit:                                 ; preds = %if.end.i, %entry.nvkm_rdi2cr.exit_crit_edge
  %retval.0.i = phi i8 [ %19, %if.end.i ], [ -5, %entry.nvkm_rdi2cr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv = and i8 %retval.0.i, -17
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr, align 4
  %conv6 = or i8 %retval.0.i, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i143) #5
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i143, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i143 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %buf.i143, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i144) #5
  %25 = getelementptr inbounds i8, ptr %msgs.i144, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %conv.i145 = zext i8 %21 to i16
  %27 = ptrtoint ptr %msgs.i144 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i145, ptr %msgs.i144, align 4
  %flags.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i144, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i146 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i146, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i144, i32 0, i32 3
  %29 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i143, ptr %buf3.i, align 4
  %call.i148 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i144, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i144) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i143) #5
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i149) #5
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i149, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i149 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %buf.i149, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i150) #5
  %35 = getelementptr inbounds i8, ptr %msgs.i150, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 196607, ptr %35, align 4
  %conv.i151 = zext i8 %31 to i16
  %37 = ptrtoint ptr %msgs.i150 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i151, ptr %msgs.i150, align 4
  %flags.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i150, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i152 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i152, align 2
  %buf3.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i150, i32 0, i32 3
  %39 = ptrtoint ptr %buf3.i154 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i149, ptr %buf3.i154, align 4
  %call.i155 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i150, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i150) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i149) #5
  %addr10 = getelementptr inbounds %struct.anx9805_bus, ptr %base, i32 0, i32 2
  %40 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i156) #5
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i156, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i156 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 67, ptr %buf.i156, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i157) #5
  %45 = getelementptr inbounds i8, ptr %msgs.i157, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %conv.i158 = zext i8 %41 to i16
  %47 = ptrtoint ptr %msgs.i157 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i158, ptr %msgs.i157, align 4
  %flags.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i157, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i159, align 2
  %buf3.i161 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i157, i32 0, i32 3
  %49 = ptrtoint ptr %buf3.i161 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i156, ptr %buf3.i161, align 4
  %call.i162 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i157, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i157) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i156) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool14.not254 = icmp eq i32 %num, 0
  br i1 %tobool14.not254, label %nvkm_rdi2cr.exit.done_crit_edge, label %while.body15.lr.ph

nvkm_rdi2cr.exit.done_crit_edge:                  ; preds = %nvkm_rdi2cr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

while.body15.lr.ph:                               ; preds = %nvkm_rdi2cr.exit
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i163, i32 0, i32 1
  %56 = getelementptr inbounds i8, ptr %msgs.i164, i32 4
  %flags.i166 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i164, i32 0, i32 1
  %buf3.i168 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i164, i32 0, i32 3
  %57 = getelementptr inbounds [2 x i8], ptr %buf.i170, i32 0, i32 1
  %58 = getelementptr inbounds i8, ptr %msgs.i171, i32 4
  %flags.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171, i32 0, i32 1
  %buf3.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171, i32 0, i32 3
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i177, i32 0, i32 1
  %60 = getelementptr inbounds i8, ptr %msgs.i178, i32 4
  %flags.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i178, i32 0, i32 1
  %buf3.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i178, i32 0, i32 3
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i184, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %msgs.i185, i32 4
  %flags.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i185, i32 0, i32 1
  %buf3.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i185, i32 0, i32 3
  %63 = getelementptr inbounds [2 x i8], ptr %buf.i191, i32 0, i32 1
  %64 = getelementptr inbounds i8, ptr %msgs.i192, i32 4
  %flags.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i192, i32 0, i32 1
  %buf3.i196 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i192, i32 0, i32 3
  %65 = getelementptr inbounds [2 x i8], ptr %buf.i198, i32 0, i32 1
  %66 = getelementptr inbounds i8, ptr %msgs.i199, i32 4
  %flags.i201 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i199, i32 0, i32 1
  %buf3.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i199, i32 0, i32 3
  %67 = getelementptr inbounds i8, ptr %msgs.i207, i32 4
  %flags.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i207, i32 0, i32 1
  %buf.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i207, i32 0, i32 3
  %arrayinit.element.i212 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i207, i32 1
  %flags4.i213 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i207, i32 1, i32 1
  %len5.i214 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i207, i32 1, i32 2
  %buf6.i215 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i207, i32 1, i32 3
  %68 = getelementptr inbounds i8, ptr %msgs.i224, i32 4
  %flags.i226 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i224, i32 0, i32 1
  %buf.i228 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i224, i32 0, i32 3
  %arrayinit.element.i229 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i224, i32 1
  %flags4.i230 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i224, i32 1, i32 1
  %len5.i231 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i224, i32 1, i32 2
  %buf6.i232 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i224, i32 1, i32 3
  br label %while.body15

while.body15:                                     ; preds = %if.end97.while.body15_crit_edge, %while.body15.lr.ph
  %dec13259.in = phi i32 [ %num, %while.body15.lr.ph ], [ %dec13259, %if.end97.while.body15_crit_edge ]
  %off.0258 = phi i8 [ 0, %while.body15.lr.ph ], [ %off.1, %if.end97.while.body15_crit_edge ]
  %seg.0257 = phi i8 [ 0, %while.body15.lr.ph ], [ %seg.1, %if.end97.while.body15_crit_edge ]
  %msg.0255 = phi ptr [ %msgs, %while.body15.lr.ph ], [ %incdec.ptr, %if.end97.while.body15_crit_edge ]
  %dec13259 = add i32 %dec13259.in, -1
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 1
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags, align 2
  %71 = and i16 %70, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool18.not = icmp eq i16 %71, 0
  %72 = ptrtoint ptr %msg.0255 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %msg.0255, align 4
  br i1 %tobool18.not, label %if.then66, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body15
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %73)
  %cmp = icmp eq i16 %73, 80
  br i1 %cmp, label %if.then, label %land.lhs.true.done_crit_edge

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then:                                          ; preds = %land.lhs.true
  %74 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i163) #5
  %76 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 64, ptr %buf.i163, align 1
  %77 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -96, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i164) #5
  %78 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 196607, ptr %56, align 4
  %conv.i165 = zext i8 %75 to i16
  %79 = ptrtoint ptr %msgs.i164 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i165, ptr %msgs.i164, align 4
  %80 = ptrtoint ptr %flags.i166 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i166, align 2
  %81 = ptrtoint ptr %buf3.i168 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %buf.i163, ptr %buf3.i168, align 4
  %call.i169 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i164, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i164) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i163) #5
  %82 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i170) #5
  %84 = ptrtoint ptr %buf.i170 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 65, ptr %buf.i170, align 1
  %85 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %seg.0257, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i171) #5
  %86 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196607, ptr %58, align 4
  %conv.i172 = zext i8 %83 to i16
  %87 = ptrtoint ptr %msgs.i171 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i172, ptr %msgs.i171, align 4
  %88 = ptrtoint ptr %flags.i173 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i173, align 2
  %89 = ptrtoint ptr %buf3.i175 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf.i170, ptr %buf3.i175, align 4
  %call.i176 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i171, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i171) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i170) #5
  %90 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i177) #5
  %92 = ptrtoint ptr %buf.i177 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 66, ptr %buf.i177, align 1
  %93 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %off.0258, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i178) #5
  %94 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196607, ptr %60, align 4
  %conv.i179 = zext i8 %91 to i16
  %95 = ptrtoint ptr %msgs.i178 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i179, ptr %msgs.i178, align 4
  %96 = ptrtoint ptr %flags.i180 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i180, align 2
  %97 = ptrtoint ptr %buf3.i182 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i177, ptr %buf3.i182, align 4
  %call.i183 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i178, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i178) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i177) #5
  %98 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %addr10, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 2
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %len, align 4
  %conv32 = trunc i16 %101 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i184) #5
  %102 = ptrtoint ptr %buf.i184 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 68, ptr %buf.i184, align 1
  %103 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv32, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i185) #5
  %104 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 196607, ptr %62, align 4
  %conv.i186 = zext i8 %99 to i16
  %105 = ptrtoint ptr %msgs.i185 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i186, ptr %msgs.i185, align 4
  %106 = ptrtoint ptr %flags.i187 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i187, align 2
  %107 = ptrtoint ptr %buf3.i189 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i184, ptr %buf3.i189, align 4
  %call.i190 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i185, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i185) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i184) #5
  %108 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i191) #5
  %110 = ptrtoint ptr %buf.i191 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 69, ptr %buf.i191, align 1
  %111 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i192) #5
  %112 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 196607, ptr %64, align 4
  %conv.i193 = zext i8 %109 to i16
  %113 = ptrtoint ptr %msgs.i192 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i193, ptr %msgs.i192, align 4
  %114 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i194, align 2
  %115 = ptrtoint ptr %buf3.i196 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %buf.i191, ptr %buf3.i196, align 4
  %call.i197 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i192, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i192) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i191) #5
  %116 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i198) #5
  %118 = ptrtoint ptr %buf.i198 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 67, ptr %buf.i198, align 1
  %119 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i199) #5
  %120 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 196607, ptr %66, align 4
  %conv.i200 = zext i8 %117 to i16
  %121 = ptrtoint ptr %msgs.i199 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i200, ptr %msgs.i199, align 4
  %122 = ptrtoint ptr %flags.i201 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i201, align 2
  %123 = ptrtoint ptr %buf3.i203 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %buf.i198, ptr %buf3.i203, align 4
  %call.i204 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i199, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i199) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i198) #5
  %124 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %cmp40251.not = icmp eq i16 %125, 0
  br i1 %cmp40251.not, label %if.then.if.end97_crit_edge, label %while.cond42.preheader.lr.ph

if.then.if.end97_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

while.cond42.preheader.lr.ph:                     ; preds = %if.then
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 3
  br label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %nvkm_rdi2cr.exit238.while.cond42.preheader_crit_edge, %while.cond42.preheader.lr.ph
  %i.0252 = phi i32 [ 0, %while.cond42.preheader.lr.ph ], [ %inc61, %nvkm_rdi2cr.exit238.while.cond42.preheader_crit_edge ]
  br label %while.cond42

while.cond42:                                     ; preds = %while.body52.preheader.while.cond42_crit_edge, %while.cond42.preheader
  %j.0 = phi i32 [ %inc, %while.body52.preheader.while.cond42_crit_edge ], [ 0, %while.cond42.preheader ]
  %126 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i205)
  %128 = ptrtoint ptr %reg.addr.i205 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 70, ptr %reg.addr.i205, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i206) #5
  %129 = ptrtoint ptr %val.i206 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -1, ptr %val.i206, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i207) #5
  %130 = call ptr @memset(ptr %67, i32 255, i32 16)
  %conv.i208 = zext i8 %127 to i16
  %131 = ptrtoint ptr %msgs.i207 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i208, ptr %msgs.i207, align 4
  %132 = ptrtoint ptr %flags.i209 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i209, align 2
  %133 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1, ptr %67, align 4
  %134 = ptrtoint ptr %buf.i211 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %reg.addr.i205, ptr %buf.i211, align 4
  %135 = ptrtoint ptr %arrayinit.element.i212 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i208, ptr %arrayinit.element.i212, align 4
  %136 = ptrtoint ptr %flags4.i213 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 1, ptr %flags4.i213, align 2
  %137 = ptrtoint ptr %len5.i214 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %len5.i214, align 4
  %138 = ptrtoint ptr %buf6.i215 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %val.i206, ptr %buf6.i215, align 4
  %call.i216 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i207, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i216)
  %cmp.not.i217 = icmp eq i32 %call.i216, 2
  br i1 %cmp.not.i217, label %nvkm_rdi2cr.exit221, label %nvkm_rdi2cr.exit221.thread

nvkm_rdi2cr.exit221.thread:                       ; preds = %while.cond42
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i207) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i206) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i205)
  br label %while.body52.preheader

nvkm_rdi2cr.exit221:                              ; preds = %while.cond42
  %139 = ptrtoint ptr %val.i206 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %val.i206, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i207) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i206) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i205)
  %141 = and i8 %140, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool46.not = icmp eq i8 %141, 0
  br i1 %tobool46.not, label %while.end57, label %nvkm_rdi2cr.exit221.while.body52.preheader_crit_edge

nvkm_rdi2cr.exit221.while.body52.preheader_crit_edge: ; preds = %nvkm_rdi2cr.exit221
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body52.preheader

while.body52.preheader:                           ; preds = %nvkm_rdi2cr.exit221.while.body52.preheader_crit_edge, %nvkm_rdi2cr.exit221.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %142(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %143(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %145(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %j.0, 1
  %cmp54 = icmp eq i32 %j.0, 32
  br i1 %cmp54, label %while.body52.preheader.done_crit_edge, label %while.body52.preheader.while.cond42_crit_edge

while.body52.preheader.while.cond42_crit_edge:    ; preds = %while.body52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond42

while.body52.preheader.done_crit_edge:            ; preds = %while.body52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

while.end57:                                      ; preds = %nvkm_rdi2cr.exit221
  %147 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i222)
  %149 = ptrtoint ptr %reg.addr.i222 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 71, ptr %reg.addr.i222, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i223) #5
  %150 = ptrtoint ptr %val.i223 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -1, ptr %val.i223, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i224) #5
  %151 = call ptr @memset(ptr %68, i32 255, i32 16)
  %conv.i225 = zext i8 %148 to i16
  %152 = ptrtoint ptr %msgs.i224 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i225, ptr %msgs.i224, align 4
  %153 = ptrtoint ptr %flags.i226 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i226, align 2
  %154 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1, ptr %68, align 4
  %155 = ptrtoint ptr %buf.i228 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %reg.addr.i222, ptr %buf.i228, align 4
  %156 = ptrtoint ptr %arrayinit.element.i229 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i225, ptr %arrayinit.element.i229, align 4
  %157 = ptrtoint ptr %flags4.i230 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %flags4.i230, align 2
  %158 = ptrtoint ptr %len5.i231 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 1, ptr %len5.i231, align 4
  %159 = ptrtoint ptr %buf6.i232 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %val.i223, ptr %buf6.i232, align 4
  %call.i233 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i224, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i233)
  %cmp.not.i234 = icmp eq i32 %call.i233, 2
  br i1 %cmp.not.i234, label %if.end.i236, label %while.end57.nvkm_rdi2cr.exit238_crit_edge

while.end57.nvkm_rdi2cr.exit238_crit_edge:        ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdi2cr.exit238

if.end.i236:                                      ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %val.i223 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %val.i223, align 1
  br label %nvkm_rdi2cr.exit238

nvkm_rdi2cr.exit238:                              ; preds = %if.end.i236, %while.end57.nvkm_rdi2cr.exit238_crit_edge
  %retval.0.i237 = phi i8 [ %161, %if.end.i236 ], [ -5, %while.end57.nvkm_rdi2cr.exit238_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i224) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i223) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i222)
  %162 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %163, i32 %i.0252
  %164 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %retval.0.i237, ptr %arrayidx, align 1
  %inc61 = add nuw nsw i32 %i.0252, 1
  %165 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %len, align 4
  %conv39 = zext i16 %166 to i32
  %cmp40 = icmp ult i32 %inc61, %conv39
  br i1 %cmp40, label %nvkm_rdi2cr.exit238.while.cond42.preheader_crit_edge, label %nvkm_rdi2cr.exit238.if.end97_crit_edge

nvkm_rdi2cr.exit238.if.end97_crit_edge:           ; preds = %nvkm_rdi2cr.exit238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

nvkm_rdi2cr.exit238.while.cond42.preheader_crit_edge: ; preds = %nvkm_rdi2cr.exit238
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond42.preheader

if.then66:                                        ; preds = %while.body15
  %167 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %73, label %if.then66.done_crit_edge [
    i16 80, label %land.lhs.true71
    i16 48, label %land.lhs.true84
  ]

if.then66.done_crit_edge:                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

land.lhs.true71:                                  ; preds = %if.then66
  %len72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 2
  %168 = ptrtoint ptr %len72 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %len72, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %169)
  %cmp74 = icmp eq i16 %169, 1
  br i1 %cmp74, label %if.then76, label %land.lhs.true71.done_crit_edge

land.lhs.true71.done_crit_edge:                   ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then76:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  %buf77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 3
  %170 = ptrtoint ptr %buf77 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %buf77, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 1
  br label %if.end97

land.lhs.true84:                                  ; preds = %if.then66
  %len85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 2
  %174 = ptrtoint ptr %len85 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %len85, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %175)
  %cmp87 = icmp eq i16 %175, 1
  br i1 %cmp87, label %if.then89, label %land.lhs.true84.done_crit_edge

land.lhs.true84.done_crit_edge:                   ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then89:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #7
  %buf90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0255, i32 0, i32 3
  %176 = ptrtoint ptr %buf90 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %buf90, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then89, %if.then76, %nvkm_rdi2cr.exit238.if.end97_crit_edge, %if.then.if.end97_crit_edge
  %seg.1 = phi i8 [ %seg.0257, %if.then76 ], [ %179, %if.then89 ], [ %seg.0257, %if.then.if.end97_crit_edge ], [ %seg.0257, %nvkm_rdi2cr.exit238.if.end97_crit_edge ]
  %off.1 = phi i8 [ %173, %if.then76 ], [ %off.0258, %if.then89 ], [ %off.0258, %if.then.if.end97_crit_edge ], [ %off.0258, %nvkm_rdi2cr.exit238.if.end97_crit_edge ]
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msg.0255, i32 1
  %tobool14.not = icmp eq i32 %dec13259, 0
  br i1 %tobool14.not, label %if.end97.done_crit_edge, label %if.end97.while.body15_crit_edge

if.end97.while.body15_crit_edge:                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body15

if.end97.done_crit_edge:                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

done:                                             ; preds = %if.end97.done_crit_edge, %land.lhs.true84.done_crit_edge, %land.lhs.true71.done_crit_edge, %if.then66.done_crit_edge, %while.body52.preheader.done_crit_edge, %land.lhs.true.done_crit_edge, %nvkm_rdi2cr.exit.done_crit_edge
  %ret.0 = phi i32 [ 0, %nvkm_rdi2cr.exit.done_crit_edge ], [ -110, %while.body52.preheader.done_crit_edge ], [ -110, %land.lhs.true84.done_crit_edge ], [ %num, %if.end97.done_crit_edge ], [ -110, %land.lhs.true.done_crit_edge ], [ -110, %land.lhs.true71.done_crit_edge ], [ -110, %if.then66.done_crit_edge ]
  %180 = ptrtoint ptr %addr10 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %addr10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i239) #5
  %182 = getelementptr inbounds [2 x i8], ptr %buf.i239, i32 0, i32 1
  %183 = ptrtoint ptr %buf.i239 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 67, ptr %buf.i239, align 1
  %184 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i240) #5
  %185 = getelementptr inbounds i8, ptr %msgs.i240, i32 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 196607, ptr %185, align 4
  %conv.i241 = zext i8 %181 to i16
  %187 = ptrtoint ptr %msgs.i240 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv.i241, ptr %msgs.i240, align 4
  %flags.i242 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i240, i32 0, i32 1
  %188 = ptrtoint ptr %flags.i242 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %flags.i242, align 2
  %buf3.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i240, i32 0, i32 3
  %189 = ptrtoint ptr %buf3.i244 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %buf.i239, ptr %buf3.i244, align 4
  %call.i245 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i240, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i240) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i239) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx9805_aux_xfer(ptr nocapture noundef readonly %base, i1 noundef zeroext %retry, i8 noundef zeroext %type, i32 noundef %addr, ptr nocapture noundef %data, ptr nocapture noundef readonly %size) #0 align 64 {
entry:
  %buf.i339 = alloca [2 x i8], align 1
  %msgs.i340 = alloca [1 x %struct.i2c_msg], align 4
  %reg.addr.i322 = alloca i8, align 1
  %val.i323 = alloca i8, align 1
  %msgs.i324 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i305 = alloca i8, align 1
  %val.i306 = alloca i8, align 1
  %msgs.i307 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i288 = alloca i8, align 1
  %val.i289 = alloca i8, align 1
  %msgs.i290 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i281 = alloca [2 x i8], align 1
  %msgs.i282 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i274 = alloca [2 x i8], align 1
  %msgs.i275 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i267 = alloca [2 x i8], align 1
  %msgs.i268 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i260 = alloca [2 x i8], align 1
  %msgs.i261 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i253 = alloca [2 x i8], align 1
  %msgs.i254 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i246 = alloca [2 x i8], align 1
  %msgs.i247 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i239 = alloca [2 x i8], align 1
  %msgs.i240 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i232 = alloca [2 x i8], align 1
  %msgs.i233 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i225 = alloca [2 x i8], align 1
  %msgs.i226 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i219 = alloca [2 x i8], align 1
  %msgs.i220 = alloca [1 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.anx9805_aux, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1, align 8
  %bus = getelementptr inbounds %struct.anx9805_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #5
  %4 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %pad5 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 1
  %5 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pad5, align 4
  %i2c6 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %i2c6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c6, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ugt i32 %10, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %conv = zext i8 %type to i32
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %size, align 1
  %conv8 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %16, i32 noundef %conv, i32 noundef %addr, i32 noundef %conv8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %addr13 = getelementptr inbounds %struct.anx9805_pad, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 7, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %val.i, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %23 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 255, i32 16)
  %conv.i = zext i8 %20 to i16
  %25 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i, align 2
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %23, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %29 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %30 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %31 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %32 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %val.i, ptr %buf6.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.nvkm_rdi2cr.exit_crit_edge

if.end.nvkm_rdi2cr.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdi2cr.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val.i, align 1
  br label %nvkm_rdi2cr.exit

nvkm_rdi2cr.exit:                                 ; preds = %if.end.i, %if.end.nvkm_rdi2cr.exit_crit_edge
  %retval.0.i = phi i8 [ %34, %if.end.i ], [ -5, %if.end.nvkm_rdi2cr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv14 = and i8 %retval.0.i, -5
  %35 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %addr13, align 4
  %conv17 = or i8 %retval.0.i, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i219) #5
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i219, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i219 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 7, ptr %buf.i219, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv17, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i220) #5
  %40 = getelementptr inbounds i8, ptr %msgs.i220, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %conv.i221 = zext i8 %36 to i16
  %42 = ptrtoint ptr %msgs.i220 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i221, ptr %msgs.i220, align 4
  %flags.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i220, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i222, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i220, i32 0, i32 3
  %44 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i219, ptr %buf3.i, align 4
  %call.i224 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i220, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i220) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i219) #5
  %45 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i225) #5
  %47 = getelementptr inbounds [2 x i8], ptr %buf.i225, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i225 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 7, ptr %buf.i225, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv14, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i226) #5
  %50 = getelementptr inbounds i8, ptr %msgs.i226, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 196607, ptr %50, align 4
  %conv.i227 = zext i8 %46 to i16
  %52 = ptrtoint ptr %msgs.i226 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i227, ptr %msgs.i226, align 4
  %flags.i228 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i226, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i228 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i228, align 2
  %buf3.i230 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i226, i32 0, i32 3
  %54 = ptrtoint ptr %buf3.i230 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i225, ptr %buf3.i230, align 4
  %call.i231 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i226, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i226) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i225) #5
  %55 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %addr13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i232) #5
  %57 = getelementptr inbounds [2 x i8], ptr %buf.i232, i32 0, i32 1
  %58 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -9, ptr %buf.i232, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i233) #5
  %60 = getelementptr inbounds i8, ptr %msgs.i233, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196607, ptr %60, align 4
  %conv.i234 = zext i8 %56 to i16
  %62 = ptrtoint ptr %msgs.i233 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i234, ptr %msgs.i233, align 4
  %flags.i235 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i233, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i235 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i235, align 2
  %buf3.i237 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i233, i32 0, i32 3
  %64 = ptrtoint ptr %buf3.i237 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i232, ptr %buf3.i237, align 4
  %call.i238 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i233, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i233) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i232) #5
  %addr23 = getelementptr inbounds %struct.anx9805_aux, ptr %base, i32 0, i32 2
  %65 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %addr23, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i239) #5
  %67 = getelementptr inbounds [2 x i8], ptr %buf.i239, i32 0, i32 1
  %68 = ptrtoint ptr %buf.i239 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -28, ptr %buf.i239, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -128, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i240) #5
  %70 = getelementptr inbounds i8, ptr %msgs.i240, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %conv.i241 = zext i8 %66 to i16
  %72 = ptrtoint ptr %msgs.i240 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i241, ptr %msgs.i240, align 4
  %flags.i242 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i240, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i242 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i242, align 2
  %buf3.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i240, i32 0, i32 3
  %74 = ptrtoint ptr %buf3.i244 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i239, ptr %buf3.i244, align 4
  %call.i245 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i240, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i240) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i239) #5
  %75 = and i8 %type, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not = icmp eq i8 %75, 0
  br i1 %tobool.not, label %if.then27, label %nvkm_rdi2cr.exit.if.end62_crit_edge

nvkm_rdi2cr.exit.if.end62_crit_edge:              ; preds = %nvkm_rdi2cr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then27:                                        ; preds = %nvkm_rdi2cr.exit
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %size, align 1
  %conv29 = zext i8 %77 to i32
  %78 = call ptr @memcpy(ptr %buf, ptr %data, i32 %conv29)
  %79 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pad5, align 4
  %i2c36 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %i2c36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c36, align 4
  %debug38 = getelementptr inbounds %struct.nvkm_i2c, ptr %82, i32 0, i32 1, i32 5
  %83 = ptrtoint ptr %debug38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %debug38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp39 = icmp ugt i32 %84, 3
  br i1 %cmp39, label %do.end44, label %if.then27.if.end51_crit_edge

if.then27.if.end51_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end44:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %device45 = getelementptr inbounds %struct.nvkm_i2c, ptr %82, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device45, align 4
  %dev46 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev46, align 8
  %name47 = getelementptr inbounds %struct.nvkm_i2c, ptr %82, i32 0, i32 1, i32 4
  %id49 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 2
  %89 = ptrtoint ptr %id49 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id49, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.6, ptr noundef %name47, i32 noundef %90, ptr noundef nonnull %buf) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end44, %if.then27.if.end51_crit_edge
  %91 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp57353.not = icmp eq i8 %92, 0
  br i1 %cmp57353.not, label %if.end51.if.end62_crit_edge, label %for.body.lr.ph

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

for.body.lr.ph:                                   ; preds = %if.end51
  %93 = getelementptr inbounds [2 x i8], ptr %buf.i246, i32 0, i32 1
  %94 = getelementptr inbounds i8, ptr %msgs.i247, i32 4
  %flags.i249 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i247, i32 0, i32 1
  %buf3.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i247, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %95 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %addr23, align 4
  %97 = trunc i32 %i.0354 to i8
  %conv60 = add i8 %97, -16
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.0354
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i246) #5
  %100 = ptrtoint ptr %buf.i246 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv60, ptr %buf.i246, align 1
  %101 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %99, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i247) #5
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 196607, ptr %94, align 4
  %conv.i248 = zext i8 %96 to i16
  %103 = ptrtoint ptr %msgs.i247 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i248, ptr %msgs.i247, align 4
  %104 = ptrtoint ptr %flags.i249 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i249, align 2
  %105 = ptrtoint ptr %buf3.i251 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf.i246, ptr %buf3.i251, align 4
  %call.i252 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i247, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i247) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i246) #5
  %inc = add nuw nsw i32 %i.0354, 1
  %106 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %size, align 1
  %conv56 = zext i8 %107 to i32
  %cmp57 = icmp ult i32 %inc, %conv56
  br i1 %cmp57, label %for.body.for.body_crit_edge, label %for.body.if.end62_crit_edge

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end62:                                         ; preds = %for.body.if.end62_crit_edge, %if.end51.if.end62_crit_edge, %nvkm_rdi2cr.exit.if.end62_crit_edge
  %108 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %addr23, align 4
  %110 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %size, align 1
  %sub = shl i8 %111, 4
  %shl = add i8 %sub, -16
  %or66 = or i8 %shl, %type
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i253) #5
  %112 = getelementptr inbounds [2 x i8], ptr %buf.i253, i32 0, i32 1
  %113 = ptrtoint ptr %buf.i253 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -27, ptr %buf.i253, align 1
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %or66, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i254) #5
  %115 = getelementptr inbounds i8, ptr %msgs.i254, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 196607, ptr %115, align 4
  %conv.i255 = zext i8 %109 to i16
  %117 = ptrtoint ptr %msgs.i254 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i255, ptr %msgs.i254, align 4
  %flags.i256 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i254, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i256 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i256, align 2
  %buf3.i258 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i254, i32 0, i32 3
  %119 = ptrtoint ptr %buf3.i258 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %buf.i253, ptr %buf3.i258, align 4
  %call.i259 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i254, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i254) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i253) #5
  %120 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %addr23, align 4
  %conv71 = trunc i32 %addr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i260) #5
  %122 = getelementptr inbounds [2 x i8], ptr %buf.i260, i32 0, i32 1
  %123 = ptrtoint ptr %buf.i260 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -26, ptr %buf.i260, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv71, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i261) #5
  %125 = getelementptr inbounds i8, ptr %msgs.i261, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 196607, ptr %125, align 4
  %conv.i262 = zext i8 %121 to i16
  %127 = ptrtoint ptr %msgs.i261 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv.i262, ptr %msgs.i261, align 4
  %flags.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i261, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i263 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %flags.i263, align 2
  %buf3.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i261, i32 0, i32 3
  %129 = ptrtoint ptr %buf3.i265 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %buf.i260, ptr %buf3.i265, align 4
  %call.i266 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i261, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i261) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i260) #5
  %130 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %addr23, align 4
  %and74 = lshr i32 %addr, 8
  %conv76 = trunc i32 %and74 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i267) #5
  %132 = getelementptr inbounds [2 x i8], ptr %buf.i267, i32 0, i32 1
  %133 = ptrtoint ptr %buf.i267 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -25, ptr %buf.i267, align 1
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv76, ptr %132, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i268) #5
  %135 = getelementptr inbounds i8, ptr %msgs.i268, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 196607, ptr %135, align 4
  %conv.i269 = zext i8 %131 to i16
  %137 = ptrtoint ptr %msgs.i268 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.i269, ptr %msgs.i268, align 4
  %flags.i270 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i268, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i270 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i270, align 2
  %buf3.i272 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i268, i32 0, i32 3
  %139 = ptrtoint ptr %buf3.i272 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %buf.i267, ptr %buf3.i272, align 4
  %call.i273 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i268, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i268) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i267) #5
  %140 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %addr23, align 4
  %and79 = lshr i32 %addr, 16
  %142 = trunc i32 %and79 to i8
  %conv81 = and i8 %142, 15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i274) #5
  %143 = getelementptr inbounds [2 x i8], ptr %buf.i274, i32 0, i32 1
  %144 = ptrtoint ptr %buf.i274 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -24, ptr %buf.i274, align 1
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv81, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i275) #5
  %146 = getelementptr inbounds i8, ptr %msgs.i275, i32 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 196607, ptr %146, align 4
  %conv.i276 = zext i8 %141 to i16
  %148 = ptrtoint ptr %msgs.i275 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i276, ptr %msgs.i275, align 4
  %flags.i277 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i275, i32 0, i32 1
  %149 = ptrtoint ptr %flags.i277 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i277, align 2
  %buf3.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i275, i32 0, i32 3
  %150 = ptrtoint ptr %buf3.i279 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %buf.i274, ptr %buf3.i279, align 4
  %call.i280 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i275, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i275) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i274) #5
  %151 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %addr23, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i281) #5
  %153 = getelementptr inbounds [2 x i8], ptr %buf.i281, i32 0, i32 1
  %154 = ptrtoint ptr %buf.i281 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -23, ptr %buf.i281, align 1
  %155 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i282) #5
  %156 = getelementptr inbounds i8, ptr %msgs.i282, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 196607, ptr %156, align 4
  %conv.i283 = zext i8 %152 to i16
  %158 = ptrtoint ptr %msgs.i282 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv.i283, ptr %msgs.i282, align 4
  %flags.i284 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i282, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i284 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i284, align 2
  %buf3.i286 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i282, i32 0, i32 3
  %160 = ptrtoint ptr %buf3.i286 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i281, ptr %buf3.i286, align 4
  %call.i287 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i282, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i282) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i281) #5
  %161 = getelementptr inbounds i8, ptr %msgs.i290, i32 4
  %flags.i292 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i290, i32 0, i32 1
  %buf.i294 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i290, i32 0, i32 3
  %arrayinit.element.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i290, i32 1
  %flags4.i296 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i290, i32 1, i32 1
  %len5.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i290, i32 1, i32 2
  %buf6.i298 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i290, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body93.preheader.while.cond_crit_edge, %if.end62
  %i.1 = phi i32 [ 0, %if.end62 ], [ %inc94, %while.body93.preheader.while.cond_crit_edge ]
  %162 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %addr23, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i288)
  %164 = ptrtoint ptr %reg.addr.i288 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -23, ptr %reg.addr.i288, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i289) #5
  %165 = ptrtoint ptr %val.i289 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -1, ptr %val.i289, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i290) #5
  %166 = call ptr @memset(ptr %161, i32 255, i32 16)
  %conv.i291 = zext i8 %163 to i16
  %167 = ptrtoint ptr %msgs.i290 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i291, ptr %msgs.i290, align 4
  %168 = ptrtoint ptr %flags.i292 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i292, align 2
  %169 = ptrtoint ptr %161 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %161, align 4
  %170 = ptrtoint ptr %buf.i294 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %reg.addr.i288, ptr %buf.i294, align 4
  %171 = ptrtoint ptr %arrayinit.element.i295 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv.i291, ptr %arrayinit.element.i295, align 4
  %172 = ptrtoint ptr %flags4.i296 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 1, ptr %flags4.i296, align 2
  %173 = ptrtoint ptr %len5.i297 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %len5.i297, align 4
  %174 = ptrtoint ptr %buf6.i298 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %val.i289, ptr %buf6.i298, align 4
  %call.i299 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i290, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i299)
  %cmp.not.i300 = icmp eq i32 %call.i299, 2
  br i1 %cmp.not.i300, label %nvkm_rdi2cr.exit304, label %nvkm_rdi2cr.exit304.thread

nvkm_rdi2cr.exit304.thread:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i290) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i289) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i288)
  br label %while.body93.preheader

nvkm_rdi2cr.exit304:                              ; preds = %while.cond
  %175 = ptrtoint ptr %val.i289 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %val.i289, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i290) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i289) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i288)
  %177 = and i8 %176, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool90.not = icmp eq i8 %177, 0
  br i1 %tobool90.not, label %while.end99, label %nvkm_rdi2cr.exit304.while.body93.preheader_crit_edge

nvkm_rdi2cr.exit304.while.body93.preheader_crit_edge: ; preds = %nvkm_rdi2cr.exit304
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body93.preheader

while.body93.preheader:                           ; preds = %nvkm_rdi2cr.exit304.while.body93.preheader_crit_edge, %nvkm_rdi2cr.exit304.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %179(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %180(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %181(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %182(i32 noundef 214748000) #5
  %inc94 = add nuw nsw i32 %i.1, 1
  %cmp95 = icmp eq i32 %i.1, 32
  br i1 %cmp95, label %while.body93.preheader.done_crit_edge, label %while.body93.preheader.while.cond_crit_edge

while.body93.preheader.while.cond_crit_edge:      ; preds = %while.body93.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body93.preheader.done_crit_edge:            ; preds = %while.body93.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

while.end99:                                      ; preds = %nvkm_rdi2cr.exit304
  %183 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %addr13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i305)
  %185 = ptrtoint ptr %reg.addr.i305 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -9, ptr %reg.addr.i305, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i306) #5
  %186 = ptrtoint ptr %val.i306 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -1, ptr %val.i306, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i307) #5
  %187 = getelementptr inbounds i8, ptr %msgs.i307, i32 4
  %188 = call ptr @memset(ptr %187, i32 255, i32 16)
  %conv.i308 = zext i8 %184 to i16
  %189 = ptrtoint ptr %msgs.i307 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i308, ptr %msgs.i307, align 4
  %flags.i309 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i307, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i309 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i309, align 2
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 1, ptr %187, align 4
  %buf.i311 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i307, i32 0, i32 3
  %192 = ptrtoint ptr %buf.i311 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %reg.addr.i305, ptr %buf.i311, align 4
  %arrayinit.element.i312 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i307, i32 1
  %193 = ptrtoint ptr %arrayinit.element.i312 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv.i308, ptr %arrayinit.element.i312, align 4
  %flags4.i313 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i307, i32 1, i32 1
  %194 = ptrtoint ptr %flags4.i313 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 1, ptr %flags4.i313, align 2
  %len5.i314 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i307, i32 1, i32 2
  %195 = ptrtoint ptr %len5.i314 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 1, ptr %len5.i314, align 4
  %buf6.i315 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i307, i32 1, i32 3
  %196 = ptrtoint ptr %buf6.i315 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %val.i306, ptr %buf6.i315, align 4
  %call.i316 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i307, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i316)
  %cmp.not.i317 = icmp eq i32 %call.i316, 2
  br i1 %cmp.not.i317, label %nvkm_rdi2cr.exit321, label %nvkm_rdi2cr.exit321.thread

nvkm_rdi2cr.exit321.thread:                       ; preds = %while.end99
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i307) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i306) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i305)
  br label %done

nvkm_rdi2cr.exit321:                              ; preds = %while.end99
  %197 = ptrtoint ptr %val.i306 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %val.i306, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i307) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i306) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i305)
  %199 = and i8 %198, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool105.not = icmp ne i8 %199, 0
  %brmerge = or i1 %tobool.not, %tobool105.not
  %.mux = select i1 %tobool105.not, i32 -5, i32 0
  br i1 %brmerge, label %nvkm_rdi2cr.exit321.done_crit_edge, label %for.cond112.preheader

nvkm_rdi2cr.exit321.done_crit_edge:               ; preds = %nvkm_rdi2cr.exit321
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

for.cond112.preheader:                            ; preds = %nvkm_rdi2cr.exit321
  %200 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %cmp114357.not = icmp eq i8 %201, 0
  br i1 %cmp114357.not, label %for.cond112.preheader.do.body126_crit_edge, label %for.body116.lr.ph

for.cond112.preheader.do.body126_crit_edge:       ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body126

for.body116.lr.ph:                                ; preds = %for.cond112.preheader
  %202 = getelementptr inbounds i8, ptr %msgs.i324, i32 4
  %flags.i326 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i324, i32 0, i32 1
  %buf.i328 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i324, i32 0, i32 3
  %arrayinit.element.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i324, i32 1
  %flags4.i330 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i324, i32 1, i32 1
  %len5.i331 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i324, i32 1, i32 2
  %buf6.i332 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i324, i32 1, i32 3
  br label %for.body116

for.body116:                                      ; preds = %nvkm_rdi2cr.exit338.for.body116_crit_edge, %for.body116.lr.ph
  %i.2358 = phi i32 [ 0, %for.body116.lr.ph ], [ %inc124, %nvkm_rdi2cr.exit338.for.body116_crit_edge ]
  %203 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %addr23, align 4
  %205 = trunc i32 %i.2358 to i8
  %conv119 = add i8 %205, -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i322)
  %206 = ptrtoint ptr %reg.addr.i322 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv119, ptr %reg.addr.i322, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i323) #5
  %207 = ptrtoint ptr %val.i323 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -1, ptr %val.i323, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i324) #5
  %208 = call ptr @memset(ptr %202, i32 255, i32 16)
  %conv.i325 = zext i8 %204 to i16
  %209 = ptrtoint ptr %msgs.i324 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv.i325, ptr %msgs.i324, align 4
  %210 = ptrtoint ptr %flags.i326 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %flags.i326, align 2
  %211 = ptrtoint ptr %202 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 1, ptr %202, align 4
  %212 = ptrtoint ptr %buf.i328 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %reg.addr.i322, ptr %buf.i328, align 4
  %213 = ptrtoint ptr %arrayinit.element.i329 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv.i325, ptr %arrayinit.element.i329, align 4
  %214 = ptrtoint ptr %flags4.i330 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 1, ptr %flags4.i330, align 2
  %215 = ptrtoint ptr %len5.i331 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 1, ptr %len5.i331, align 4
  %216 = ptrtoint ptr %buf6.i332 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %val.i323, ptr %buf6.i332, align 4
  %call.i333 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i324, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i333)
  %cmp.not.i334 = icmp eq i32 %call.i333, 2
  br i1 %cmp.not.i334, label %if.end.i336, label %for.body116.nvkm_rdi2cr.exit338_crit_edge

for.body116.nvkm_rdi2cr.exit338_crit_edge:        ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdi2cr.exit338

if.end.i336:                                      ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #7
  %217 = ptrtoint ptr %val.i323 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %val.i323, align 1
  br label %nvkm_rdi2cr.exit338

nvkm_rdi2cr.exit338:                              ; preds = %if.end.i336, %for.body116.nvkm_rdi2cr.exit338_crit_edge
  %retval.0.i337 = phi i8 [ %218, %if.end.i336 ], [ -5, %for.body116.nvkm_rdi2cr.exit338_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i324) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i323) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i322)
  %arrayidx122 = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.2358
  %219 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %retval.0.i337, ptr %arrayidx122, align 1
  %inc124 = add nuw nsw i32 %i.2358, 1
  %220 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %size, align 1
  %conv113 = zext i8 %221 to i32
  %cmp114 = icmp ult i32 %inc124, %conv113
  br i1 %cmp114, label %nvkm_rdi2cr.exit338.for.body116_crit_edge, label %nvkm_rdi2cr.exit338.do.body126_crit_edge

nvkm_rdi2cr.exit338.do.body126_crit_edge:         ; preds = %nvkm_rdi2cr.exit338
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body126

nvkm_rdi2cr.exit338.for.body116_crit_edge:        ; preds = %nvkm_rdi2cr.exit338
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body116

do.body126:                                       ; preds = %nvkm_rdi2cr.exit338.do.body126_crit_edge, %for.cond112.preheader.do.body126_crit_edge
  %222 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pad5, align 4
  %i2c132 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %i2c132 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %i2c132, align 4
  %debug134 = getelementptr inbounds %struct.nvkm_i2c, ptr %225, i32 0, i32 1, i32 5
  %226 = ptrtoint ptr %debug134 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %debug134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %227)
  %cmp135 = icmp ugt i32 %227, 3
  br i1 %cmp135, label %do.end140, label %do.body126.if.end147_crit_edge

do.body126.if.end147_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

do.end140:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  %device141 = getelementptr inbounds %struct.nvkm_i2c, ptr %225, i32 0, i32 1, i32 1
  %228 = ptrtoint ptr %device141 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %device141, align 4
  %dev142 = getelementptr inbounds %struct.nvkm_device, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev142, align 8
  %name143 = getelementptr inbounds %struct.nvkm_i2c, ptr %225, i32 0, i32 1, i32 4
  %id145 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 2
  %232 = ptrtoint ptr %id145 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %id145, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %231, ptr noundef nonnull @.str.6, ptr noundef %name143, i32 noundef %233, ptr noundef nonnull %buf) #9
  br label %if.end147

if.end147:                                        ; preds = %do.end140, %do.body126.if.end147_crit_edge
  %234 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %size, align 1
  %conv153 = zext i8 %235 to i32
  %236 = call ptr @memcpy(ptr %data, ptr %buf, i32 %conv153)
  br label %done

done:                                             ; preds = %if.end147, %nvkm_rdi2cr.exit321.done_crit_edge, %nvkm_rdi2cr.exit321.thread, %while.body93.preheader.done_crit_edge
  %ret.0 = phi i32 [ %.mux, %nvkm_rdi2cr.exit321.done_crit_edge ], [ 0, %if.end147 ], [ -5, %nvkm_rdi2cr.exit321.thread ], [ -110, %while.body93.preheader.done_crit_edge ]
  %237 = ptrtoint ptr %addr13 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %addr13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i339) #5
  %239 = getelementptr inbounds [2 x i8], ptr %buf.i339, i32 0, i32 1
  %240 = ptrtoint ptr %buf.i339 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 -9, ptr %buf.i339, align 1
  %241 = ptrtoint ptr %239 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 1, ptr %239, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i340) #5
  %242 = getelementptr inbounds i8, ptr %msgs.i340, i32 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 196607, ptr %242, align 4
  %conv.i341 = zext i8 %238 to i16
  %244 = ptrtoint ptr %msgs.i340 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %conv.i341, ptr %msgs.i340, align 4
  %flags.i342 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i340, i32 0, i32 1
  %245 = ptrtoint ptr %flags.i342 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 0, ptr %flags.i342, align 2
  %buf3.i344 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i340, i32 0, i32 3
  %246 = ptrtoint ptr %buf3.i344 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %buf.i339, ptr %buf3.i344, align 4
  %call.i345 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i340, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i340) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i339) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx9805_aux_lnk_ctl(ptr nocapture noundef readonly %base, i32 noundef %link_nr, i32 noundef %link_bw, i1 noundef zeroext %enh) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msgs.i140 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i133 = alloca [2 x i8], align 1
  %msgs.i134 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i126 = alloca [2 x i8], align 1
  %msgs.i127 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i119 = alloca [2 x i8], align 1
  %msgs.i120 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad1 = getelementptr inbounds %struct.anx9805_aux, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad1, align 8
  %bus = getelementptr inbounds %struct.anx9805_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5
  %pad5 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 1
  %4 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pad5, align 4
  %i2c6 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i2c6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c6, align 4
  %debug = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ugt i32 %9, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_i2c, ptr %7, i32 0, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  %conv = zext i1 %enh to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %15, i32 noundef %link_nr, i32 noundef %link_bw, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %addr = getelementptr inbounds %struct.anx9805_aux, ptr %base, i32 0, i32 2
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr, align 4
  %conv12 = trunc i32 %link_bw to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -96, ptr %buf.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #5
  %21 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %conv.i = zext i8 %17 to i16
  %23 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i, ptr %buf3.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr, align 4
  %cond = select i1 %enh, i32 128, i32 0
  %or = or i32 %cond, %link_nr
  %conv16 = trunc i32 %or to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i119) #5
  %28 = getelementptr inbounds [2 x i8], ptr %buf.i119, i32 0, i32 1
  %29 = ptrtoint ptr %buf.i119 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -95, ptr %buf.i119, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i120) #5
  %31 = getelementptr inbounds i8, ptr %msgs.i120, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %conv.i121 = zext i8 %27 to i16
  %33 = ptrtoint ptr %msgs.i120 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i121, ptr %msgs.i120, align 4
  %flags.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i120, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i122 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i122, align 2
  %buf3.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i120, i32 0, i32 3
  %35 = ptrtoint ptr %buf3.i124 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i119, ptr %buf3.i124, align 4
  %call.i125 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i120, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i120) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i119) #5
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i126) #5
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i126, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -94, ptr %buf.i126, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i127) #5
  %41 = getelementptr inbounds i8, ptr %msgs.i127, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %conv.i128 = zext i8 %37 to i16
  %43 = ptrtoint ptr %msgs.i127 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i128, ptr %msgs.i127, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i127, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i129, align 2
  %buf3.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i127, i32 0, i32 3
  %45 = ptrtoint ptr %buf3.i131 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i126, ptr %buf3.i131, align 4
  %call.i132 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i127, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i127) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i126) #5
  %46 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i133) #5
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i133, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i133 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -88, ptr %buf.i133, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i134) #5
  %51 = getelementptr inbounds i8, ptr %msgs.i134, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %conv.i135 = zext i8 %47 to i16
  %53 = ptrtoint ptr %msgs.i134 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i135, ptr %msgs.i134, align 4
  %flags.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i134, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i136 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i136, align 2
  %buf3.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i134, i32 0, i32 3
  %55 = ptrtoint ptr %buf3.i138 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i133, ptr %buf3.i138, align 4
  %call.i139 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i134, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i134) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i133) #5
  %56 = getelementptr inbounds i8, ptr %msgs.i140, i32 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i140, i32 0, i32 1
  %buf.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i140, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i140, i32 1
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i140, i32 1, i32 1
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i140, i32 1, i32 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i140, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body29.preheader.while.cond_crit_edge, %if.end
  %i.0 = phi i8 [ 0, %if.end ], [ %inc, %while.body29.preheader.while.cond_crit_edge ]
  %57 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %59 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -88, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %val.i, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i140) #5
  %61 = call ptr @memset(ptr %56, i32 255, i32 16)
  %conv.i141 = zext i8 %58 to i16
  %62 = ptrtoint ptr %msgs.i140 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i141, ptr %msgs.i140, align 4
  %63 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i142, align 2
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %56, align 4
  %65 = ptrtoint ptr %buf.i144 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %reg.addr.i, ptr %buf.i144, align 4
  %66 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i141, ptr %arrayinit.element.i, align 4
  %67 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags4.i, align 2
  %68 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %len5.i, align 4
  %69 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %val.i, ptr %buf6.i, align 4
  %call.i145 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i140, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i145)
  %cmp.not.i = icmp eq i32 %call.i145, 2
  br i1 %cmp.not.i, label %nvkm_rdi2cr.exit, label %nvkm_rdi2cr.exit.thread

nvkm_rdi2cr.exit.thread:                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i140) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %while.body29.preheader

nvkm_rdi2cr.exit:                                 ; preds = %while.cond
  %70 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i140) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool26.not = icmp eq i8 %72, 0
  br i1 %tobool26.not, label %while.end60, label %nvkm_rdi2cr.exit.while.body29.preheader_crit_edge

nvkm_rdi2cr.exit.while.body29.preheader_crit_edge: ; preds = %nvkm_rdi2cr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body29.preheader

while.body29.preheader:                           ; preds = %nvkm_rdi2cr.exit.while.body29.preheader_crit_edge, %nvkm_rdi2cr.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #5
  %inc = add nuw nsw i8 %i.0, 1
  %cmp31 = icmp eq i8 %i.0, 100
  br i1 %cmp31, label %do.body34, label %while.body29.preheader.while.cond_crit_edge

while.body29.preheader.while.cond_crit_edge:      ; preds = %while.body29.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.body34:                                        ; preds = %while.body29.preheader
  %78 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pad5, align 4
  %i2c40 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %i2c40 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c40, align 4
  %debug42 = getelementptr inbounds %struct.nvkm_i2c, ptr %81, i32 0, i32 1, i32 5
  %82 = ptrtoint ptr %debug42 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp43.not = icmp eq i32 %83, 0
  br i1 %cmp43.not, label %do.body34.cleanup_crit_edge, label %do.body34.cleanup.sink.split_crit_edge

do.body34.cleanup.sink.split_crit_edge:           ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end60:                                      ; preds = %nvkm_rdi2cr.exit
  %84 = and i8 %71, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool63.not = icmp eq i8 %84, 0
  br i1 %tobool63.not, label %while.end60.cleanup_crit_edge, label %do.body65

while.end60.cleanup_crit_edge:                    ; preds = %while.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body65:                                        ; preds = %while.end60
  %85 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pad5, align 4
  %i2c71 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %i2c71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i2c71, align 4
  %debug73 = getelementptr inbounds %struct.nvkm_i2c, ptr %88, i32 0, i32 1, i32 5
  %89 = ptrtoint ptr %debug73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %debug73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp74.not = icmp eq i32 %90, 0
  br i1 %cmp74.not, label %do.body65.cleanup_crit_edge, label %do.body65.cleanup.sink.split_crit_edge

do.body65.cleanup.sink.split_crit_edge:           ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body65.cleanup_crit_edge:                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body65.cleanup.sink.split_crit_edge, %do.body34.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %81, %do.body34.cleanup.sink.split_crit_edge ], [ %88, %do.body65.cleanup.sink.split_crit_edge ]
  %.str.17.sink = phi ptr [ @.str.13, %do.body34.cleanup.sink.split_crit_edge ], [ @.str.17, %do.body65.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %do.body34.cleanup.sink.split_crit_edge ], [ -5, %do.body65.cleanup.sink.split_crit_edge ]
  %device80 = getelementptr inbounds %struct.nvkm_i2c, ptr %.sink, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %device80 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device80, align 4
  %dev81 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev81, align 8
  %name82 = getelementptr inbounds %struct.nvkm_i2c, ptr %.sink, i32 0, i32 1, i32 4
  %id84 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %base, i32 0, i32 2
  %95 = ptrtoint ptr %id84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %id84, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull %.str.17.sink, ptr noundef %name82, i32 noundef %96) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body65.cleanup_crit_edge, %while.end60.cleanup_crit_edge, %do.body34.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.body34.cleanup_crit_edge ], [ -5, %do.body65.cleanup_crit_edge ], [ 0, %while.end60.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @anx9805_pad_func, !1, !"anx9805_pad_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 259, i32 1}
!2 = !{ptr @anx9805_bus_func, !3, !"anx9805_bus_func", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 98, i32 1}
!4 = !{ptr @anx9805_aux_func, !5, !"anx9805_aux_func", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 226, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 146, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @anx9805_aux_xfer._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @anx9805_aux_xfer._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 156, i32 3}
!16 = !{ptr @anx9805_aux_xfer._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @anx9805_aux_xfer._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @anx9805_aux_xfer._entry.8, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 181, i32 3}
!20 = !{ptr @anx9805_aux_xfer._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 200, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @anx9805_aux_lnk_ctl._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @anx9805_aux_lnk_ctl._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 212, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @anx9805_aux_lnk_ctl._entry.12, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @anx9805_aux_lnk_ctl._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c", i32 218, i32 3}
!33 = !{ptr @anx9805_aux_lnk_ctl._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @anx9805_aux_lnk_ctl._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
