; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nvkm_clk_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.nvkm_domain] }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvbios_cstepX = type { i32, [2 x i8], i8 }
%struct.nvbios_cstepE = type { i8, i8 }
%struct.nvbios_perfE = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.nvbios_perfS = type { %union.anon.159 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32 }
%struct.nvbios_vpstate_header = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvbios_vpstate_entry = type { i8, i16 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.135], i32, i32, i8, i8, i8, i32 }
%struct.anon.135 = type { i32, i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.147, %struct.anon.148, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.147 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.148 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_boostE = type { i8, i32, i32 }
%struct.nvbios_boostS = type { i8, i8, i32, i32 }

@nvkm_clk = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_clk_dtor, ptr null, ptr null, ptr null, ptr @nvkm_clk_init, ptr @nvkm_clk_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_clk_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&clk->work)\00", [34 x i8] zeroinitializer }, align 32
@nvkm_clk_ctor.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&clk->wait\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NvClkMode\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvClkModeAC\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvClkModeDC\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NvBoost\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c\00", [49 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvkm_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 604, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %02x freq unknown\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_clk_init\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_clk_init._entry_ptr = internal global ptr @nvkm_clk_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@nvkm_pstate_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 363, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %02x: %10d KHz\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_pstate_info\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_pstate_info._entry_ptr = internal global ptr @nvkm_pstate_info._entry, section ".printk_index", align 4
@nvkm_pstate_info._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.7, i32 368, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %10d KHz\0A\00", [18 x i8] zeroinitializer }, align 32
@nvkm_pstate_info._entry_ptr.18 = internal global ptr @nvkm_pstate_info._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %d MHz\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %d-%d MHz\00", [19 x i8] zeroinitializer }, align 32
@nvkm_pstate_info._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.7, i32 384, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s: %s %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@nvkm_pstate_info._entry_ptr.23 = internal global ptr @nvkm_pstate_info._entry.21, section ".printk_index", align 4
@nvkm_pstate_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 310, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: P %d PWR %d U(AC) %d U(DC) %d A %d T %d\C2\B0C D %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_pstate_work\00", [47 x i8] zeroinitializer }, align 32
@nvkm_pstate_work._entry_ptr = internal global ptr @nvkm_pstate_work._entry, section ".printk_index", align 4
@nvkm_pstate_work._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.7, i32 321, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: -> %d\0A\00", [21 x i8] zeroinitializer }, align 32
@nvkm_pstate_work._entry_ptr.28 = internal global ptr @nvkm_pstate_work._entry.26, section ".printk_index", align 4
@nvkm_pstate_work._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.7, i32 326, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: error setting pstate %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_pstate_work._entry_ptr.31 = internal global ptr @nvkm_pstate_work._entry.29, section ".printk_index", align 4
@nvkm_pstate_prog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.7, i32 278, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: setting performance state %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_pstate_prog\00", [47 x i8] zeroinitializer }, align 32
@nvkm_pstate_prog._entry_ptr = internal global ptr @nvkm_pstate_prog._entry, section ".printk_index", align 4
@nvkm_cstate_prog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 179, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to raise fan speed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_cstate_prog\00", [47 x i8] zeroinitializer }, align 32
@nvkm_cstate_prog._entry_ptr = internal global ptr @nvkm_cstate_prog._entry, section ".printk_index", align 4
@nvkm_cstate_prog._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.7, i32 188, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to raise voltage: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_cstate_prog._entry_ptr.38 = internal global ptr @nvkm_cstate_prog._entry.36, section ".printk_index", align 4
@nvkm_cstate_prog._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.7, i32 203, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to lower voltage: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_cstate_prog._entry_ptr.41 = internal global ptr @nvkm_cstate_prog._entry.39, section ".printk_index", align 4
@nvkm_cstate_prog._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.7, i32 209, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to lower fan speed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nvkm_cstate_prog._entry_ptr.44 = internal global ptr @nvkm_cstate_prog._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"nvkm_clk\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 644, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 677, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 678, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 698, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 704, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 708, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 712, i32 49 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 340, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 604, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 355, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 363, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 368, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 375, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 379, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 384, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 308, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 321, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 325, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 278, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 179, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 188, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 203, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 209, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 500, i32 48 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 503, i32 25 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @nvkm_clk_init._entry, ptr @nvkm_clk_init._entry_ptr, ptr @nvkm_cstate_prog._entry, ptr @nvkm_cstate_prog._entry.36, ptr @nvkm_cstate_prog._entry.39, ptr @nvkm_cstate_prog._entry.42, ptr @nvkm_cstate_prog._entry_ptr, ptr @nvkm_cstate_prog._entry_ptr.38, ptr @nvkm_cstate_prog._entry_ptr.41, ptr @nvkm_cstate_prog._entry_ptr.44, ptr @nvkm_pstate_info._entry, ptr @nvkm_pstate_info._entry.16, ptr @nvkm_pstate_info._entry.21, ptr @nvkm_pstate_info._entry_ptr, ptr @nvkm_pstate_info._entry_ptr.18, ptr @nvkm_pstate_info._entry_ptr.23, ptr @nvkm_pstate_prog._entry, ptr @nvkm_pstate_prog._entry_ptr, ptr @nvkm_pstate_work._entry, ptr @nvkm_pstate_work._entry.26, ptr @nvkm_pstate_work._entry.29, ptr @nvkm_pstate_work._entry_ptr, ptr @nvkm_pstate_work._entry_ptr.28, ptr @nvkm_pstate_work._entry_ptr.31, ptr @nvkm_clk, ptr @nvkm_clk_ctor.__key, ptr @.str, ptr @nvkm_clk_ctor.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_clk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_clk_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_clk_ctor.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_info._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_info._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_work._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_work._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pstate_prog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_cstate_prog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_cstate_prog._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_cstate_prog._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_cstate_prog._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_ustate(ptr noundef %clk, i32 noundef %req, i32 noundef %pwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %allow_reclock.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 17
  %0 = ptrtoint ptr %allow_reclock.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %allow_reclock.i, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %req)
  %switch = icmp ugt i32 %req, -3
  br i1 %switch, label %nvkm_clk_ustate_update.exit.thread14, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %states.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 4
  %2 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pstate.033.i = load ptr, ptr %states.i, align 4
  %cmp4.not34.i = icmp eq ptr %pstate.033.i, %states.i
  br i1 %cmp4.not34.i, label %if.then2.i.for.end.i_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.for.end.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %pstate.036.i = phi ptr [ %pstate.0.i, %if.end9.i.for.body.i_crit_edge ], [ %pstate.033.i, %if.then2.i.for.body.i_crit_edge ]
  %i.035.i = phi i32 [ %inc.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %if.then2.i.for.body.i_crit_edge ]
  %pstate5.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.036.i, i32 0, i32 3
  %3 = ptrtoint ptr %pstate5.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pstate5.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %req)
  %cmp6.i = icmp eq i32 %conv.i, %req
  br i1 %cmp6.i, label %for.body.i.for.end.i_crit_edge, label %if.end9.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end9.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.035.i, 1
  %5 = ptrtoint ptr %pstate.036.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %pstate.0.i = load ptr, ptr %pstate.036.i, align 4
  %cmp4.not.i = icmp eq ptr %pstate.0.i, %states.i
  br i1 %cmp4.not.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then2.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then2.i.for.end.i_crit_edge ], [ %inc.i, %if.end9.i.for.end.i_crit_edge ], [ %i.035.i, %for.body.i.for.end.i_crit_edge ]
  %pstate.0.lcssa.i = phi ptr [ %states.i, %if.then2.i.for.end.i_crit_edge ], [ %states.i, %if.end9.i.for.end.i_crit_edge ], [ %pstate.036.i, %for.body.i.for.end.i_crit_edge ]
  %pstate15.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.lcssa.i, i32 0, i32 3
  %6 = ptrtoint ptr %pstate15.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pstate15.i, align 4
  %conv16.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %req)
  %cmp17.not.i = icmp eq i32 %conv16.i, %req
  br i1 %cmp17.not.i, label %nvkm_clk_ustate_update.exit, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nvkm_clk_ustate_update.exit.thread14:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i16 = add nsw i32 %req, 2
  br label %if.then

nvkm_clk_ustate_update.exit:                      ; preds = %for.end.i
  %add.i = add i32 %i.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp = icmp sgt i32 %add.i, -1
  br i1 %cmp, label %nvkm_clk_ustate_update.exit.if.then_crit_edge, label %nvkm_clk_ustate_update.exit.cleanup_crit_edge

nvkm_clk_ustate_update.exit.cleanup_crit_edge:    ; preds = %nvkm_clk_ustate_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nvkm_clk_ustate_update.exit.if.then_crit_edge:    ; preds = %nvkm_clk_ustate_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %nvkm_clk_ustate_update.exit.if.then_crit_edge, %nvkm_clk_ustate_update.exit.thread14
  %add.i18 = phi i32 [ %add.i16, %nvkm_clk_ustate_update.exit.thread14 ], [ %add.i, %nvkm_clk_ustate_update.exit.if.then_crit_edge ]
  %sub = add nsw i32 %add.i18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pwr)
  %tobool.not = icmp eq i32 %pwr, 0
  %ustate_dc = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 13
  %ustate_ac = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 12
  %ustate_dc.sink = select i1 %tobool.not, ptr %ustate_dc, ptr %ustate_ac
  %8 = ptrtoint ptr %ustate_dc.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %ustate_dc.sink, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %clk, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %nvkm_clk_ustate_update.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %add.i, %nvkm_clk_ustate_update.exit.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_pstate_calc(ptr noundef %clk, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %waiting = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiting, i32 noundef 4) #9
  %0 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %waiting, align 4
  %work = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #9
  br i1 %wait, label %do.body1, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body1:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 340) #9
  %call.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %waiting, i32 noundef 4) #9
  %2 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %waiting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.body1.if.end17_crit_edge, label %if.end

do.body1.if.end17_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end:                                           ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait8 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 7
  %call96 = call i32 @prepare_to_wait_event(ptr noundef %wait8, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i27 = call zeroext i1 @__kasan_check_read(ptr noundef %waiting, i32 noundef 4) #9
  %5 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %waiting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not8 = icmp eq i32 %6, 0
  br i1 %tobool12.not8, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #9
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %wait8, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i2 = call zeroext i1 @__kasan_check_read(ptr noundef %waiting, i32 noundef 4) #9
  %7 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %waiting, align 4
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait8, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end17

if.end17:                                         ; preds = %for.end, %do.body1.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_astate(ptr noundef %clk, i32 noundef %req, i32 noundef %rel, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rel)
  %tobool.not = icmp eq i32 %rel, 0
  %astate = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 14
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then2.critedge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %astate, align 4
  %add = add i32 %1, %rel
  br label %if.end4

if.end4:                                          ; preds = %if.then2.critedge, %entry.if.end4_crit_edge
  %req.sink = phi i32 [ %add, %if.then2.critedge ], [ %req, %entry.if.end4_crit_edge ]
  %2 = ptrtoint ptr %astate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %req.sink, ptr %astate, align 4
  %astate5 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 14
  %state_nr = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 5
  %3 = ptrtoint ptr %state_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state_nr, align 4
  %sub = add i32 %4, -1
  %5 = tail call i32 @llvm.smin.i32(i32 %req.sink, i32 %sub)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = ptrtoint ptr %astate5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %astate5, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %clk, i1 noundef zeroext %wait)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_tstate(ptr noundef %clk, i8 noundef zeroext %temp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %temp1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 16
  %0 = ptrtoint ptr %temp1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %temp)
  %cmp = icmp eq i8 %1, %temp
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %temp1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %temp, ptr %temp1, align 4
  %waiting.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiting.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %waiting.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %waiting.i, align 4
  %work.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i3.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work.i) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_dstate(ptr noundef %clk, i32 noundef %req, i32 noundef %rel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rel)
  %tobool.not = icmp eq i32 %rel, 0
  %dstate = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 15
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then2.critedge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dstate, align 4
  %add = add i32 %1, %rel
  br label %if.end4

if.end4:                                          ; preds = %if.then2.critedge, %entry.if.end4_crit_edge
  %req.sink = phi i32 [ %add, %if.then2.critedge ], [ %req, %entry.if.end4_crit_edge ]
  %2 = ptrtoint ptr %dstate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %req.sink, ptr %dstate, align 4
  %dstate5 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 15
  %state_nr = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 5
  %3 = ptrtoint ptr %state_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state_nr, align 4
  %sub = add i32 %4, -1
  %5 = tail call i32 @llvm.smin.i32(i32 %req.sink, i32 %sub)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = ptrtoint ptr %dstate5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dstate5, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %clk, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %read = getelementptr inbounds %struct.nvkm_clk_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = tail call i32 %3(ptr noundef %clk, i32 noundef %src) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %allow_reclock, ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  %cstepX.i.i = alloca %struct.nvbios_cstepX, align 8
  %ver.i.i = alloca i8, align 1
  %hdr.i.i = alloca i8, align 1
  %cstepE.i = alloca %struct.nvbios_cstepE, align 1
  %perfE.i = alloca %struct.nvbios_perfE, align 4
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %perfS.i = alloca %struct.nvbios_perfS, align 4
  %sver.i = alloca i8, align 1
  %shdr.i = alloca i8, align 1
  %arglen = alloca i32, align 4
  %h = alloca %struct.nvbios_vpstate_header, align 4
  %base = alloca %struct.nvbios_vpstate_entry, align 4
  %boost = alloca %struct.nvbios_vpstate_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %allow_reclock to i8
  %subdev1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 21
  %0 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arglen) #9
  %2 = ptrtoint ptr %arglen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %arglen, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h) #9
  %3 = call ptr @memset(ptr %h, i32 255, i32 16)
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev1) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @nvbios_vpstate_parse(ptr noundef nonnull %1, ptr noundef nonnull %h) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #9
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %base, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boost) #9
  %5 = ptrtoint ptr %boost to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %boost, align 4, !annotation !94
  %boost_id = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 8
  %6 = ptrtoint ptr %boost_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %boost_id, align 1
  %call4 = call i32 @nvbios_vpstate_entry(ptr noundef nonnull %1, ptr noundef nonnull %h, i8 noundef zeroext %7, ptr noundef nonnull %boost) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %clock_mhz = getelementptr inbounds %struct.nvbios_vpstate_entry, ptr %boost, i32 0, i32 1
  %8 = ptrtoint ptr %clock_mhz to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %clock_mhz, align 2
  %conv = zext i16 %9 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %boost_khz = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 20
  %10 = ptrtoint ptr %boost_khz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %boost_khz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %base_id = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 7
  %11 = ptrtoint ptr %base_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %base_id, align 2
  %call7 = call i32 @nvbios_vpstate_entry(ptr noundef nonnull %1, ptr noundef nonnull %h, i8 noundef zeroext %12, ptr noundef nonnull %base) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %clock_mhz10 = getelementptr inbounds %struct.nvbios_vpstate_entry, ptr %base, i32 0, i32 1
  %13 = ptrtoint ptr %clock_mhz10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %clock_mhz10, align 2
  %conv11 = zext i16 %14 to i32
  %mul12 = mul nuw nsw i32 %conv11, 1000
  %base_khz = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 19
  %15 = ptrtoint ptr %base_khz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul12, ptr %base_khz, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boost) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %func, ptr %clk, align 4
  %states = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 4
  %17 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %states, ptr %states, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %states, ptr %prev.i, align 4
  %domains = getelementptr inbounds %struct.nvkm_clk_func, ptr %func, i32 0, i32 8
  %domains16 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 2
  %19 = ptrtoint ptr %domains16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %domains, ptr %domains16, align 4
  %ustate_ac = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 12
  %20 = ptrtoint ptr %ustate_ac to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %ustate_ac, align 4
  %ustate_dc = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 13
  %21 = ptrtoint ptr %ustate_dc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %ustate_dc, align 4
  %allow_reclock18 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 17
  %22 = ptrtoint ptr %allow_reclock18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %allow_reclock18, align 1
  %work = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %23 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_clk_ctor.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry23 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i132 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry23, ptr %prev.i132, align 4
  %func25 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nvkm_pstate_work, ptr %func25, align 4
  %wait = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvkm_clk_ctor.__key.1) #9
  %waiting = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %waiting, i32 noundef 4) #9
  %27 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %waiting, align 4
  %pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %func, i32 0, i32 6
  %28 = ptrtoint ptr %pstates to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pstates, align 4
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %do.body31.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %nr_pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %func, i32 0, i32 7
  %30 = ptrtoint ptr %nr_pstates to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_pstates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp36139 = icmp sgt i32 %31, 0
  br i1 %cmp36139, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body31.preheader:                              ; preds = %if.end14
  %device.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %32 = getelementptr inbounds %struct.nvbios_cstepE, ptr %cstepE.i, i32 0, i32 1
  %fanspeed.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 1
  %pcie_speed.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 9
  %pcie_width.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 10
  %voltage.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 2
  %core.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 3
  %shader.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 4
  %memory.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 5
  %vdec.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 6
  %disp.i = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE.i, i32 0, i32 7
  %voltage.i.i = getelementptr inbounds %struct.nvbios_cstepX, ptr %cstepX.i.i, i32 0, i32 2
  %state_nr.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 5
  br label %do.body31

do.body31:                                        ; preds = %nvkm_pstate_new.exit, %do.body31.preheader
  %idx.0 = phi i32 [ %inc, %nvkm_pstate_new.exit ], [ 0, %do.body31.preheader ]
  %inc = add i32 %idx.0, 1
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i, align 4
  %bios1.i = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %bios1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bios1.i, align 8
  %37 = ptrtoint ptr %domains16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domains16, align 4
  %add.ptr.i = getelementptr %struct.nvkm_domain, ptr %38, i32 -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cstepE.i) #9
  %39 = ptrtoint ptr %cstepE.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %cstepE.i, align 1, !annotation !94
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %32, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %perfE.i) #9
  %41 = call ptr @memset(ptr %perfE.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #9
  %42 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %ver.i, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #9
  %43 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %hdr.i, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #9
  %44 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %cnt.i, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #9
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %len.i, align 1, !annotation !94
  %call.i = call i32 @nvbios_perfEp(ptr noundef %36, i32 noundef %idx.0, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef nonnull %perfE.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body31.nvkm_pstate_new.exit.thread_crit_edge, label %if.end.i

do.body31.nvkm_pstate_new.exit.thread_crit_edge:  ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_new.exit.thread

if.end.i:                                         ; preds = %do.body31
  %46 = ptrtoint ptr %perfE.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %perfE.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp.i = icmp eq i8 %47, -1
  br i1 %cmp.i, label %if.end.i.nvkm_pstate_new.exit_crit_edge, label %if.end5.i

if.end.i.nvkm_pstate_new.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_new.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 160) #12
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.nvkm_pstate_new.exit.thread_crit_edge, label %if.end9.i

if.end5.i.nvkm_pstate_new.exit.thread_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_new.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %list.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list.i, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %perfE.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %perfE.i, align 4
  %pstate11.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %pstate11.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %pstate11.i, align 4
  %54 = ptrtoint ptr %fanspeed.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fanspeed.i, align 1
  %fanspeed12.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %fanspeed12.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %fanspeed12.i, align 1
  %57 = ptrtoint ptr %pcie_speed.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pcie_speed.i, align 4
  %conv13.i = zext i8 %58 to i32
  %pcie_speed14.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %pcie_speed14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv13.i, ptr %pcie_speed14.i, align 8
  %60 = ptrtoint ptr %pcie_width.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pcie_width.i, align 1
  %pcie_width15.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %pcie_width15.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %pcie_width15.i, align 4
  %63 = ptrtoint ptr %voltage.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %voltage.i, align 2
  %voltage16.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %voltage16.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %voltage16.i, align 8
  %66 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %core.i, align 4
  %arrayidx.i = getelementptr %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 15
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx.i, align 8
  %69 = ptrtoint ptr %shader.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %shader.i, align 4
  %arrayidx19.i = getelementptr %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 17
  %71 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx19.i, align 8
  %72 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %memory.i, align 4
  %arrayidx21.i = getelementptr %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 18
  %74 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx21.i, align 4
  %75 = ptrtoint ptr %vdec.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vdec.i, align 4
  %arrayidx23.i = getelementptr %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 27
  %77 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx23.i, align 8
  %78 = ptrtoint ptr %disp.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %disp.i, align 4
  %arrayidx25.i = getelementptr %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 28
  %80 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx25.i, align 4
  %81 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %82)
  %cmp27109.i = icmp ugt i8 %82, 63
  br i1 %cmp27109.i, label %if.end9.i.land.rhs.i_crit_edge, label %if.end9.i.while.end.i_crit_edge

if.end9.i.while.end.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end9.i.land.rhs.i_crit_edge:                   ; preds = %if.end9.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %if.end9.i.land.rhs.i_crit_edge
  %83 = phi i8 [ %115, %cleanup.i.land.rhs.i_crit_edge ], [ %82, %if.end9.i.land.rhs.i_crit_edge ]
  %domain.0110.i = phi ptr [ %incdec.ptr.i, %cleanup.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %if.end9.i.land.rhs.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.nvkm_domain, ptr %domain.0110.i, i32 1
  %84 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %85)
  %cmp29.not.i = icmp eq i32 %85, 29
  br i1 %cmp29.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %perfS.i) #9
  %86 = ptrtoint ptr %perfS.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %perfS.i, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sver.i) #9
  %87 = ptrtoint ptr %sver.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %83, ptr %sver.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shdr.i) #9
  %88 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hdr.i, align 1
  %90 = ptrtoint ptr %shdr.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %shdr.i, align 1
  %bios31.i = getelementptr %struct.nvkm_domain, ptr %domain.0110.i, i32 1, i32 1
  %91 = ptrtoint ptr %bios31.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bios31.i, align 4
  %conv32.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %cnt.i, align 1
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %len.i, align 1
  %call33.i = call i32 @nvbios_perfSp(ptr noundef %36, i32 noundef %call.i, i32 noundef %conv32.i, ptr noundef nonnull %sver.i, ptr noundef nonnull %shdr.i, i8 noundef zeroext %94, i8 noundef zeroext %96, ptr noundef nonnull %perfS.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp eq i32 %call33.i, 0
  br i1 %cmp34.i, label %while.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %97 = ptrtoint ptr %sver.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %98)
  %cmp37.not.i = icmp eq i8 %98, 64
  br i1 %cmp37.not.i, label %if.end40.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end40.i:                                       ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.nvkm_domain, ptr %domain.0110.i, i32 1, i32 2
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags.i, align 1
  %101 = and i8 %100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool42.not.i = icmp eq i8 %101, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end48.i_crit_edge, label %if.then43.i

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %pstate11.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %pstate11.i, align 4
  %104 = ptrtoint ptr %bios31.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bios31.i, align 4
  %106 = ptrtoint ptr %perfS.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %perfS.i, align 4
  %call46.i = call fastcc i32 @nvkm_clk_adjust(ptr noundef %clk, i1 noundef zeroext false, i8 noundef zeroext %103, i8 noundef zeroext %105, i32 noundef %107) #9
  %108 = ptrtoint ptr %perfS.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call46.i, ptr %perfS.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end48.i_crit_edge
  %109 = ptrtoint ptr %perfS.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %perfS.i, align 4
  %111 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %incdec.ptr.i, align 4
  %arrayidx52.i = getelementptr %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 %112
  %113 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %arrayidx52.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end48.i, %lor.lhs.false.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shdr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sver.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %perfS.i) #9
  %114 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ver.i, align 1
  %cmp27.i = icmp ugt i8 %115, 63
  br i1 %cmp27.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end9.i.while.end.i_crit_edge
  %116 = ptrtoint ptr %pstate11.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pstate11.i, align 4
  %call57.i = call i32 @nvbios_cstepEm(ptr noundef %36, i8 noundef zeroext %117, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cstepE.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %while.end.i.if.end64.i_crit_edge, label %if.then59.i

while.end.i.if.end64.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then59.i:                                      ; preds = %while.end.i
  %118 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %32, align 1
  %conv61.i = zext i8 %119 to i32
  %base.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %call7.i.i.i, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %nvkm_cstate_new.exit.i.do.body.i_crit_edge, %if.then59.i
  %idx60.0.i = phi i32 [ %conv61.i, %if.then59.i ], [ %dec.i, %nvkm_cstate_new.exit.i.do.body.i_crit_edge ]
  %120 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device.i, align 4
  %bios1.i.i = getelementptr inbounds %struct.nvkm_device, ptr %121, i32 0, i32 21
  %122 = ptrtoint ptr %bios1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bios1.i.i, align 8
  %volt4.i.i = getelementptr inbounds %struct.nvkm_device, ptr %121, i32 0, i32 40
  %124 = ptrtoint ptr %volt4.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %volt4.i.i, align 4
  %126 = ptrtoint ptr %domains16 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %domains16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cstepX.i.i) #9
  %128 = ptrtoint ptr %cstepX.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 -1, ptr %cstepX.i.i, align 8, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i.i) #9
  %129 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -1, ptr %ver.i.i, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i.i) #9
  %130 = ptrtoint ptr %hdr.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %hdr.i.i, align 1, !annotation !94
  %call.i.i133 = call i32 @nvbios_cstepXp(ptr noundef %123, i32 noundef %idx60.0.i, ptr noundef nonnull %ver.i.i, ptr noundef nonnull %hdr.i.i, ptr noundef nonnull %cstepX.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %tobool.not.i.i = icmp eq i32 %call.i.i133, 0
  br i1 %tobool.not.i.i, label %do.body.i.nvkm_cstate_new.exit.i_crit_edge, label %if.end.i.i

do.body.i.nvkm_cstate_new.exit.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_cstate_new.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  %tobool5.not.i.i = icmp eq ptr %125, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %131 = ptrtoint ptr %voltage.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %voltage.i.i, align 2
  %call6.i.i = call i32 @nvkm_volt_map_min(ptr noundef nonnull %125, i8 noundef zeroext %132) #9
  %max_uv.i.i = getelementptr inbounds %struct.nvkm_volt, ptr %125, i32 0, i32 5
  %133 = ptrtoint ptr %max_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_uv.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %134)
  %cmp.i.i = icmp ugt i32 %call6.i.i, %134
  br i1 %cmp.i.i, label %land.lhs.true.i.i.nvkm_cstate_new.exit.i_crit_edge, label %land.lhs.true.i.i.if.end8.i.i_crit_edge

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

land.lhs.true.i.i.nvkm_cstate_new.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_cstate_new.exit.i

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %135 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %135, i32 noundef 3520, i32 noundef 132) #12
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool10.not.i.i, label %if.end8.i.i.nvkm_cstate_new.exit.i_crit_edge, label %if.end12.i.i

if.end8.i.i.nvkm_cstate_new.exit.i_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_cstate_new.exit.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %136 = call ptr @memcpy(ptr %call7.i.i.i.i, ptr %base.i.i, i32 132)
  %137 = ptrtoint ptr %voltage.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %voltage.i.i, align 2
  %voltage14.i.i = getelementptr inbounds %struct.nvkm_cstate, ptr %call7.i.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %voltage14.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %voltage14.i.i, align 8
  %conv.i.i = trunc i32 %idx60.0.i to i8
  %id.i.i = getelementptr inbounds %struct.nvkm_cstate, ptr %call7.i.i.i.i, i32 0, i32 3
  %140 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv.i.i, ptr %id.i.i, align 8
  %tobool15.not1.i.i = icmp eq ptr %127, null
  br i1 %tobool15.not1.i.i, label %if.end12.i.i.while.end.i.i_crit_edge, label %if.end12.i.i.land.rhs.i.i_crit_edge

if.end12.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end12.i.i
  br label %land.rhs.i.i

if.end12.i.i.while.end.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %if.end27.i.i.land.rhs.i.i_crit_edge, %if.end12.i.i.land.rhs.i.i_crit_edge
  %domain.02.i.i = phi ptr [ %incdec.ptr.i.i, %if.end27.i.i.land.rhs.i.i_crit_edge ], [ %127, %if.end12.i.i.land.rhs.i.i_crit_edge ]
  %141 = ptrtoint ptr %domain.02.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %domain.02.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %142)
  %cmp16.not.i.i = icmp eq i32 %142, 29
  br i1 %cmp16.not.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge, label %while.body.i.i

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %flags.i.i = getelementptr inbounds %struct.nvkm_domain, ptr %domain.02.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %flags.i.i, align 1
  %145 = and i8 %144, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool19.not.i.i = icmp eq i8 %145, 0
  br i1 %tobool19.not.i.i, label %while.body.i.i.if.end27.i.i_crit_edge, label %if.then20.i.i

while.body.i.i.if.end27.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

if.then20.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %pstate11.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %pstate11.i, align 4
  %bios22.i.i = getelementptr inbounds %struct.nvkm_domain, ptr %domain.02.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %bios22.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bios22.i.i, align 4
  %150 = ptrtoint ptr %cstepX.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cstepX.i.i, align 8
  %call24.i.i = call fastcc i32 @nvkm_clk_adjust(ptr noundef %clk, i1 noundef zeroext true, i8 noundef zeroext %147, i8 noundef zeroext %149, i32 noundef %151) #9
  %152 = ptrtoint ptr %domain.02.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %domain.02.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.nvkm_cstate, ptr %call7.i.i.i.i, i32 0, i32 2, i32 %153
  %154 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call24.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then20.i.i, %while.body.i.i.if.end27.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.nvkm_domain, ptr %domain.02.i.i, i32 1
  %tobool15.not.i.i = icmp eq ptr %incdec.ptr.i.i, null
  br i1 %tobool15.not.i.i, label %if.end27.i.i.while.end.i.i_crit_edge, label %if.end27.i.i.land.rhs.i.i_crit_edge

if.end27.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

if.end27.i.i.while.end.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end27.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge, %if.end12.i.i.while.end.i.i_crit_edge
  %155 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %list.i, align 8
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %list.i, ptr noundef %156) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.end.i.i.nvkm_cstate_new.exit.i_crit_edge

while.end.i.i.nvkm_cstate_new.exit.i_crit_edge:   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_cstate_new.exit.i

if.end.i.i.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %158 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %156, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %list.i, ptr %prev3.i.i.i.i, align 4
  %160 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %call7.i.i.i.i, ptr %list.i, align 8
  br label %nvkm_cstate_new.exit.i

nvkm_cstate_new.exit.i:                           ; preds = %if.end.i.i.i.i, %while.end.i.i.nvkm_cstate_new.exit.i_crit_edge, %if.end8.i.i.nvkm_cstate_new.exit.i_crit_edge, %land.lhs.true.i.i.nvkm_cstate_new.exit.i_crit_edge, %do.body.i.nvkm_cstate_new.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cstepX.i.i) #9
  %dec.i = add nsw i32 %idx60.0.i, -1
  %tobool63.not.i = icmp eq i32 %idx60.0.i, 0
  br i1 %tobool63.not.i, label %nvkm_cstate_new.exit.i.if.end64.i_crit_edge, label %nvkm_cstate_new.exit.i.do.body.i_crit_edge

nvkm_cstate_new.exit.i.do.body.i_crit_edge:       ; preds = %nvkm_cstate_new.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

nvkm_cstate_new.exit.i.if.end64.i_crit_edge:      ; preds = %nvkm_cstate_new.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.end64.i:                                       ; preds = %nvkm_cstate_new.exit.i.if.end64.i_crit_edge, %while.end.i.if.end64.i_crit_edge
  call fastcc void @nvkm_pstate_info(ptr noundef %clk, ptr noundef nonnull %call7.i.i.i) #9
  %161 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %162, ptr noundef %states) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end64.i.list_add_tail.exit.i_crit_edge

if.end64.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %164 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %states, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %165 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %162, ptr %prev3.i.i.i, align 4
  %166 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %call7.i.i.i, ptr %162, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end64.i.list_add_tail.exit.i_crit_edge
  %167 = ptrtoint ptr %state_nr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %state_nr.i, align 4
  %inc.i = add i32 %168, 1
  store i32 %inc.i, ptr %state_nr.i, align 4
  br label %nvkm_pstate_new.exit

nvkm_pstate_new.exit.thread:                      ; preds = %if.end5.i.nvkm_pstate_new.exit.thread_crit_edge, %do.body31.nvkm_pstate_new.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %perfE.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cstepE.i) #9
  br label %if.end42

nvkm_pstate_new.exit:                             ; preds = %list_add_tail.exit.i, %if.end.i.nvkm_pstate_new.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %perfE.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cstepE.i) #9
  br label %do.body31

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %idx.1140 = phi i32 [ %inc40, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %169 = ptrtoint ptr %pstates to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pstates, align 4
  %arrayidx = getelementptr %struct.nvkm_pstate, ptr %170, i32 %idx.1140
  %171 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i, align 4
  %call.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %172, ptr noundef %states) #9
  br i1 %call.i.i135, label %if.end.i.i136, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i136:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %arrayidx, ptr %prev.i, align 4
  %174 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %states, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %175 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev3.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %arrayidx, ptr %172, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i136, %for.body.list_add_tail.exit_crit_edge
  %inc40 = add nuw nsw i32 %idx.1140, 1
  %177 = ptrtoint ptr %nr_pstates to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %nr_pstates, align 4
  %cmp36 = icmp slt i32 %inc40, %178
  br i1 %cmp36, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %31, %for.cond.preheader.for.end_crit_edge ], [ %178, %list_add_tail.exit.for.end_crit_edge ]
  %state_nr = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 5
  %179 = ptrtoint ptr %state_nr to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %.lcssa, ptr %state_nr, align 4
  br label %if.end42

if.end42:                                         ; preds = %for.end, %nvkm_pstate_new.exit.thread
  %event = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 12
  %pwrsrc_ntfy = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 9
  %call43 = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %event, ptr noundef nonnull @nvkm_clk_pwrsrc, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %pwrsrc_ntfy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %180 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfgopt, align 4
  %call47 = call ptr @nvkm_stropt(ptr noundef %181, ptr noundef nonnull @.str.3, ptr noundef nonnull %arglen) #9
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end46.if.end54_crit_edge, label %if.then49

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %arglen to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arglen, align 4
  %call50 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %clk, ptr noundef nonnull %call47, i32 noundef %183)
  %184 = ptrtoint ptr %ustate_ac to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %call50, ptr %ustate_ac, align 4
  %185 = ptrtoint ptr %arglen to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arglen, align 4
  %call52 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %clk, ptr noundef nonnull %call47, i32 noundef %186)
  %187 = ptrtoint ptr %ustate_dc to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call52, ptr %ustate_dc, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end46.if.end54_crit_edge
  %188 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfgopt, align 4
  %call56 = call ptr @nvkm_stropt(ptr noundef %189, ptr noundef nonnull @.str.4, ptr noundef nonnull %arglen) #9
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end54.if.end61_crit_edge, label %if.then58

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %arglen to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arglen, align 4
  %call59 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %clk, ptr noundef nonnull %call56, i32 noundef %191)
  %192 = ptrtoint ptr %ustate_ac to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %call59, ptr %ustate_ac, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54.if.end61_crit_edge
  %193 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cfgopt, align 4
  %call63 = call ptr @nvkm_stropt(ptr noundef %194, ptr noundef nonnull @.str.5, ptr noundef nonnull %arglen) #9
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end61.if.end68_crit_edge, label %if.then65

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %arglen to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arglen, align 4
  %call66 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %clk, ptr noundef nonnull %call63, i32 noundef %196)
  %197 = ptrtoint ptr %ustate_dc to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call66, ptr %ustate_dc, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61.if.end68_crit_edge
  %198 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfgopt, align 4
  %call70 = call i32 @nvkm_longopt(ptr noundef %199, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %conv71 = trunc i32 %call70 to i8
  %boost_mode = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 18
  %200 = ptrtoint ptr %boost_mode to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv71, ptr %boost_mode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end42.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arglen) #9
  ret i32 %call43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vpstate_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vpstate_entry(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_pstate_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -232
  %waiting = getelementptr i8, ptr %work, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiting, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %waiting, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %waiting) #9, !srcloc !96
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @power_supply_is_system_supplied() #9
  %pwrsrc = getelementptr i8, ptr %work, i32 184
  %1 = ptrtoint ptr %pwrsrc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %pwrsrc, align 4
  %debug = getelementptr i8, ptr %work, i32 -196
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr i8, ptr %work, i32 -224
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %work, i32 -212
  %pstate5 = getelementptr i8, ptr %work, i32 188
  %8 = ptrtoint ptr %pstate5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pstate5, align 4
  %ustate_ac = getelementptr i8, ptr %work, i32 192
  %10 = ptrtoint ptr %ustate_ac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ustate_ac, align 4
  %ustate_dc = getelementptr i8, ptr %work, i32 196
  %12 = ptrtoint ptr %ustate_dc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ustate_dc, align 4
  %astate = getelementptr i8, ptr %work, i32 200
  %14 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %astate, align 4
  %temp = getelementptr i8, ptr %work, i32 208
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %temp, align 4
  %conv = zext i8 %17 to i32
  %dstate = getelementptr i8, ptr %work, i32 204
  %18 = ptrtoint ptr %dstate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dstate, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %9, i32 noundef %call2, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %conv, i32 noundef %19) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %20 = ptrtoint ptr %pwrsrc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwrsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  %cond.in.v = select i1 %tobool11.not, i32 196, i32 192
  %cond.in = getelementptr i8, ptr %work, i32 %cond.in.v
  %22 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond = load i32, ptr %cond.in, align 4
  %state_nr = getelementptr i8, ptr %work, i32 -4
  %23 = ptrtoint ptr %state_nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond)
  %cmp15.not = icmp eq i32 %cond, -1
  %or.cond = select i1 %tobool14.not, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp18 = icmp slt i32 %cond, 0
  br i1 %cmp18, label %cond.true20, label %if.then17.cond.end23_crit_edge

if.then17.cond.end23_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true20:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %astate21 = getelementptr i8, ptr %work, i32 200
  %25 = ptrtoint ptr %astate21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %astate21, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %if.then17.cond.end23_crit_edge
  %cond24 = phi i32 [ %26, %cond.true20 ], [ %cond, %if.then17.cond.end23_crit_edge ]
  %sub = add i32 %24, -1
  %27 = tail call i32 @llvm.smin.i32(i32 %cond24, i32 %sub)
  %dstate33 = getelementptr i8, ptr %work, i32 204
  %28 = ptrtoint ptr %dstate33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dstate33, align 4
  %30 = tail call i32 @llvm.smax.i32(i32 %27, i32 %29)
  br label %do.body43

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %pstate41 = getelementptr i8, ptr %work, i32 188
  %31 = ptrtoint ptr %pstate41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %pstate41, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.else, %cond.end23
  %pstate.0 = phi i32 [ %30, %cond.end23 ], [ -1, %if.else ]
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp46 = icmp ugt i32 %33, 4
  br i1 %cmp46, label %do.end51, label %do.body43.if.end56_crit_edge

do.body43.if.end56_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end51:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %device52 = getelementptr i8, ptr %work, i32 -224
  %34 = ptrtoint ptr %device52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device52, align 4
  %dev53 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev53, align 8
  %name54 = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.27, ptr noundef %name54, i32 noundef %pstate.0) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end51, %do.body43.if.end56_crit_edge
  %pstate59 = getelementptr i8, ptr %work, i32 188
  %38 = ptrtoint ptr %pstate59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pstate59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pstate.0, i32 %39)
  %cmp60.not = icmp eq i32 %pstate.0, %39
  br i1 %cmp60.not, label %if.end56.if.end83_crit_edge, label %if.then62

if.end56.if.end83_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then62:                                        ; preds = %if.end56
  %device.i = getelementptr i8, ptr %work, i32 -224
  %40 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i, align 4
  %fb2.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb2.i, align 8
  %pci4.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 20
  %44 = ptrtoint ptr %pci4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci4.i, align 4
  %states.i = getelementptr i8, ptr %work, i32 -12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then62
  %idx.0.i = phi i32 [ 0, %if.then62 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %pstate.0.in.i = phi ptr [ %states.i, %if.then62 ], [ %pstate.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %46 = ptrtoint ptr %pstate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %pstate.0.i = load ptr, ptr %pstate.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pstate.0.i, %states.i
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.i, i32 %pstate.0)
  %cmp6.i = icmp eq i32 %idx.0.i, %pstate.0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp6.i
  %inc.i = add i32 %idx.0.i, 1
  br i1 %or.cond.i, label %do.body.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

do.body.i:                                        ; preds = %for.cond.i
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp12.i = icmp ugt i32 %48, 3
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.if.end16.i_crit_edge

do.body.i.if.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.32, ptr noundef %name.i, i32 noundef %pstate.0) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %do.body.i.if.end16.i_crit_edge
  %51 = ptrtoint ptr %pstate59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %pstate.0, ptr %pstate59, align 4
  %pcie_speed.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %pcie_speed.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pcie_speed.i, align 4
  %pcie_width.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 6
  %54 = ptrtoint ptr %pcie_width.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pcie_width.i, align 4
  %call.i = tail call i32 @nvkm_pcie_set_link(ptr noundef %45, i32 noundef %53, i8 noundef zeroext %55) #9
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end16.i.if.end40.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end40.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %ram.i = getelementptr inbounds %struct.nvkm_fb, ptr %43, i32 0, i32 3
  %56 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ram.i, align 4
  %tobool20.not.i = icmp eq ptr %57, null
  br i1 %tobool20.not.i, label %land.lhs.true.i.if.end40.i_crit_edge, label %land.lhs.true21.i

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %calc.i = getelementptr inbounds %struct.nvkm_ram_func, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %calc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %calc.i, align 4
  %tobool23.not.i = icmp eq ptr %61, null
  br i1 %tobool23.not.i, label %land.lhs.true21.i.if.end40.i_crit_edge, label %if.then24.i

land.lhs.true21.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then24.i:                                      ; preds = %land.lhs.true21.i
  %arrayidx.i = getelementptr %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 2, i32 2, i32 18
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.cond36.i.do.body27.i_crit_edge, %if.then24.i
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %57, align 8
  %calc29.i = getelementptr inbounds %struct.nvkm_ram_func, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %calc29.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %calc29.i, align 4
  %call30.i = tail call i32 %67(ptr noundef nonnull %57, i32 noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp eq i32 %call30.i, 0
  br i1 %cmp31.i, label %if.then32.i, label %do.body27.i.do.cond36.i_crit_edge

do.body27.i.do.cond36.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond36.i

if.then32.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %57, align 8
  %prog.i = getelementptr inbounds %struct.nvkm_ram_func, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prog.i, align 8
  %call34.i = tail call i32 %71(ptr noundef nonnull %57) #9
  br label %do.cond36.i

do.cond36.i:                                      ; preds = %if.then32.i, %do.body27.i.do.cond36.i_crit_edge
  %ret.0.i = phi i32 [ %call34.i, %if.then32.i ], [ %call30.i, %do.body27.i.do.cond36.i_crit_edge ]
  %cmp37.i = icmp sgt i32 %ret.0.i, 0
  br i1 %cmp37.i, label %do.cond36.i.do.body27.i_crit_edge, label %do.end38.i

do.cond36.i.do.body27.i_crit_edge:                ; preds = %do.cond36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.i

do.end38.i:                                       ; preds = %do.cond36.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %57, align 8
  %tidy.i = getelementptr inbounds %struct.nvkm_ram_func, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %tidy.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tidy.i, align 4
  tail call void %75(ptr noundef nonnull %57) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end38.i, %land.lhs.true21.i.if.end40.i_crit_edge, %land.lhs.true.i.if.end40.i_crit_edge, %if.end16.i.if.end40.i_crit_edge
  %76 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device.i, align 4
  %therm3.i.i = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 42
  %78 = ptrtoint ptr %therm3.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %therm3.i.i, align 4
  %volt4.i.i = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 40
  %80 = ptrtoint ptr %volt4.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %volt4.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 1
  %82 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %83, %list.i.i
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end40.i
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %pstate.0.i, null
  %tobool3.not.i.i.i = icmp eq ptr %85, null
  %or.cond.i.i.i = or i1 %tobool.not.i.i.i, %tobool3.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %tobool4.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %max_uv.i.i.i = getelementptr inbounds %struct.nvkm_volt, ptr %81, i32 0, i32 5
  %86 = ptrtoint ptr %max_uv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_uv.i.i.i, align 4
  %max0_id.i.i.i = getelementptr inbounds %struct.nvkm_volt, ptr %81, i32 0, i32 7
  %88 = ptrtoint ptr %max0_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %max0_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp.not.i.i.i = icmp eq i8 %89, -1
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i.if.end12.i.i.i_crit_edge, label %if.then8.i.i.i

if.end6.i.i.i.if.end12.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %temp.i.i.i = getelementptr i8, ptr %work, i32 208
  %90 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %temp.i.i.i, align 4
  %call.i.i.i = tail call i32 @nvkm_volt_map(ptr noundef nonnull %81, i8 noundef zeroext %89, i8 noundef zeroext %91) #9
  %92 = tail call i32 @llvm.smin.i32(i32 %87, i32 %call.i.i.i) #9
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end6.i.i.i.if.end12.i.i.i_crit_edge
  %max_volt.0.i.i.i = phi i32 [ %92, %if.then8.i.i.i ], [ %87, %if.end6.i.i.i.if.end12.i.i.i_crit_edge ]
  %max1_id.i.i.i = getelementptr inbounds %struct.nvkm_volt, ptr %81, i32 0, i32 8
  %93 = ptrtoint ptr %max1_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %max1_id.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %94)
  %cmp14.not.i.i.i = icmp eq i8 %94, -1
  br i1 %cmp14.not.i.i.i, label %if.end12.i.i.i.if.end27.i.i.i_crit_edge, label %if.then16.i.i.i

if.end12.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %temp18.i.i.i = getelementptr i8, ptr %work, i32 208
  %95 = ptrtoint ptr %temp18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %temp18.i.i.i, align 4
  %call19.i.i.i = tail call i32 @nvkm_volt_map(ptr noundef nonnull %81, i8 noundef zeroext %94, i8 noundef zeroext %96) #9
  %97 = tail call i32 @llvm.smin.i32(i32 %max_volt.0.i.i.i, i32 %call19.i.i.i) #9
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then16.i.i.i, %if.end12.i.i.i.if.end27.i.i.i_crit_edge
  %max_volt.1.i.i.i = phi i32 [ %97, %if.then16.i.i.i ], [ %max_volt.0.i.i.i, %if.end12.i.i.i.if.end27.i.i.i_crit_edge ]
  %max2_id.i.i.i = getelementptr inbounds %struct.nvkm_volt, ptr %81, i32 0, i32 9
  %98 = ptrtoint ptr %max2_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %max2_id.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %cmp29.not.i.i.i = icmp eq i8 %99, -1
  br i1 %cmp29.not.i.i.i, label %if.end27.i.i.i.if.end42.i.i.i_crit_edge, label %if.then31.i.i.i

if.end27.i.i.i.if.end42.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i.i

if.then31.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %temp33.i.i.i = getelementptr i8, ptr %work, i32 208
  %100 = ptrtoint ptr %temp33.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %temp33.i.i.i, align 4
  %call34.i.i.i = tail call i32 @nvkm_volt_map(ptr noundef nonnull %81, i8 noundef zeroext %99, i8 noundef zeroext %101) #9
  %102 = tail call i32 @llvm.smin.i32(i32 %max_volt.1.i.i.i, i32 %call34.i.i.i) #9
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then31.i.i.i, %if.end27.i.i.i.if.end42.i.i.i_crit_edge
  %max_volt.2.i.i.i = phi i32 [ %102, %if.then31.i.i.i ], [ %max_volt.1.i.i.i, %if.end27.i.i.i.if.end42.i.i.i_crit_edge ]
  %cmp43.not88.i.i.i = icmp eq ptr %list.i.i, %85
  br i1 %cmp43.not88.i.i.i, label %if.end42.i.i.i.if.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end42.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end42.i.i.i
  %temp45.i.i.i = getelementptr i8, ptr %work, i32 208
  %domains.i.i.i.i = getelementptr i8, ptr %work, i32 -176
  %boost_mode.i.i.i.i = getelementptr i8, ptr %work, i32 210
  %base_khz.i.i.i.i = getelementptr i8, ptr %work, i32 212
  %boost_khz.i.i.i.i = getelementptr i8, ptr %work, i32 216
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %cstate.addr.089.i.i.i = phi ptr [ %85, %for.body.lr.ph.i.i.i ], [ %131, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %103 = ptrtoint ptr %temp45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %temp45.i.i.i, align 4
  %105 = ptrtoint ptr %domains.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %domains.i.i.i.i, align 4
  %107 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device.i, align 4
  %volt1.i.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 40
  %109 = ptrtoint ptr %volt1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %volt1.i.i.i.i, align 4
  %tobool.not59.i.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not59.i.i.i.i, label %for.body.i.i.i.while.end.i.i.i.i_crit_edge, label %for.body.i.i.i.land.rhs.i.i.i.i_crit_edge

for.body.i.i.i.land.rhs.i.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  br label %land.rhs.i.i.i.i

for.body.i.i.i.while.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end19.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %for.body.i.i.i.land.rhs.i.i.i.i_crit_edge
  %domain.060.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %if.end19.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %106, %for.body.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %111 = ptrtoint ptr %domain.060.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %domain.060.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %112)
  %cmp.not.i.i.i.i = icmp eq i32 %112, 29
  br i1 %cmp.not.i.i.i.i, label %land.rhs.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i

land.rhs.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i.i

while.body.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.nvkm_domain, ptr %domain.060.i.i.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flags.i.i.i.i, align 1
  %115 = and i8 %114, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool2.not.i.i.i.i = icmp eq i8 %115, 0
  br i1 %tobool2.not.i.i.i.i, label %while.body.i.i.i.i.if.end19.i.i.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.i.i.if.end19.i.i.i.i_crit_edge:    ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.nvkm_cstate, ptr %cstate.addr.089.i.i.i, i32 0, i32 2, i32 %112
  %116 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %118 = ptrtoint ptr %boost_mode.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %boost_mode.i.i.i.i, align 2
  %120 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i8 %119, label %if.then.i.i.i.i.if.end19.i.i.i.i_crit_edge [
    i8 0, label %sw.bb.i.i.i.i
    i8 1, label %if.then.i.i.i.i.sw.bb11.i.i.i.i_crit_edge
  ]

if.then.i.i.i.i.sw.bb11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i.i.i

if.then.i.i.i.i.if.end19.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.then.i.i.i.i
  %121 = ptrtoint ptr %base_khz.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %base_khz.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool6.not.i.i.i.i = icmp ne i32 %122, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %122)
  %cmp8.i.i.i.i = icmp ugt i32 %117, %122
  %or.cond.i.i.i.i = select i1 %tobool6.not.i.i.i.i, i1 %cmp8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %sw.bb.i.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb.i.i.i.i.sw.bb11.i.i.i.i_crit_edge

sw.bb.i.i.i.i.sw.bb11.i.i.i.i_crit_edge:          ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i.i.i.i

sw.bb.i.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

sw.bb11.i.i.i.i:                                  ; preds = %sw.bb.i.i.i.i.sw.bb11.i.i.i.i_crit_edge, %if.then.i.i.i.i.sw.bb11.i.i.i.i_crit_edge
  %123 = ptrtoint ptr %boost_khz.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %boost_khz.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool12.not.i.i.i.i = icmp ne i32 %124, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %124)
  %cmp15.i.i.i.i = icmp ugt i32 %117, %124
  %or.cond58.i.i.i.i = select i1 %tobool12.not.i.i.i.i, i1 %cmp15.i.i.i.i, i1 false
  br i1 %or.cond58.i.i.i.i, label %sw.bb11.i.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb11.i.i.i.i.if.end19.i.i.i.i_crit_edge

sw.bb11.i.i.i.i.if.end19.i.i.i.i_crit_edge:       ; preds = %sw.bb11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i.i.i

sw.bb11.i.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %sw.bb11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end19.i.i.i.i:                                 ; preds = %sw.bb11.i.i.i.i.if.end19.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end19.i.i.i.i_crit_edge, %while.body.i.i.i.i.if.end19.i.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr %struct.nvkm_domain, ptr %domain.060.i.i.i.i, i32 1
  %tobool.not.i.i.i.i = icmp eq ptr %incdec.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end19.i.i.i.i.while.end.i.i.i.i_crit_edge, label %if.end19.i.i.i.i.land.rhs.i.i.i.i_crit_edge

if.end19.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i.i

if.end19.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %if.end19.i.i.i.i.while.end.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.while.end.i.i.i.i_crit_edge, %for.body.i.i.i.while.end.i.i.i.i_crit_edge
  %tobool20.not.i.i.i.i = icmp eq ptr %110, null
  br i1 %tobool20.not.i.i.i.i, label %while.end.i.i.i.i.if.end.i.i_crit_edge, label %if.end22.i.i.i.i

while.end.i.i.i.i.if.end.i.i_crit_edge:           ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end22.i.i.i.i:                                 ; preds = %while.end.i.i.i.i
  %voltage23.i.i.i.i = getelementptr inbounds %struct.nvkm_cstate, ptr %cstate.addr.089.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %voltage23.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %voltage23.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @nvkm_volt_map(ptr noundef nonnull %110, i8 noundef zeroext %126, i8 noundef zeroext %104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp25.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp25.i.i.i.i, label %if.end22.i.i.i.i.for.inc.i.i.i_crit_edge, label %nvkm_cstate_valid.exit.i.i.i

if.end22.i.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

nvkm_cstate_valid.exit.i.i.i:                     ; preds = %if.end22.i.i.i.i
  %max_uv.i.i.i.i = getelementptr inbounds %struct.nvkm_volt, ptr %110, i32 0, i32 5
  %127 = ptrtoint ptr %max_uv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_uv.i.i.i.i, align 4
  %129 = tail call i32 @llvm.umin.i32(i32 %128, i32 %max_volt.2.i.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %129)
  %cmp31.i.not.i.i.i = icmp ugt i32 %call.i.i.i.i, %129
  br i1 %cmp31.i.not.i.i.i, label %nvkm_cstate_valid.exit.i.i.i.for.inc.i.i.i_crit_edge, label %nvkm_cstate_valid.exit.i.i.i.if.end.i.i_crit_edge

nvkm_cstate_valid.exit.i.i.i.if.end.i.i_crit_edge: ; preds = %nvkm_cstate_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

nvkm_cstate_valid.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %nvkm_cstate_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %nvkm_cstate_valid.exit.i.i.i.for.inc.i.i.i_crit_edge, %if.end22.i.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb11.i.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb.i.i.i.i.for.inc.i.i.i_crit_edge
  %prev.i1.i.i = getelementptr inbounds %struct.list_head, ptr %cstate.addr.089.i.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i1.i.i, align 4
  %cmp43.not.i.i.i = icmp eq ptr %131, %list.i.i
  br i1 %cmp43.not.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.inc.i.i.i.if.end.i.i_crit_edge, %nvkm_cstate_valid.exit.i.i.i.if.end.i.i_crit_edge, %while.end.i.i.i.i.if.end.i.i_crit_edge, %if.end42.i.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %cstate.0.i.i = phi ptr [ %base.i.i, %if.else.i.i ], [ null, %if.then.i.i.if.end.i.i_crit_edge ], [ %85, %if.end.i.i.i.if.end.i.i_crit_edge ], [ %list.i.i, %if.end42.i.i.i.if.end.i.i_crit_edge ], [ %cstate.addr.089.i.i.i, %while.end.i.i.i.i.if.end.i.i_crit_edge ], [ %list.i.i, %for.inc.i.i.i.if.end.i.i_crit_edge ], [ %cstate.addr.089.i.i.i, %nvkm_cstate_valid.exit.i.i.i.if.end.i.i_crit_edge ]
  %tobool7.not.i.i = icmp eq ptr %79, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end22.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end22.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %fanspeed.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 4
  %132 = ptrtoint ptr %fanspeed.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fanspeed.i.i, align 1
  %conv.i.i = zext i8 %133 to i32
  %call9.i.i = tail call i32 @nvkm_therm_cstate(ptr noundef nonnull %79, i32 noundef %conv.i.i, i32 noundef 1) #9
  %134 = zext i32 %call9.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call9.i.i, label %do.body.i.i [
    i32 0, label %if.then8.i.i.if.end22.i.i_crit_edge
    i32 -19, label %if.then8.i.i.if.end22.i.i_crit_edge134
  ]

if.then8.i.i.if.end22.i.i_crit_edge134:           ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then8.i.i.if.end22.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

do.body.i.i:                                      ; preds = %if.then8.i.i
  %135 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp13.not.i.i = icmp eq i32 %136, 0
  br i1 %cmp13.not.i.i, label %do.body.i.i.nvkm_pstate_prog.exit_crit_edge, label %do.end.i.i

do.body.i.i.nvkm_pstate_prog.exit_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_prog.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i, align 8
  %name.i.i = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.34, ptr noundef %name.i.i, i32 noundef %call9.i.i) #13
  br label %nvkm_pstate_prog.exit

if.end22.i.i:                                     ; preds = %if.then8.i.i.if.end22.i.i_crit_edge, %if.then8.i.i.if.end22.i.i_crit_edge134, %if.end.i.i.if.end22.i.i_crit_edge
  %tobool23.not.i.i = icmp eq ptr %81, null
  br i1 %tobool23.not.i.i, label %if.end22.i.i.if.end50.i.i_crit_edge, label %if.then24.i.i

if.end22.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  %voltage.i.i = getelementptr inbounds %struct.nvkm_cstate, ptr %cstate.0.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %voltage.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %voltage.i.i, align 4
  %voltage26.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %voltage26.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %voltage26.i.i, align 4
  %temp.i.i = getelementptr i8, ptr %work, i32 208
  %145 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %temp.i.i, align 4
  %call27.i.i = tail call i32 @nvkm_volt_set_id(ptr noundef nonnull %81, i8 noundef zeroext %142, i8 noundef zeroext %144, i8 noundef zeroext %146, i32 noundef 1) #9
  %147 = zext i32 %call27.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call27.i.i, label %do.body33.i.i [
    i32 0, label %if.then24.i.i.if.end50.i.i_crit_edge
    i32 -19, label %if.then24.i.i.if.end50.i.i_crit_edge135
  ]

if.then24.i.i.if.end50.i.i_crit_edge135:          ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i

if.then24.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i

do.body33.i.i:                                    ; preds = %if.then24.i.i
  %148 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp36.not.i.i = icmp eq i32 %149, 0
  br i1 %cmp36.not.i.i, label %do.body33.i.i.nvkm_pstate_prog.exit_crit_edge, label %do.end41.i.i

do.body33.i.i.nvkm_pstate_prog.exit_crit_edge:    ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_prog.exit

do.end41.i.i:                                     ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device.i, align 4
  %dev43.i.i = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %dev43.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev43.i.i, align 8
  %name44.i.i = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.37, ptr noundef %name44.i.i, i32 noundef %call27.i.i) #13
  br label %nvkm_pstate_prog.exit

if.end50.i.i:                                     ; preds = %if.then24.i.i.if.end50.i.i_crit_edge, %if.then24.i.i.if.end50.i.i_crit_edge135, %if.end22.i.i.if.end50.i.i_crit_edge
  %154 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %add.ptr, align 4
  %calc.i.i = getelementptr inbounds %struct.nvkm_clk_func, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %calc.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %calc.i.i, align 4
  %call51.i.i = tail call i32 %157(ptr noundef %add.ptr, ptr noundef %cstate.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %cmp52.i.i, label %if.then54.i.i, label %if.end50.i.i.if.end58.i.i_crit_edge

if.end50.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i.i

if.then54.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr, align 4
  %prog.i.i = getelementptr inbounds %struct.nvkm_clk_func, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %prog.i.i, align 4
  %call56.i.i = tail call i32 %161(ptr noundef %add.ptr) #9
  %162 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr, align 4
  %tidy.i.i = getelementptr inbounds %struct.nvkm_clk_func, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %tidy.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tidy.i.i, align 4
  tail call void %165(ptr noundef %add.ptr) #9
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then54.i.i, %if.end50.i.i.if.end58.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call56.i.i, %if.then54.i.i ], [ %call51.i.i, %if.end50.i.i.if.end58.i.i_crit_edge ]
  br i1 %tobool23.not.i.i, label %if.end58.i.i.if.end88.i.i_crit_edge, label %if.then60.i.i

if.end58.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i.i

if.then60.i.i:                                    ; preds = %if.end58.i.i
  %voltage61.i.i = getelementptr inbounds %struct.nvkm_cstate, ptr %cstate.0.i.i, i32 0, i32 1
  %166 = ptrtoint ptr %voltage61.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %voltage61.i.i, align 4
  %voltage63.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 2, i32 1
  %168 = ptrtoint ptr %voltage63.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %voltage63.i.i, align 4
  %temp64.i.i = getelementptr i8, ptr %work, i32 208
  %170 = ptrtoint ptr %temp64.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %temp64.i.i, align 4
  %call65.i.i = tail call i32 @nvkm_volt_set_id(ptr noundef nonnull %81, i8 noundef zeroext %167, i8 noundef zeroext %169, i8 noundef zeroext %171, i32 noundef -1) #9
  %172 = zext i32 %call65.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call65.i.i, label %do.body71.i.i [
    i32 0, label %if.then60.i.i.if.end88.i.i_crit_edge
    i32 -19, label %if.end88.fold.split.i.i
  ]

if.then60.i.i.if.end88.i.i_crit_edge:             ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i.i

do.body71.i.i:                                    ; preds = %if.then60.i.i
  %173 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp74.not.i.i = icmp eq i32 %174, 0
  br i1 %cmp74.not.i.i, label %do.body71.i.i.if.end88.i.i_crit_edge, label %do.end79.i.i

do.body71.i.i.if.end88.i.i_crit_edge:             ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i.i

do.end79.i.i:                                     ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %device.i, align 4
  %dev81.i.i = getelementptr inbounds %struct.nvkm_device, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %dev81.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev81.i.i, align 8
  %name82.i.i = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.40, ptr noundef %name82.i.i, i32 noundef %call65.i.i) #13
  br label %if.end88.i.i

if.end88.fold.split.i.i:                          ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.end88.fold.split.i.i, %do.end79.i.i, %do.body71.i.i.if.end88.i.i_crit_edge, %if.then60.i.i.if.end88.i.i_crit_edge, %if.end58.i.i.if.end88.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call65.i.i, %if.then60.i.i.if.end88.i.i_crit_edge ], [ %ret.0.i.i, %if.end58.i.i.if.end88.i.i_crit_edge ], [ -19, %if.end88.fold.split.i.i ], [ %call65.i.i, %do.end79.i.i ], [ %call65.i.i, %do.body71.i.i.if.end88.i.i_crit_edge ]
  br i1 %tobool7.not.i.i, label %if.end88.i.i.nvkm_pstate_prog.exit_crit_edge, label %if.then90.i.i

if.end88.i.i.nvkm_pstate_prog.exit_crit_edge:     ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_prog.exit

if.then90.i.i:                                    ; preds = %if.end88.i.i
  %fanspeed91.i.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 4
  %179 = ptrtoint ptr %fanspeed91.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %fanspeed91.i.i, align 1
  %conv92.i.i = zext i8 %180 to i32
  %call93.i.i = tail call i32 @nvkm_therm_cstate(ptr noundef nonnull %79, i32 noundef %conv92.i.i, i32 noundef -1) #9
  %181 = zext i32 %call93.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call93.i.i, label %do.body99.i.i [
    i32 0, label %if.then90.i.i.if.end83_crit_edge
    i32 -19, label %if.then90.i.i.do.body66_crit_edge
  ]

if.then90.i.i.do.body66_crit_edge:                ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

if.then90.i.i.if.end83_crit_edge:                 ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.body99.i.i:                                    ; preds = %if.then90.i.i
  %182 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp102.not.i.i = icmp eq i32 %183, 0
  br i1 %cmp102.not.i.i, label %do.body99.i.i.nvkm_pstate_prog.exit_crit_edge, label %do.end107.i.i

do.body99.i.i.nvkm_pstate_prog.exit_crit_edge:    ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_prog.exit

do.end107.i.i:                                    ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %device.i, align 4
  %dev109.i.i = getelementptr inbounds %struct.nvkm_device, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %dev109.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev109.i.i, align 8
  %name110.i.i = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.43, ptr noundef %name110.i.i, i32 noundef %call93.i.i) #13
  br label %nvkm_pstate_prog.exit

nvkm_pstate_prog.exit:                            ; preds = %do.end107.i.i, %do.body99.i.i.nvkm_pstate_prog.exit_crit_edge, %if.end88.i.i.nvkm_pstate_prog.exit_crit_edge, %do.end41.i.i, %do.body33.i.i.nvkm_pstate_prog.exit_crit_edge, %do.end.i.i, %do.body.i.i.nvkm_pstate_prog.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call9.i.i, %do.end.i.i ], [ %call9.i.i, %do.body.i.i.nvkm_pstate_prog.exit_crit_edge ], [ %call27.i.i, %do.end41.i.i ], [ %call27.i.i, %do.body33.i.i.nvkm_pstate_prog.exit_crit_edge ], [ %ret.1.i.i, %if.end88.i.i.nvkm_pstate_prog.exit_crit_edge ], [ %call93.i.i, %do.end107.i.i ], [ %call93.i.i, %do.body99.i.i.nvkm_pstate_prog.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool64.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool64.not, label %nvkm_pstate_prog.exit.if.end83_crit_edge, label %nvkm_pstate_prog.exit.do.body66_crit_edge

nvkm_pstate_prog.exit.do.body66_crit_edge:        ; preds = %nvkm_pstate_prog.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

nvkm_pstate_prog.exit.if.end83_crit_edge:         ; preds = %nvkm_pstate_prog.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.body66:                                        ; preds = %nvkm_pstate_prog.exit.do.body66_crit_edge, %if.then90.i.i.do.body66_crit_edge
  %retval.0.i.i133 = phi i32 [ %retval.0.i.i, %nvkm_pstate_prog.exit.do.body66_crit_edge ], [ %call93.i.i, %if.then90.i.i.do.body66_crit_edge ]
  %188 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp69.not = icmp eq i32 %189, 0
  br i1 %cmp69.not, label %do.body66.if.end83_crit_edge, label %do.end74

do.body66.if.end83_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end74:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %device.i, align 4
  %dev76 = getelementptr inbounds %struct.nvkm_device, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev76, align 8
  %name77 = getelementptr i8, ptr %work, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.30, ptr noundef %name77, i32 noundef %pstate.0, i32 noundef %retval.0.i.i133) #13
  br label %if.end83

if.end83:                                         ; preds = %do.end74, %do.body66.if.end83_crit_edge, %nvkm_pstate_prog.exit.if.end83_crit_edge, %if.then90.i.i.if.end83_crit_edge, %if.end56.if.end83_crit_edge
  %wait = getelementptr i8, ptr %work, i32 44
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %pwrsrc_ntfy = getelementptr i8, ptr %work, i32 100
  tail call void @nvkm_notify_get(ptr noundef %pwrsrc_ntfy) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_clk_pwrsrc(ptr noundef %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %waiting.i = getelementptr i8, ptr %notify, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiting.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %waiting.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %waiting.i, align 4
  %work.i = getelementptr i8, ptr %notify, i32 -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i3.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_stropt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_clk_nstate(ptr noundef readonly %clk, ptr noundef %mode, i32 noundef %arglen) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %allow_reclock = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 17
  %0 = ptrtoint ptr %allow_reclock to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %allow_reclock, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %arglen)
  %cmp1.not.i = icmp eq i32 %arglen, 4
  br i1 %cmp1.not.i, label %if.end.i, label %land.lhs.true.strncasecmpz.exit_crit_edge

land.lhs.true.strncasecmpz.exit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %strncasecmpz.exit

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @strncasecmp(ptr noundef %mode, ptr noundef nonnull @.str.45, i32 noundef 4) #9
  br label %strncasecmpz.exit

strncasecmpz.exit:                                ; preds = %if.end.i, %land.lhs.true.strncasecmpz.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %arglen, %land.lhs.true.strncasecmpz.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %strncasecmpz.exit.cleanup_crit_edge, label %strncasecmpz.exit.if.end_crit_edge

strncasecmpz.exit.if.end_crit_edge:               ; preds = %strncasecmpz.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

strncasecmpz.exit.cleanup_crit_edge:              ; preds = %strncasecmpz.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %strncasecmpz.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %arglen)
  %cmp1.not.i27 = icmp eq i32 %arglen, 8
  br i1 %cmp1.not.i27, label %if.end.i29, label %if.end.strncasecmpz.exit31_crit_edge

if.end.strncasecmpz.exit31_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %strncasecmpz.exit31

if.end.i29:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i28 = tail call i32 @strncasecmp(ptr noundef %mode, ptr noundef nonnull @.str.46, i32 noundef 8) #9
  br label %strncasecmpz.exit31

strncasecmpz.exit31:                              ; preds = %if.end.i29, %if.end.strncasecmpz.exit31_crit_edge
  %retval.0.i30 = phi i32 [ %call2.i28, %if.end.i29 ], [ %arglen, %if.end.strncasecmpz.exit31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i30)
  %tobool3.not = icmp eq i32 %retval.0.i30, 0
  br i1 %tobool3.not, label %strncasecmpz.exit31.if.end14_crit_edge, label %if.then4

strncasecmpz.exit31.if.end14_crit_edge:           ; preds = %strncasecmpz.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then4:                                         ; preds = %strncasecmpz.exit31
  %arrayidx = getelementptr i8, ptr %mode, i32 %arglen
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %v, align 4, !annotation !94
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  %call.i32 = call i32 @_kstrtol(ptr noundef %mode, i32 noundef 0, ptr noundef nonnull %v) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool7.not = icmp eq i32 %call.i32, 0
  br i1 %tobool7.not, label %if.then8, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.then4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %8 = ptrtoint ptr %allow_reclock to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %allow_reclock, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then8.nvkm_clk_ustate_update.exit.thread_crit_edge, label %if.end.i33

if.then8.nvkm_clk_ustate_update.exit.thread_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_clk_ustate_update.exit.thread

if.end.i33:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %switch = icmp ugt i32 %7, -3
  br i1 %switch, label %nvkm_clk_ustate_update.exit.thread38, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i33
  %states.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 4
  %10 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pstate.033.i = load ptr, ptr %states.i, align 4
  %cmp4.not34.i = icmp eq ptr %pstate.033.i, %states.i
  br i1 %cmp4.not34.i, label %if.then2.i.for.end.i_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.for.end.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %pstate.036.i = phi ptr [ %pstate.0.i, %if.end9.i.for.body.i_crit_edge ], [ %pstate.033.i, %if.then2.i.for.body.i_crit_edge ]
  %i.035.i = phi i32 [ %inc.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %if.then2.i.for.body.i_crit_edge ]
  %pstate5.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.036.i, i32 0, i32 3
  %11 = ptrtoint ptr %pstate5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pstate5.i, align 4
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp6.i = icmp eq i32 %7, %conv.i
  br i1 %cmp6.i, label %for.body.i.for.end.i_crit_edge, label %if.end9.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end9.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.035.i, 1
  %13 = ptrtoint ptr %pstate.036.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pstate.0.i = load ptr, ptr %pstate.036.i, align 4
  %cmp4.not.i = icmp eq ptr %pstate.0.i, %states.i
  br i1 %cmp4.not.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then2.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then2.i.for.end.i_crit_edge ], [ %inc.i, %if.end9.i.for.end.i_crit_edge ], [ %i.035.i, %for.body.i.for.end.i_crit_edge ]
  %pstate.0.lcssa.i = phi ptr [ %states.i, %if.then2.i.for.end.i_crit_edge ], [ %states.i, %if.end9.i.for.end.i_crit_edge ], [ %pstate.036.i, %for.body.i.for.end.i_crit_edge ]
  %pstate15.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.lcssa.i, i32 0, i32 3
  %14 = ptrtoint ptr %pstate15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pstate15.i, align 4
  %conv16.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv16.i)
  %cmp17.not.i = icmp ne i32 %7, %conv16.i
  %add.i = add i32 %i.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  %or.cond = select i1 %cmp17.not.i, i1 true, i1 %cmp
  br i1 %or.cond, label %for.end.i.nvkm_clk_ustate_update.exit.thread_crit_edge, label %for.end.i.if.end12_crit_edge

for.end.i.if.end12_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.end.i.nvkm_clk_ustate_update.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_clk_ustate_update.exit.thread

nvkm_clk_ustate_update.exit.thread38:             ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  %add.i40 = add nsw i32 %7, 2
  br label %if.end12

nvkm_clk_ustate_update.exit.thread:               ; preds = %for.end.i.nvkm_clk_ustate_update.exit.thread_crit_edge, %if.then8.nvkm_clk_ustate_update.exit.thread_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %nvkm_clk_ustate_update.exit.thread, %nvkm_clk_ustate_update.exit.thread38, %for.end.i.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  %ret.0 = phi i32 [ 1, %if.then4.if.end12_crit_edge ], [ 1, %nvkm_clk_ustate_update.exit.thread ], [ %add.i40, %nvkm_clk_ustate_update.exit.thread38 ], [ %add.i, %for.end.i.if.end12_crit_edge ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %3, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %strncasecmpz.exit31.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end12 ], [ 1, %strncasecmpz.exit31.if.end14_crit_edge ]
  %sub = add nsw i32 %ret.1, -2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %strncasecmpz.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end14 ], [ -2, %strncasecmpz.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %allow_reclock, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 460) #12
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pclk, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @nvkm_clk_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %allow_reclock, ptr noundef nonnull %call7.i.i)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_clk_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %pwrsrc_ntfy = getelementptr i8, ptr %subdev, i32 328
  tail call void @nvkm_notify_fini(ptr noundef %pwrsrc_ntfy) #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pstates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pstates, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %states = getelementptr i8, ptr %subdev, i32 216
  %4 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %states, align 4
  %cmp.not25 = icmp eq ptr %5, %states
  br i1 %cmp.not25, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %nvkm_pstate_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %pstate.026 = phi ptr [ %temp.0, %nvkm_pstate_del.exit.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %pstate.026 to i32
  call void @__asan_load4_noabort(i32 %6)
  %temp.0 = load ptr, ptr %pstate.026, align 4
  %list.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.026, i32 0, i32 1
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list.i, align 4
  %cmp.not20.i = icmp eq ptr %8, %list.i
  br i1 %cmp.not20.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %nvkm_cstate_del.exit.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %cstate.021.i = phi ptr [ %temp.0.i, %nvkm_cstate_del.exit.i.for.body.i_crit_edge ], [ %8, %for.body.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %cstate.021.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %temp.0.i = load ptr, ptr %cstate.021.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cstate.021.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.nvkm_cstate_del.exit.i_crit_edge

for.body.i.nvkm_cstate_del.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_cstate_del.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cstate.021.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %cstate.021.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cstate.021.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %nvkm_cstate_del.exit.i

nvkm_cstate_del.exit.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.nvkm_cstate_del.exit.i_crit_edge
  %16 = ptrtoint ptr %cstate.021.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %cstate.021.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cstate.021.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %cstate.021.i) #9
  %cmp.not.i = icmp eq ptr %temp.0.i, %list.i
  br i1 %cmp.not.i, label %nvkm_cstate_del.exit.i.for.end.i_crit_edge, label %nvkm_cstate_del.exit.i.for.body.i_crit_edge

nvkm_cstate_del.exit.i.for.body.i_crit_edge:      ; preds = %nvkm_cstate_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nvkm_cstate_del.exit.i.for.end.i_crit_edge:       ; preds = %nvkm_cstate_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %nvkm_cstate_del.exit.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pstate.026) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.nvkm_pstate_del.exit_crit_edge

for.end.i.nvkm_pstate_del.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvkm_pstate_del.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i19.i = getelementptr inbounds %struct.list_head, ptr %pstate.026, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i19.i, align 4
  %20 = ptrtoint ptr %pstate.026 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pstate.026, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %nvkm_pstate_del.exit

nvkm_pstate_del.exit:                             ; preds = %if.end.i.i.i, %for.end.i.nvkm_pstate_del.exit_crit_edge
  %24 = ptrtoint ptr %pstate.026 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %pstate.026, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pstate.026, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %pstate.026) #9
  %cmp.not = icmp eq ptr %temp.0, %states
  br i1 %cmp.not, label %nvkm_pstate_del.exit.cleanup_crit_edge, label %nvkm_pstate_del.exit.for.body_crit_edge

nvkm_pstate_del.exit.for.body_crit_edge:          ; preds = %nvkm_pstate_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nvkm_pstate_del.exit.cleanup_crit_edge:           ; preds = %nvkm_pstate_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %nvkm_pstate_del.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_clk_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %domains = getelementptr i8, ptr %subdev, i32 52
  %0 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domains, align 4
  %bstate = getelementptr i8, ptr %subdev, i32 56
  %2 = call ptr @memset(ptr %bstate, i32 0, i32 160)
  %list = getelementptr i8, ptr %subdev, i32 64
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr i8, ptr %subdev, i32 68
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %pstate = getelementptr i8, ptr %subdev, i32 204
  %5 = ptrtoint ptr %pstate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %pstate, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %7)
  %cmp.not52 = icmp eq i32 %7, 29
  br i1 %cmp.not52, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %domain = getelementptr i8, ptr %subdev, i32 84
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %25, %if.end12.while.body_crit_edge ]
  %clock.053 = phi ptr [ %1, %while.body.lr.ph ], [ %incdec.ptr, %if.end12.while.body_crit_edge ]
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %read.i = getelementptr inbounds %struct.nvkm_clk_func, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %12(ptr noundef %add.ptr, i32 noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.body, label %if.end12

do.body:                                          ; preds = %while.body
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.not = icmp eq i32 %14, 0
  br i1 %cmp5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %name8 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %19 = ptrtoint ptr %clock.053 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clock.053, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef %name8, i32 noundef %20) #13
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %21 = ptrtoint ptr %clock.053 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clock.053, align 4
  %arrayidx = getelementptr [29 x i32], ptr %domain, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %arrayidx, align 4
  %incdec.ptr = getelementptr %struct.nvkm_domain, ptr %clock.053, i32 1
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %25, 29
  br i1 %cmp.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @nvkm_pstate_info(ptr noundef %add.ptr, ptr noundef %bstate)
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 %29(ptr noundef %add.ptr) #9
  br label %cleanup

if.end20:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %state_nr = getelementptr i8, ptr %subdev, i32 224
  %30 = ptrtoint ptr %state_nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state_nr, align 4
  %sub = add i32 %31, -1
  %astate = getelementptr i8, ptr %subdev, i32 428
  %32 = ptrtoint ptr %astate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %astate, align 4
  %dstate = getelementptr i8, ptr %subdev, i32 432
  %33 = ptrtoint ptr %dstate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dstate, align 4
  %pstate21 = getelementptr i8, ptr %subdev, i32 416
  %34 = ptrtoint ptr %pstate21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %pstate21, align 4
  %temp = getelementptr i8, ptr %subdev, i32 436
  %35 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 90, ptr %temp, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.then16 ], [ 0, %if.end20 ], [ %call.i, %do.end ], [ %call.i, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_clk_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %pwrsrc_ntfy = getelementptr i8, ptr %subdev, i32 328
  tail call void @nvkm_notify_put(ptr noundef %pwrsrc_ntfy) #9
  %work = getelementptr i8, ptr %subdev, i32 228
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_clk_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_pstate_info(ptr noundef %clk, ptr noundef readonly %pstate) unnamed_addr #0 align 64 {
entry:
  %info = alloca [3 x [32 x i8]], align 1
  %name = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %domains = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 2
  %0 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domains, align 4
  %add.ptr = getelementptr %struct.nvkm_domain, ptr %1, i32 -1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %info) #9
  %2 = call ptr @memset(ptr %info, i32 0, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #9
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 757923840, ptr %name, align 4
  %pstate2 = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate, i32 0, i32 3
  %4 = ptrtoint ptr %pstate2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pstate2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.not = icmp eq i8 %5, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %5 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %7)
  %cmp7.not155 = icmp eq i32 %7, 29
  br i1 %cmp7.not155, label %if.end.do.body81_crit_edge, label %while.body.lr.ph

if.end.do.body81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

while.body.lr.ph:                                 ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %name18 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %list = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %36, %cleanup.while.body_crit_edge ]
  %incdec.ptr158 = phi ptr [ %1, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %clock.0157 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %incdec.ptr158, %cleanup.while.body_crit_edge ]
  %i.0156 = phi i32 [ -1, %while.body.lr.ph ], [ %i.2, %cleanup.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_pstate, ptr %pstate, i32 0, i32 2, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %while.body.cleanup_crit_edge, label %do.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %while.body
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp14 = icmp ugt i32 %12, 3
  br i1 %cmp14, label %do.end, label %do.body.if.end21_crit_edge

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef %name18, i32 noundef %8, i32 noundef %10) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body.if.end21_crit_edge
  %17 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %17)
  %cstate.0148 = load ptr, ptr %list, align 4
  %cmp26.not149 = icmp eq ptr %cstate.0148, %list
  br i1 %cmp26.not149, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %if.end21.for.body_crit_edge
  %cstate.0152 = phi ptr [ %cstate.0, %if.end54.for.body_crit_edge ], [ %cstate.0148, %if.end21.for.body_crit_edge ]
  %lo.0151 = phi i32 [ %22, %if.end54.for.body_crit_edge ], [ %10, %if.end21.for.body_crit_edge ]
  %hi.0150 = phi i32 [ %23, %if.end54.for.body_crit_edge ], [ %10, %if.end21.for.body_crit_edge ]
  %18 = ptrtoint ptr %incdec.ptr158 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr158, align 4
  %arrayidx30 = getelementptr %struct.nvkm_cstate, ptr %cstate.0152, i32 0, i32 2, i32 %19
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %lo.0151, i32 %21)
  %23 = tail call i32 @llvm.umax.i32(i32 %hi.0150, i32 %21)
  %24 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp44 = icmp ugt i32 %25, 3
  br i1 %cmp44, label %do.end49, label %for.body.if.end54_crit_edge

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %dev51 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.17, ptr noundef %name18, i32 noundef %21) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end49, %for.body.if.end54_crit_edge
  %30 = ptrtoint ptr %cstate.0152 to i32
  call void @__asan_load4_noabort(i32 %30)
  %cstate.0 = load ptr, ptr %cstate.0152, align 4
  %cmp26.not = icmp eq ptr %cstate.0, %list
  br i1 %cmp26.not, label %if.end54.for.end_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end54.for.end_crit_edge, %if.end21.for.end_crit_edge
  %hi.0.lcssa = phi i32 [ %10, %if.end21.for.end_crit_edge ], [ %23, %if.end54.for.end_crit_edge ]
  %lo.0.lcssa = phi i32 [ %10, %if.end21.for.end_crit_edge ], [ %22, %if.end54.for.end_crit_edge ]
  %mname = getelementptr %struct.nvkm_domain, ptr %clock.0157, i32 1, i32 3
  %31 = ptrtoint ptr %mname to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mname, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %land.lhs.true

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %inc = add i32 %i.0156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp62 = icmp ult i32 %inc, 3
  br i1 %cmp62, label %if.then64, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64:                                        ; preds = %land.lhs.true
  %mdiv = getelementptr %struct.nvkm_domain, ptr %clock.0157, i32 1, i32 4
  %33 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mdiv, align 4
  %div = udiv i32 %lo.0.lcssa, %34
  %div66 = udiv i32 %hi.0.lcssa, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div66)
  %cmp67 = icmp eq i32 %div, %div66
  %arrayidx70 = getelementptr [3 x [32 x i8]], ptr %info, i32 0, i32 %inc
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %call73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx70, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef nonnull %32, i32 noundef %div)
  br label %cleanup

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx70, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull %32, i32 noundef %div, i32 noundef %div66)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then69, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %i.2 = phi i32 [ %i.0156, %while.body.cleanup_crit_edge ], [ %inc, %if.then69 ], [ %inc, %if.else ], [ %inc, %land.lhs.true.cleanup_crit_edge ], [ %i.0156, %for.end.cleanup_crit_edge ]
  %incdec.ptr = getelementptr %struct.nvkm_domain, ptr %incdec.ptr158, i32 1
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr, align 4
  %cmp7.not = icmp eq i32 %36, 29
  br i1 %cmp7.not, label %cleanup.do.body81_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.do.body81_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

do.body81:                                        ; preds = %cleanup.do.body81_crit_edge, %if.end.do.body81_crit_edge
  %debug83 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %debug83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp84 = icmp ugt i32 %38, 3
  br i1 %cmp84, label %do.end89, label %do.body81.if.end101_crit_edge

do.body81.if.end101_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end89:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  %device90 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device90, align 4
  %dev91 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev91, align 8
  %name92 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %arrayidx97 = getelementptr inbounds [3 x [32 x i8]], ptr %info, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [3 x [32 x i8]], ptr %info, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.22, ptr noundef %name92, ptr noundef nonnull %name, ptr noundef nonnull %info, ptr noundef %arrayidx97, ptr noundef %arrayidx99) #13
  br label %if.end101

if.end101:                                        ; preds = %do.end89, %do.body81.if.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %info) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pcie_set_link(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_cstate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_set_id(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_map(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perfEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perfSp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_clk_adjust(ptr nocapture noundef readonly %clk, i1 noundef zeroext %adjust, i8 noundef zeroext %pstate, i8 noundef zeroext %domain, i32 noundef %input) unnamed_addr #0 align 64 {
entry:
  %boostE = alloca %struct.nvbios_boostE, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %boostS = alloca %struct.nvbios_boostS, align 4
  %sver = alloca i8, align 1
  %shdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %boostE) #9
  %4 = call ptr @memset(ptr %boostE, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #9
  %5 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ver, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #9
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %hdr, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #9
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %cnt, align 1, !annotation !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #9
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %len, align 1, !annotation !94
  %call = call i32 @nvbios_boostEm(ptr noundef %3, i8 noundef zeroext %pstate, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %boostE) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %boostS) #9
  %9 = call ptr @memset(ptr %boostS, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sver) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shdr) #9
  %min = getelementptr inbounds %struct.nvbios_boostE, ptr %boostE, i32 0, i32 1
  %10 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min, align 4
  %12 = call i32 @llvm.umax.i32(i32 %11, i32 %input)
  %max = getelementptr inbounds %struct.nvbios_boostE, ptr %boostE, i32 0, i32 2
  %13 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 %12)
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.then
  %idx.0 = phi i8 [ 0, %if.then ], [ %inc, %land.lhs.true.do.body_crit_edge ]
  %16 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ver, align 1
  %18 = ptrtoint ptr %sver to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sver, align 1
  %19 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdr, align 1
  %21 = ptrtoint ptr %shdr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %shdr, align 1
  %conv = zext i8 %idx.0 to i32
  %22 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cnt, align 1
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %len, align 1
  %call8 = call i32 @nvbios_boostSp(ptr noundef %3, i32 noundef %conv, i32 noundef %call, ptr noundef nonnull %sver, ptr noundef nonnull %shdr, i8 noundef zeroext %23, i8 noundef zeroext %25, ptr noundef nonnull %boostS) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %inc = add i8 %idx.0, 1
  %26 = ptrtoint ptr %boostS to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %boostS, align 4
  %cmp13 = icmp eq i8 %27, %domain
  br i1 %cmp13, label %if.then15, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then15:                                        ; preds = %land.lhs.true
  br i1 %adjust, label %if.then17, label %if.then15.if.end_crit_edge

if.then15.if.end_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %percent = getelementptr inbounds %struct.nvbios_boostS, ptr %boostS, i32 0, i32 1
  %28 = ptrtoint ptr %percent to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %percent, align 1
  %conv18 = zext i8 %29 to i32
  %mul = mul i32 %15, %conv18
  %div = udiv i32 %mul, 100
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then15.if.end_crit_edge
  %input.addr.0 = phi i32 [ %div, %if.then17 ], [ %15, %if.then15.if.end_crit_edge ]
  %min19 = getelementptr inbounds %struct.nvbios_boostS, ptr %boostS, i32 0, i32 2
  %30 = ptrtoint ptr %min19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min19, align 4
  %32 = call i32 @llvm.umax.i32(i32 %31, i32 %input.addr.0)
  %max27 = getelementptr inbounds %struct.nvbios_boostS, ptr %boostS, i32 0, i32 3
  %33 = ptrtoint ptr %max27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max27, align 4
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 %32)
  br label %do.end

do.end:                                           ; preds = %if.end, %do.body.do.end_crit_edge
  %input.addr.1 = phi i32 [ %35, %if.end ], [ %15, %do.body.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shdr) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sver) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %boostS) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end, %entry.if.end37_crit_edge
  %input.addr.2 = phi i32 [ %input.addr.1, %do.end ], [ %input, %entry.if.end37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %boostE) #9
  ret i32 %input.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_cstepEm(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_boostEm(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_boostSp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_cstepXp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_map_min(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @nvkm_clk_ctor.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 677, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvkm_clk_ctor.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 678, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 698, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 704, i32 37}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 708, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 712, i32 49}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 340, i32 3}
!16 = !{ptr @nvkm_clk, !17, !"nvkm_clk", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 644, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 604, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nvkm_clk_init._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_clk_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 355, i32 32}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 363, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nvkm_pstate_info._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @nvkm_pstate_info._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 368, i32 4}
!35 = !{ptr @nvkm_pstate_info._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvkm_pstate_info._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 375, i32 40}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 379, i32 7}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 384, i32 2}
!43 = !{ptr @nvkm_pstate_info._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvkm_pstate_info._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 308, i32 2}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nvkm_pstate_work._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvkm_pstate_work._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 321, i32 2}
!52 = !{ptr @nvkm_pstate_work._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvkm_pstate_work._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 325, i32 4}
!56 = !{ptr @nvkm_pstate_work._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvkm_pstate_work._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 278, i32 2}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nvkm_pstate_prog._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nvkm_pstate_prog._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 179, i32 4}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nvkm_cstate_prog._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nvkm_cstate_prog._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 188, i32 4}
!70 = !{ptr @nvkm_cstate_prog._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @nvkm_cstate_prog._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 203, i32 4}
!74 = !{ptr @nvkm_cstate_prog._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nvkm_cstate_prog._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 209, i32 4}
!78 = !{ptr @nvkm_cstate_prog._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @nvkm_cstate_prog._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 500, i32 48}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c", i32 503, i32 25}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
!94 = !{!"auto-init"}
!95 = !{i64 2148871249}
!96 = !{i64 1118117, i64 1118134, i64 1118158, i64 1118184, i64 1118202}
!97 = !{i64 2148871619}
