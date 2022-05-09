; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.137, %struct.anon.137 }
%struct.anon.137 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.mcp77_clk = type { %struct.nvkm_clk, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shader\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@mcp77_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @mcp77_clk_read, ptr @mcp77_clk_calc, ptr @mcp77_clk_prog, ptr @mcp77_clk_tidy, ptr null, i32 0, [6 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 -1, i8 0, ptr @.str, i32 1000 }, %struct.nvkm_domain { i32 17, i8 -1, i8 0, ptr @.str.1, i32 1000 }, %struct.nvkm_domain { i32 27, i8 -1, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@mcp77_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unknown clock source %d %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp77_clk_read\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp77_clk_read._entry_ptr = internal global ptr @mcp77_clk_read._entry, section ".printk_index", align 4
@mcp77_clk_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 271, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: nvpll: %08x %08x %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp77_clk_calc\00", [17 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr = internal global ptr @mcp77_clk_calc._entry, section ".printk_index", align 4
@mcp77_clk_calc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.6, i32 273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:  spll: %08x %08x %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.13 = internal global ptr @mcp77_clk_calc._entry.11, section ".printk_index", align 4
@mcp77_clk_calc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.6, i32 274, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:  vdiv: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.16 = internal global ptr @mcp77_clk_calc._entry.14, section ".printk_index", align 4
@mcp77_clk_calc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.6, i32 276, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: core: hrefm4\0A\00", [46 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.19 = internal global ptr @mcp77_clk_calc._entry.17, section ".printk_index", align 4
@mcp77_clk_calc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.6, i32 278, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: core: nvpll\0A\00", [47 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.22 = internal global ptr @mcp77_clk_calc._entry.20, section ".printk_index", align 4
@mcp77_clk_calc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.6, i32 281, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: shader: hrefm4\0A\00", [44 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.25 = internal global ptr @mcp77_clk_calc._entry.23, section ".printk_index", align 4
@mcp77_clk_calc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.6, i32 283, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: shader: nvpll\0A\00", [45 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.28 = internal global ptr @mcp77_clk_calc._entry.26, section ".printk_index", align 4
@mcp77_clk_calc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.6, i32 285, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: shader: spll\0A\00", [46 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.31 = internal global ptr @mcp77_clk_calc._entry.29, section ".printk_index", align 4
@mcp77_clk_calc._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str.6, i32 288, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: vdec: 500MHz\0A\00", [46 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.34 = internal global ptr @mcp77_clk_calc._entry.32, section ".printk_index", align 4
@mcp77_clk_calc._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.10, ptr @.str.6, i32 290, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: vdec: core\0A\00", [16 x i8] zeroinitializer }, align 32
@mcp77_clk_calc._entry_ptr.37 = internal global ptr @mcp77_clk_calc._entry.35, section ".printk_index", align 4
@mcp77_clk_prog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 328, ptr @.str.40, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Reclocking failed: unknown core clock\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp77_clk_prog\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@mcp77_clk_prog._entry_ptr = internal global ptr @mcp77_clk_prog._entry, section ".printk_index", align 4
@mcp77_clk_prog._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.6, i32 349, ptr @.str.40, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Reclocking failed: unknown sclk clock\0A\00", [53 x i8] zeroinitializer }, align 32
@mcp77_clk_prog._entry_ptr.43 = internal global ptr @mcp77_clk_prog._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 5, i64 6, i64 7, i64 8, i64 15, i64 17, i64 18, i64 27]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 524288, i64 786432]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 48]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 15]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 15]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 15, i64 17]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 404, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 405, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 406, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"mcp77_clk\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 396, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 157, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 270, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 272, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 274, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 276, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 278, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 281, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 283, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 285, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 288, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 290, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 328, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 349, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 353, i32 6 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @mcp77_clk_calc._entry, ptr @mcp77_clk_calc._entry.11, ptr @mcp77_clk_calc._entry.14, ptr @mcp77_clk_calc._entry.17, ptr @mcp77_clk_calc._entry.20, ptr @mcp77_clk_calc._entry.23, ptr @mcp77_clk_calc._entry.26, ptr @mcp77_clk_calc._entry.29, ptr @mcp77_clk_calc._entry.32, ptr @mcp77_clk_calc._entry.35, ptr @mcp77_clk_calc._entry_ptr, ptr @mcp77_clk_calc._entry_ptr.13, ptr @mcp77_clk_calc._entry_ptr.16, ptr @mcp77_clk_calc._entry_ptr.19, ptr @mcp77_clk_calc._entry_ptr.22, ptr @mcp77_clk_calc._entry_ptr.25, ptr @mcp77_clk_calc._entry_ptr.28, ptr @mcp77_clk_calc._entry_ptr.31, ptr @mcp77_clk_calc._entry_ptr.34, ptr @mcp77_clk_calc._entry_ptr.37, ptr @mcp77_clk_prog._entry, ptr @mcp77_clk_prog._entry.41, ptr @mcp77_clk_prog._entry_ptr, ptr @mcp77_clk_prog._entry_ptr.43, ptr @mcp77_clk_read._entry, ptr @mcp77_clk_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mcp77_clk, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_calc._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_prog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp77_clk_prog._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp77_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 500) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pclk, align 4
  %call2 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @mcp77_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp77_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 49236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %5 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 6, label %sw.bb7
    i32 5, label %sw.bb10
    i32 8, label %sw.bb14
    i32 15, label %sw.bb24
    i32 7, label %sw.bb45
    i32 17, label %sw.bb65
    i32 18, label %sw.bb91
    i32 27, label %sw.bb92
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %mul = shl i32 %call9, 2
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %mul13 = shl i32 %call12, 1
  %div = sdiv i32 %mul13, 3
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %and = and i32 %4, 786432
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and, label %sw.bb14.do.body_crit_edge [
    i32 0, label %sw.bb15
    i32 786432, label %sw.bb21
    i32 524288, label %sw.bb18
  ]

sw.bb14.do.body_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb15:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 5) #7
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 6) #7
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 7) #7
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %10, i32 16424
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %and30 = lshr i32 %11, 16
  %shr = and i32 %and30, 7
  %and31 = and i32 %4, 3
  %12 = zext i32 %and31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %and31, label %sw.bb24.unreachabledefault [
    i32 0, label %sw.bb32
    i32 1, label %sw.bb24.cleanup_crit_edge
    i32 2, label %sw.bb37
    i32 3, label %sw.bb41
  ]

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 0) #7
  %shr35 = ashr i32 %call34, %shr
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 6) #7
  %shr40 = ashr i32 %call39, %shr
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb24
  %13 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device3, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 16424
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %18 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %19, i32 16428
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %call10.i = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %21 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %22, i32 16448
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %and26.i = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool.not.i = icmp sgt i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool28.not.i = icmp eq i32 %and26.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool28.not.i
  br i1 %or.cond.i, label %sw.bb41.read_pll.exit_crit_edge, label %if.then.i

sw.bb41.read_pll.exit_crit_edge:                  ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit

if.then.i:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  %and22.i = lshr i32 %23, 16
  %shr23.i = and i32 %and22.i, 15
  %and24.i = lshr i32 %20, 8
  %shr25.i = and i32 %and24.i, 255
  %mul.i = mul i32 %call10.i, %shr25.i
  %div.i = udiv i32 %mul.i, %and26.i
  %div29.i = udiv i32 %div.i, %shr23.i
  br label %read_pll.exit

read_pll.exit:                                    ; preds = %if.then.i, %sw.bb41.read_pll.exit_crit_edge
  %clock.0.i = phi i32 [ %div29.i, %if.then.i ], [ 0, %sw.bb41.read_pll.exit_crit_edge ]
  %shr43 = lshr i32 %clock.0.i, %shr
  br label %cleanup

sw.bb24.unreachabledefault:                       ; preds = %sw.bb24
  unreachable

sw.bb45:                                          ; preds = %entry
  %and46 = and i32 %4, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %and46)
  %cmp.not = icmp eq i32 %and46, 50331648
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 15) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb45
  %and49 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 15) #7
  br label %cleanup

if.end54:                                         ; preds = %if.end
  %and55 = and i32 %4, 3072
  %24 = zext i32 %and55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and55, label %if.end54.cleanup_crit_edge [
    i32 0, label %sw.bb56
    i32 1024, label %sw.bb59
    i32 2048, label %sw.bb62
  ]

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb56:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  br label %cleanup

sw.bb59:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 6) #7
  br label %cleanup

sw.bb62:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 5) #7
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr68 = getelementptr i8, ptr %26, i32 16416
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %and71 = lshr i32 %27, 16
  %shr72 = and i32 %and71, 7
  %and73 = and i32 %4, 48
  %28 = zext i32 %and73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and73, label %sw.bb65.do.body_crit_edge [
    i32 0, label %sw.bb74
    i32 48, label %sw.bb87
    i32 32, label %sw.bb84
  ]

sw.bb65.do.body_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb74:                                          ; preds = %sw.bb65
  %and75 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool.not = icmp eq i32 %and75, 0
  br i1 %tobool.not, label %if.end80, label %if.then76

if.then76:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %shr79 = ashr i32 %call78, %shr72
  br label %cleanup

if.end80:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 0) #7
  %shr83 = ashr i32 %call82, %shr72
  br label %cleanup

sw.bb84:                                          ; preds = %sw.bb65
  %29 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device3, align 4
  %pri.i159 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %pri.i159 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i159, align 4
  %add.ptr.i160 = getelementptr i8, ptr %32, i32 16424
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %34 = ptrtoint ptr %pri.i159 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri.i159, align 4
  %add.ptr6.i161 = getelementptr i8, ptr %35, i32 16428
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i161) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %call10.i162 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %37 = ptrtoint ptr %pri.i159 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri.i159, align 4
  %add.ptr19.i163 = getelementptr i8, ptr %38, i32 16448
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i163) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %and26.i166 = and i32 %36, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool.not.i167 = icmp sgt i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i166)
  %tobool28.not.i168 = icmp eq i32 %and26.i166, 0
  %or.cond.i169 = select i1 %tobool.not.i167, i1 true, i1 %tobool28.not.i168
  br i1 %or.cond.i169, label %sw.bb84.read_pll.exit177_crit_edge, label %if.then.i175

sw.bb84.read_pll.exit177_crit_edge:               ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit177

if.then.i175:                                     ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  %and22.i164 = lshr i32 %39, 16
  %shr23.i165 = and i32 %and22.i164, 15
  %and24.i170 = lshr i32 %36, 8
  %shr25.i171 = and i32 %and24.i170, 255
  %mul.i172 = mul i32 %call10.i162, %shr25.i171
  %div.i173 = udiv i32 %mul.i172, %and26.i166
  %div29.i174 = udiv i32 %div.i173, %shr23.i165
  br label %read_pll.exit177

read_pll.exit177:                                 ; preds = %if.then.i175, %sw.bb84.read_pll.exit177_crit_edge
  %clock.0.i176 = phi i32 [ %div29.i174, %if.then.i175 ], [ 0, %sw.bb84.read_pll.exit177_crit_edge ]
  %shr86 = lshr i32 %clock.0.i176, %shr72
  br label %cleanup

sw.bb87:                                          ; preds = %sw.bb65
  %40 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device3, align 4
  %pri.i179 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %pri.i179 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i179, align 4
  %add.ptr.i180 = getelementptr i8, ptr %43, i32 16416
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %45 = ptrtoint ptr %pri.i179 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i179, align 4
  %add.ptr6.i181 = getelementptr i8, ptr %46, i32 16420
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i181) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %call10.i182 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %48 = ptrtoint ptr %pri.i179 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i179, align 4
  %add.ptr13.i = getelementptr i8, ptr %49, i32 16496
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and26.i183 = and i32 %47, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %tobool.not.i184 = icmp sgt i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i183)
  %tobool28.not.i185 = icmp eq i32 %and26.i183, 0
  %or.cond.i186 = select i1 %tobool.not.i184, i1 true, i1 %tobool28.not.i185
  br i1 %or.cond.i186, label %sw.bb87.read_pll.exit194_crit_edge, label %if.then.i192

sw.bb87.read_pll.exit194_crit_edge:               ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit194

if.then.i192:                                     ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = lshr i32 %50, 16
  %shr.i = and i32 %and.i, 15
  %and24.i187 = lshr i32 %47, 8
  %shr25.i188 = and i32 %and24.i187, 255
  %mul.i189 = mul i32 %call10.i182, %shr25.i188
  %div.i190 = udiv i32 %mul.i189, %and26.i183
  %div29.i191197 = lshr i32 %div.i190, %shr.i
  br label %read_pll.exit194

read_pll.exit194:                                 ; preds = %if.then.i192, %sw.bb87.read_pll.exit194_crit_edge
  %clock.0.i193 = phi i32 [ %div29.i191197, %if.then.i192 ], [ 0, %sw.bb87.read_pll.exit194_crit_edge ]
  %shr89 = lshr i32 %clock.0.i193, %shr72
  br label %cleanup

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb92:                                          ; preds = %entry
  %51 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device3, align 4
  %pri.i195 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %pri.i195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri.i195, align 4
  %add.ptr.i196 = getelementptr i8, ptr %54, i32 17920
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %and94 = lshr i32 %55, 8
  %shr95 = and i32 %and94, 7
  %and96 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %cond.not = icmp eq i32 %and96, 0
  br i1 %cond.not, label %sw.default101, label %sw.bb97

sw.bb97:                                          ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 15) #7
  %shr100 = ashr i32 %call99, %shr95
  br label %cleanup

sw.default101:                                    ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #9
  %shr102 = lshr i32 500000, %shr95
  br label %cleanup

do.body:                                          ; preds = %sw.bb65.do.body_crit_edge, %sw.bb14.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp105 = icmp ugt i32 %57, 3
  br i1 %cmp105, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %src, i32 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.default101, %sw.bb97, %sw.bb91, %read_pll.exit194, %read_pll.exit177, %if.end80, %if.then76, %sw.bb62, %sw.bb59, %sw.bb56, %if.end54.cleanup_crit_edge, %if.then51, %if.then, %read_pll.exit, %sw.bb37, %sw.bb32, %sw.bb24.cleanup_crit_edge, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb10, %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr100, %sw.bb97 ], [ %shr102, %sw.default101 ], [ 0, %sw.bb91 ], [ %shr86, %read_pll.exit177 ], [ %shr89, %read_pll.exit194 ], [ %shr79, %if.then76 ], [ %shr83, %if.end80 ], [ %call48, %if.then ], [ %call53, %if.then51 ], [ %call64, %sw.bb62 ], [ %call61, %sw.bb59 ], [ %call58, %sw.bb56 ], [ %shr43, %read_pll.exit ], [ %shr40, %sw.bb37 ], [ %shr35, %sw.bb32 ], [ %call20, %sw.bb18 ], [ %call23, %sw.bb21 ], [ %call17, %sw.bb15 ], [ %div, %sw.bb10 ], [ %mul, %sw.bb7 ], [ %7, %sw.bb ], [ 100000, %entry.cleanup_crit_edge ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp77_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  %pll.i378 = alloca %struct.nvbios_pll, align 4
  %pll.i = alloca %struct.nvbios_pll, align 4
  %N = alloca i32, align 4
  %M = alloca i32, align 4
  %P1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 17
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 15
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 27
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #7
  %6 = ptrtoint ptr %N to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %N, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M) #7
  %7 = ptrtoint ptr %M to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %M, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P1) #7
  %8 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %P1, align 4, !annotation !87
  %call = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call)
  %cmp = icmp slt i32 %3, %call
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %3)
  %cmp1.not.i = icmp ugt i32 %call9, %3
  br i1 %cmp1.not.i, label %if.end.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.6.i.if.then.i_crit_edge, %if.end.5.i.if.then.i_crit_edge, %if.end.4.i.if.then.i_crit_edge, %if.end.3.i.if.then.i_crit_edge, %if.end.2.i.if.then.i_crit_edge, %if.end.1.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %clk0.026.lcssa.i = phi i32 [ %call9, %if.then.if.then.i_crit_edge ], [ %shr.i, %if.end.i.if.then.i_crit_edge ], [ %shr.1.i, %if.end.1.i.if.then.i_crit_edge ], [ %shr.2.i, %if.end.2.i.if.then.i_crit_edge ], [ %shr.3.i, %if.end.3.i.if.then.i_crit_edge ], [ %shr.4.i, %if.end.4.i.if.then.i_crit_edge ], [ %shr.5.i, %if.end.5.i.if.then.i_crit_edge ], [ %shr.6.i, %if.end.6.i.if.then.i_crit_edge ]
  %storemerge25.lcssa.i = phi i32 [ 0, %if.then.if.then.i_crit_edge ], [ 1, %if.end.i.if.then.i_crit_edge ], [ 2, %if.end.1.i.if.then.i_crit_edge ], [ 3, %if.end.2.i.if.then.i_crit_edge ], [ 4, %if.end.3.i.if.then.i_crit_edge ], [ 5, %if.end.4.i.if.then.i_crit_edge ], [ 6, %if.end.5.i.if.then.i_crit_edge ], [ 7, %if.end.6.i.if.then.i_crit_edge ]
  %cond.i = zext i1 %cmp1.not.i to i32
  %shl.i = shl i32 %clk0.026.lcssa.i, %cond.i
  br label %for.end.i

if.end.i:                                         ; preds = %if.then
  %shr.i = lshr i32 %call9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %3)
  %cmp1.not.1.i = icmp ugt i32 %shr.i, %3
  br i1 %cmp1.not.1.i, label %if.end.1.i, label %if.end.i.if.then.i_crit_edge

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  %shr.1.i = lshr i32 %call9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %3)
  %cmp1.not.2.i = icmp ugt i32 %shr.1.i, %3
  br i1 %cmp1.not.2.i, label %if.end.2.i, label %if.end.1.i.if.then.i_crit_edge

if.end.1.i.if.then.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %shr.2.i = lshr i32 %call9, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %3)
  %cmp1.not.3.i = icmp ugt i32 %shr.2.i, %3
  br i1 %cmp1.not.3.i, label %if.end.3.i, label %if.end.2.i.if.then.i_crit_edge

if.end.2.i.if.then.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.3.i:                                       ; preds = %if.end.2.i
  %shr.3.i = lshr i32 %call9, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %3)
  %cmp1.not.4.i = icmp ugt i32 %shr.3.i, %3
  br i1 %cmp1.not.4.i, label %if.end.4.i, label %if.end.3.i.if.then.i_crit_edge

if.end.3.i.if.then.i_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.4.i:                                       ; preds = %if.end.3.i
  %shr.4.i = lshr i32 %call9, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %3)
  %cmp1.not.5.i = icmp ugt i32 %shr.4.i, %3
  br i1 %cmp1.not.5.i, label %if.end.5.i, label %if.end.4.i.if.then.i_crit_edge

if.end.4.i.if.then.i_crit_edge:                   ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.5.i:                                       ; preds = %if.end.4.i
  %shr.5.i = lshr i32 %call9, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i, i32 %3)
  %cmp1.not.6.i = icmp ugt i32 %shr.5.i, %3
  br i1 %cmp1.not.6.i, label %if.end.6.i, label %if.end.5.i.if.then.i_crit_edge

if.end.5.i.if.then.i_crit_edge:                   ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.6.i:                                       ; preds = %if.end.5.i
  %shr.6.i = lshr i32 %call9, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i, i32 %3)
  %cmp1.not.7.i = icmp ugt i32 %shr.6.i, %3
  br i1 %cmp1.not.7.i, label %if.end.7.i, label %if.end.6.i.if.then.i_crit_edge

if.end.6.i.if.then.i_crit_edge:                   ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.7.i:                                       ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.7.i = lshr i32 %call9, 8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.7.i, %if.then.i
  %divs.0 = phi i32 [ 8, %if.end.7.i ], [ %storemerge25.lcssa.i, %if.then.i ]
  %clk0.020.i = phi i32 [ %shr.7.i, %if.end.7.i ], [ %clk0.026.lcssa.i, %if.then.i ]
  %clk1.0.i = phi i32 [ %call9, %if.end.7.i ], [ %shl.i, %if.then.i ]
  %sub.i = sub i32 %3, %clk0.020.i
  %sub2.i = sub i32 %clk1.0.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub2.i)
  %cmp3.not.i = icmp ugt i32 %sub.i, %sub2.i
  %dec.i = sext i1 %cmp3.not.i to i32
  %spec.select = add nsw i32 %divs.0, %dec.i
  %spec.select511 = select i1 %cmp3.not.i, i32 %clk1.0.i, i32 %clk0.020.i
  br label %if.end

if.end:                                           ; preds = %for.end.i, %entry.if.end_crit_edge
  %divs.2 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %for.end.i ]
  %out.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select511, %for.end.i ]
  %shl = shl i32 %3, 1
  %subdev1.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll.i) #7
  %9 = call ptr @memset(ptr %pll.i, i32 255, i32 56)
  %device.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  %bios.i = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios.i, align 8
  %call.i = call i32 @nvbios_pll_parse(ptr noundef %13, i32 noundef 16424, ptr noundef nonnull %pll.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i376, label %if.end.calc_pll.exit_crit_edge

if.end.calc_pll.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit

if.end.i376:                                      ; preds = %if.end
  %max_freq.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %max_freq.i, align 4
  %call3.i = call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %refclk.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i, i32 0, i32 2
  %15 = ptrtoint ptr %refclk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3.i, ptr %refclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool5.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool5.not.i, label %if.end.i376.calc_pll.exit_crit_edge, label %if.end7.i

if.end.i376.calc_pll.exit_crit_edge:              ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit

if.end7.i:                                        ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 @nv04_pll_calc(ptr noundef %subdev1.i, ptr noundef nonnull %pll.i, i32 noundef %shl, ptr noundef nonnull %N, ptr noundef nonnull %M, ptr noundef null, ptr noundef null, ptr noundef nonnull %P1) #7
  br label %calc_pll.exit

calc_pll.exit:                                    ; preds = %if.end7.i, %if.end.i376.calc_pll.exit_crit_edge, %if.end.calc_pll.exit_crit_edge
  %retval.0.i377 = phi i32 [ %call8.i, %if.end7.i ], [ 0, %if.end.calc_pll.exit_crit_edge ], [ 0, %if.end.i376.calc_pll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i) #7
  %sub = sub i32 %3, %out.0
  %16 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %shr = lshr i32 %retval.0.i377, 1
  %sub16 = sub i32 %3, %shr
  %17 = call i32 @llvm.abs.i32(i32 %sub16, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp24.not = icmp sgt i32 %16, %17
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  %csrc = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 1
  %18 = ptrtoint ptr %csrc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %csrc, align 4
  %shl26 = shl nsw i32 %divs.2, 16
  %cctrl = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 4
  %19 = ptrtoint ptr %cctrl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl26, ptr %cctrl, align 4
  br label %if.end37

if.else:                                          ; preds = %calc_pll.exit
  %20 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %P1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp27 = icmp sgt i32 %21, 2
  br i1 %cmp27, label %if.then28, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub29 = add nsw i32 %21, -2
  %22 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %P1, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else.if.end30_crit_edge
  %P2.0 = phi i32 [ %sub29, %if.then28 ], [ 0, %if.else.if.end30_crit_edge ]
  %csrc31 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 1
  %23 = ptrtoint ptr %csrc31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 15, ptr %csrc31, align 4
  %24 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %N, align 4
  %shl32 = shl i32 %25, 8
  %26 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %M, align 4
  %or = or i32 %shl32, %27
  %ccoef = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 6
  %28 = ptrtoint ptr %ccoef to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %ccoef, align 4
  %add = shl i32 %P2.0, 16
  %shl33 = add i32 %add, 65536
  %cctrl34 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 4
  %29 = ptrtoint ptr %cctrl34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl33, ptr %cctrl34, align 4
  %30 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %P1, align 4
  %shl36 = shl i32 65536, %31
  %cpost = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 8
  %32 = ptrtoint ptr %cpost to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl36, ptr %cpost, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end30, %if.then25
  %P2.1 = phi i32 [ 0, %if.then25 ], [ %P2.0, %if.end30 ]
  %call39 = call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call39)
  %cmp40 = icmp eq i32 %1, %call39
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %ssrc = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 2
  %33 = ptrtoint ptr %ssrc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %ssrc, align 4
  br label %if.end82

if.else42:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll.i378) #7
  %34 = call ptr @memset(ptr %pll.i378, i32 255, i32 56)
  %35 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i, align 4
  %bios.i381 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 21
  %37 = ptrtoint ptr %bios.i381 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bios.i381, align 8
  %call.i382 = call i32 @nvbios_pll_parse(ptr noundef %38, i32 noundef 16416, ptr noundef nonnull %pll.i378) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool.not.i383 = icmp eq i32 %call.i382, 0
  br i1 %tobool.not.i383, label %if.end.i388, label %if.else42.calc_pll.exit392_crit_edge

if.else42.calc_pll.exit392_crit_edge:             ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit392

if.end.i388:                                      ; preds = %if.else42
  %max_freq.i384 = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i378, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %max_freq.i384 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %max_freq.i384, align 4
  %call3.i385 = call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #7
  %refclk.i386 = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i378, i32 0, i32 2
  %40 = ptrtoint ptr %refclk.i386 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call3.i385, ptr %refclk.i386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i385)
  %tobool5.not.i387 = icmp eq i32 %call3.i385, 0
  br i1 %tobool5.not.i387, label %if.end.i388.calc_pll.exit392_crit_edge, label %if.end7.i390

if.end.i388.calc_pll.exit392_crit_edge:           ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit392

if.end7.i390:                                     ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i389 = call i32 @nv04_pll_calc(ptr noundef %subdev1.i, ptr noundef nonnull %pll.i378, i32 noundef %1, ptr noundef nonnull %N, ptr noundef nonnull %M, ptr noundef null, ptr noundef null, ptr noundef nonnull %P1) #7
  br label %calc_pll.exit392

calc_pll.exit392:                                 ; preds = %if.end7.i390, %if.end.i388.calc_pll.exit392_crit_edge, %if.else42.calc_pll.exit392_crit_edge
  %retval.0.i391 = phi i32 [ %call8.i389, %if.end7.i390 ], [ 0, %if.else42.calc_pll.exit392_crit_edge ], [ 0, %if.end.i388.calc_pll.exit392_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i378) #7
  %csrc44 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 1
  %41 = ptrtoint ptr %csrc44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %csrc44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %42)
  %cmp45 = icmp eq i32 %42, 15
  br i1 %cmp45, label %if.then46, label %calc_pll.exit392.if.end49_crit_edge

calc_pll.exit392.if.end49_crit_edge:              ; preds = %calc_pll.exit392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %calc_pll.exit392
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %1)
  %cmp1.not.i393 = icmp ugt i32 %shl, %1
  br i1 %cmp1.not.i393, label %if.end.i401, label %if.then46.if.then.i398_crit_edge

if.then46.if.then.i398_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.then.i398:                                     ; preds = %if.end.6.i419.if.then.i398_crit_edge, %if.end.5.i416.if.then.i398_crit_edge, %if.end.4.i413.if.then.i398_crit_edge, %if.end.3.i410.if.then.i398_crit_edge, %if.end.2.i407.if.then.i398_crit_edge, %if.end.1.i404.if.then.i398_crit_edge, %if.end.i401.if.then.i398_crit_edge, %if.then46.if.then.i398_crit_edge
  %clk0.026.lcssa.i394 = phi i32 [ %shl, %if.then46.if.then.i398_crit_edge ], [ %shr.i399, %if.end.i401.if.then.i398_crit_edge ], [ %shr.1.i402, %if.end.1.i404.if.then.i398_crit_edge ], [ %shr.2.i405, %if.end.2.i407.if.then.i398_crit_edge ], [ %shr.3.i408, %if.end.3.i410.if.then.i398_crit_edge ], [ %shr.4.i411, %if.end.4.i413.if.then.i398_crit_edge ], [ %shr.5.i414, %if.end.5.i416.if.then.i398_crit_edge ], [ %shr.6.i417, %if.end.6.i419.if.then.i398_crit_edge ]
  %storemerge25.lcssa.i395 = phi i32 [ 0, %if.then46.if.then.i398_crit_edge ], [ 1, %if.end.i401.if.then.i398_crit_edge ], [ 2, %if.end.1.i404.if.then.i398_crit_edge ], [ 3, %if.end.2.i407.if.then.i398_crit_edge ], [ 4, %if.end.3.i410.if.then.i398_crit_edge ], [ 5, %if.end.4.i413.if.then.i398_crit_edge ], [ 6, %if.end.5.i416.if.then.i398_crit_edge ], [ 7, %if.end.6.i419.if.then.i398_crit_edge ]
  %cond.i396 = zext i1 %cmp1.not.i393 to i32
  %shl.i397 = shl i32 %clk0.026.lcssa.i394, %cond.i396
  br label %for.end.i428

if.end.i401:                                      ; preds = %if.then46
  %shr.i399 = and i32 %3, 2147483647
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i399, i32 %1)
  %cmp1.not.1.i400 = icmp ugt i32 %shr.i399, %1
  br i1 %cmp1.not.1.i400, label %if.end.1.i404, label %if.end.i401.if.then.i398_crit_edge

if.end.i401.if.then.i398_crit_edge:               ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.1.i404:                                    ; preds = %if.end.i401
  %shr.1.i402 = lshr i32 %shl, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i402, i32 %1)
  %cmp1.not.2.i403 = icmp ugt i32 %shr.1.i402, %1
  br i1 %cmp1.not.2.i403, label %if.end.2.i407, label %if.end.1.i404.if.then.i398_crit_edge

if.end.1.i404.if.then.i398_crit_edge:             ; preds = %if.end.1.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.2.i407:                                    ; preds = %if.end.1.i404
  %shr.2.i405 = lshr i32 %shl, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i405, i32 %1)
  %cmp1.not.3.i406 = icmp ugt i32 %shr.2.i405, %1
  br i1 %cmp1.not.3.i406, label %if.end.3.i410, label %if.end.2.i407.if.then.i398_crit_edge

if.end.2.i407.if.then.i398_crit_edge:             ; preds = %if.end.2.i407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.3.i410:                                    ; preds = %if.end.2.i407
  %shr.3.i408 = lshr i32 %shl, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i408, i32 %1)
  %cmp1.not.4.i409 = icmp ugt i32 %shr.3.i408, %1
  br i1 %cmp1.not.4.i409, label %if.end.4.i413, label %if.end.3.i410.if.then.i398_crit_edge

if.end.3.i410.if.then.i398_crit_edge:             ; preds = %if.end.3.i410
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.4.i413:                                    ; preds = %if.end.3.i410
  %shr.4.i411 = lshr i32 %shl, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i411, i32 %1)
  %cmp1.not.5.i412 = icmp ugt i32 %shr.4.i411, %1
  br i1 %cmp1.not.5.i412, label %if.end.5.i416, label %if.end.4.i413.if.then.i398_crit_edge

if.end.4.i413.if.then.i398_crit_edge:             ; preds = %if.end.4.i413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.5.i416:                                    ; preds = %if.end.4.i413
  %shr.5.i414 = lshr i32 %shl, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i414, i32 %1)
  %cmp1.not.6.i415 = icmp ugt i32 %shr.5.i414, %1
  br i1 %cmp1.not.6.i415, label %if.end.6.i419, label %if.end.5.i416.if.then.i398_crit_edge

if.end.5.i416.if.then.i398_crit_edge:             ; preds = %if.end.5.i416
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.6.i419:                                    ; preds = %if.end.5.i416
  %shr.6.i417 = lshr i32 %shl, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i417, i32 %1)
  %cmp1.not.7.i418 = icmp ugt i32 %shr.6.i417, %1
  br i1 %cmp1.not.7.i418, label %if.end.7.i421, label %if.end.6.i419.if.then.i398_crit_edge

if.end.6.i419.if.then.i398_crit_edge:             ; preds = %if.end.6.i419
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i398

if.end.7.i421:                                    ; preds = %if.end.6.i419
  call void @__sanitizer_cov_trace_pc() #9
  %shr.7.i420 = lshr i32 %shl, 8
  br label %for.end.i428

for.end.i428:                                     ; preds = %if.end.7.i421, %if.then.i398
  %divs.3 = phi i32 [ 8, %if.end.7.i421 ], [ %storemerge25.lcssa.i395, %if.then.i398 ]
  %clk0.020.i423 = phi i32 [ %shr.7.i420, %if.end.7.i421 ], [ %clk0.026.lcssa.i394, %if.then.i398 ]
  %clk1.0.i424 = phi i32 [ %shl, %if.end.7.i421 ], [ %shl.i397, %if.then.i398 ]
  %sub.i425 = sub i32 %1, %clk0.020.i423
  %sub2.i426 = sub i32 %clk1.0.i424, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i425, i32 %sub2.i426)
  %cmp3.not.i427 = icmp ugt i32 %sub.i425, %sub2.i426
  %dec.i429 = sext i1 %cmp3.not.i427 to i32
  %spec.select512 = add nsw i32 %divs.3, %dec.i429
  %spec.select513 = select i1 %cmp3.not.i427, i32 %clk1.0.i424, i32 %clk0.020.i423
  br label %if.end49

if.end49:                                         ; preds = %for.end.i428, %calc_pll.exit392.if.end49_crit_edge
  %divs.5 = phi i32 [ %divs.2, %calc_pll.exit392.if.end49_crit_edge ], [ %spec.select512, %for.end.i428 ]
  %out.1 = phi i32 [ 0, %calc_pll.exit392.if.end49_crit_edge ], [ %spec.select513, %for.end.i428 ]
  %sub51 = sub i32 %1, %out.1
  %43 = call i32 @llvm.abs.i32(i32 %sub51, i1 false)
  %sub60 = sub i32 %1, %retval.0.i391
  %44 = call i32 @llvm.abs.i32(i32 %sub60, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %44)
  %cmp68.not = icmp sgt i32 %43, %44
  br i1 %cmp68.not, label %if.end49.if.else75_crit_edge, label %land.lhs.true

if.end49.if.else75_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else75

land.lhs.true:                                    ; preds = %if.end49
  %add69 = add i32 %divs.5, %P2.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add69)
  %cmp70 = icmp slt i32 %add69, 8
  br i1 %cmp70, label %if.then71, label %land.lhs.true.if.else75_crit_edge

land.lhs.true.if.else75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else75

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %ssrc72 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 2
  %45 = ptrtoint ptr %ssrc72 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %ssrc72, align 4
  %shl74 = shl i32 %add69, 16
  %sctrl = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 5
  %46 = ptrtoint ptr %sctrl to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl74, ptr %sctrl, align 4
  br label %if.end82

if.else75:                                        ; preds = %land.lhs.true.if.else75_crit_edge, %if.end49.if.else75_crit_edge
  %ssrc76 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 2
  %47 = ptrtoint ptr %ssrc76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 17, ptr %ssrc76, align 4
  %48 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %N, align 4
  %shl77 = shl i32 %49, 8
  %50 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %M, align 4
  %or78 = or i32 %shl77, %51
  %scoef = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 7
  %52 = ptrtoint ptr %scoef to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or78, ptr %scoef, align 4
  %53 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %P1, align 4
  %shl79 = shl i32 %54, 16
  %sctrl80 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 5
  %55 = ptrtoint ptr %sctrl80 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl79, ptr %sctrl80, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else75, %if.then71, %if.then41
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1.not.i433 = icmp ugt i32 %3, %5
  br i1 %cmp1.not.i433, label %if.end.i441, label %if.end82.if.then.i438_crit_edge

if.end82.if.then.i438_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.then.i438:                                     ; preds = %if.end.6.i459.if.then.i438_crit_edge, %if.end.5.i456.if.then.i438_crit_edge, %if.end.4.i453.if.then.i438_crit_edge, %if.end.3.i450.if.then.i438_crit_edge, %if.end.2.i447.if.then.i438_crit_edge, %if.end.1.i444.if.then.i438_crit_edge, %if.end.i441.if.then.i438_crit_edge, %if.end82.if.then.i438_crit_edge
  %clk0.026.lcssa.i434 = phi i32 [ %3, %if.end82.if.then.i438_crit_edge ], [ %shr.i439, %if.end.i441.if.then.i438_crit_edge ], [ %shr.1.i442, %if.end.1.i444.if.then.i438_crit_edge ], [ %shr.2.i445, %if.end.2.i447.if.then.i438_crit_edge ], [ %shr.3.i448, %if.end.3.i450.if.then.i438_crit_edge ], [ %shr.4.i451, %if.end.4.i453.if.then.i438_crit_edge ], [ %shr.5.i454, %if.end.5.i456.if.then.i438_crit_edge ], [ %shr.6.i457, %if.end.6.i459.if.then.i438_crit_edge ]
  %storemerge25.lcssa.i435 = phi i32 [ 0, %if.end82.if.then.i438_crit_edge ], [ 1, %if.end.i441.if.then.i438_crit_edge ], [ 2, %if.end.1.i444.if.then.i438_crit_edge ], [ 3, %if.end.2.i447.if.then.i438_crit_edge ], [ 4, %if.end.3.i450.if.then.i438_crit_edge ], [ 5, %if.end.4.i453.if.then.i438_crit_edge ], [ 6, %if.end.5.i456.if.then.i438_crit_edge ], [ 7, %if.end.6.i459.if.then.i438_crit_edge ]
  %cond.i436 = zext i1 %cmp1.not.i433 to i32
  %shl.i437 = shl i32 %clk0.026.lcssa.i434, %cond.i436
  br label %for.end.i468

if.end.i441:                                      ; preds = %if.end82
  %shr.i439 = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i439, i32 %5)
  %cmp1.not.1.i440 = icmp ugt i32 %shr.i439, %5
  br i1 %cmp1.not.1.i440, label %if.end.1.i444, label %if.end.i441.if.then.i438_crit_edge

if.end.i441.if.then.i438_crit_edge:               ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.1.i444:                                    ; preds = %if.end.i441
  %shr.1.i442 = lshr i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i442, i32 %5)
  %cmp1.not.2.i443 = icmp ugt i32 %shr.1.i442, %5
  br i1 %cmp1.not.2.i443, label %if.end.2.i447, label %if.end.1.i444.if.then.i438_crit_edge

if.end.1.i444.if.then.i438_crit_edge:             ; preds = %if.end.1.i444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.2.i447:                                    ; preds = %if.end.1.i444
  %shr.2.i445 = lshr i32 %3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i445, i32 %5)
  %cmp1.not.3.i446 = icmp ugt i32 %shr.2.i445, %5
  br i1 %cmp1.not.3.i446, label %if.end.3.i450, label %if.end.2.i447.if.then.i438_crit_edge

if.end.2.i447.if.then.i438_crit_edge:             ; preds = %if.end.2.i447
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.3.i450:                                    ; preds = %if.end.2.i447
  %shr.3.i448 = lshr i32 %3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i448, i32 %5)
  %cmp1.not.4.i449 = icmp ugt i32 %shr.3.i448, %5
  br i1 %cmp1.not.4.i449, label %if.end.4.i453, label %if.end.3.i450.if.then.i438_crit_edge

if.end.3.i450.if.then.i438_crit_edge:             ; preds = %if.end.3.i450
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.4.i453:                                    ; preds = %if.end.3.i450
  %shr.4.i451 = lshr i32 %3, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i451, i32 %5)
  %cmp1.not.5.i452 = icmp ugt i32 %shr.4.i451, %5
  br i1 %cmp1.not.5.i452, label %if.end.5.i456, label %if.end.4.i453.if.then.i438_crit_edge

if.end.4.i453.if.then.i438_crit_edge:             ; preds = %if.end.4.i453
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.5.i456:                                    ; preds = %if.end.4.i453
  %shr.5.i454 = lshr i32 %3, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i454, i32 %5)
  %cmp1.not.6.i455 = icmp ugt i32 %shr.5.i454, %5
  br i1 %cmp1.not.6.i455, label %if.end.6.i459, label %if.end.5.i456.if.then.i438_crit_edge

if.end.5.i456.if.then.i438_crit_edge:             ; preds = %if.end.5.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.6.i459:                                    ; preds = %if.end.5.i456
  %shr.6.i457 = lshr i32 %3, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i457, i32 %5)
  %cmp1.not.7.i458 = icmp ugt i32 %shr.6.i457, %5
  br i1 %cmp1.not.7.i458, label %if.end.7.i461, label %if.end.6.i459.if.then.i438_crit_edge

if.end.6.i459.if.then.i438_crit_edge:             ; preds = %if.end.6.i459
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i438

if.end.7.i461:                                    ; preds = %if.end.6.i459
  call void @__sanitizer_cov_trace_pc() #9
  %shr.7.i460 = lshr i32 %3, 8
  br label %for.end.i468

for.end.i468:                                     ; preds = %if.end.7.i461, %if.then.i438
  %divs.6 = phi i32 [ 8, %if.end.7.i461 ], [ %storemerge25.lcssa.i435, %if.then.i438 ]
  %clk0.020.i463 = phi i32 [ %shr.7.i460, %if.end.7.i461 ], [ %clk0.026.lcssa.i434, %if.then.i438 ]
  %clk1.0.i464 = phi i32 [ %3, %if.end.7.i461 ], [ %shl.i437, %if.then.i438 ]
  %sub.i465 = sub i32 %5, %clk0.020.i463
  %sub2.i466 = sub i32 %clk1.0.i464, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i465, i32 %sub2.i466)
  %cmp3.not.i467 = icmp ugt i32 %sub.i465, %sub2.i466
  %dec.i469 = sext i1 %cmp3.not.i467 to i32
  %divs.7 = add nsw i32 %divs.6, %dec.i469
  %retval.0.i471 = select i1 %cmp3.not.i467, i32 %clk1.0.i464, i32 %clk0.020.i463
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %5)
  %cmp1.not.i473 = icmp ult i32 %5, 500000
  br i1 %cmp1.not.i473, label %if.end.i480, label %for.end.i468.if.then.i478_crit_edge

for.end.i468.if.then.i478_crit_edge:              ; preds = %for.end.i468
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.then.i478:                                     ; preds = %if.end.6.i492.if.then.i478_crit_edge, %if.end.5.i490.if.then.i478_crit_edge, %if.end.4.i488.if.then.i478_crit_edge, %if.end.3.i486.if.then.i478_crit_edge, %if.end.2.i484.if.then.i478_crit_edge, %if.end.1.i482.if.then.i478_crit_edge, %if.end.i480.if.then.i478_crit_edge, %for.end.i468.if.then.i478_crit_edge
  %clk0.026.lcssa.i474 = phi i32 [ 500000, %for.end.i468.if.then.i478_crit_edge ], [ 250000, %if.end.i480.if.then.i478_crit_edge ], [ 125000, %if.end.1.i482.if.then.i478_crit_edge ], [ 62500, %if.end.2.i484.if.then.i478_crit_edge ], [ 31250, %if.end.3.i486.if.then.i478_crit_edge ], [ 15625, %if.end.4.i488.if.then.i478_crit_edge ], [ 7812, %if.end.5.i490.if.then.i478_crit_edge ], [ 3906, %if.end.6.i492.if.then.i478_crit_edge ]
  %storemerge25.lcssa.i475 = phi i32 [ 0, %for.end.i468.if.then.i478_crit_edge ], [ 1, %if.end.i480.if.then.i478_crit_edge ], [ 2, %if.end.1.i482.if.then.i478_crit_edge ], [ 3, %if.end.2.i484.if.then.i478_crit_edge ], [ 4, %if.end.3.i486.if.then.i478_crit_edge ], [ 5, %if.end.4.i488.if.then.i478_crit_edge ], [ 6, %if.end.5.i490.if.then.i478_crit_edge ], [ 7, %if.end.6.i492.if.then.i478_crit_edge ]
  %56 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge25.lcssa.i475, ptr %P1, align 4
  %cond.i476 = zext i1 %cmp1.not.i473 to i32
  %shl.i477 = shl nuw nsw i32 %clk0.026.lcssa.i474, %cond.i476
  br label %for.end.i500

if.end.i480:                                      ; preds = %for.end.i468
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %5)
  %cmp1.not.1.i479 = icmp ult i32 %5, 250000
  br i1 %cmp1.not.1.i479, label %if.end.1.i482, label %if.end.i480.if.then.i478_crit_edge

if.end.i480.if.then.i478_crit_edge:               ; preds = %if.end.i480
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.1.i482:                                    ; preds = %if.end.i480
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %5)
  %cmp1.not.2.i481 = icmp ult i32 %5, 125000
  br i1 %cmp1.not.2.i481, label %if.end.2.i484, label %if.end.1.i482.if.then.i478_crit_edge

if.end.1.i482.if.then.i478_crit_edge:             ; preds = %if.end.1.i482
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.2.i484:                                    ; preds = %if.end.1.i482
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500, i32 %5)
  %cmp1.not.3.i483 = icmp ult i32 %5, 62500
  br i1 %cmp1.not.3.i483, label %if.end.3.i486, label %if.end.2.i484.if.then.i478_crit_edge

if.end.2.i484.if.then.i478_crit_edge:             ; preds = %if.end.2.i484
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.3.i486:                                    ; preds = %if.end.2.i484
  call void @__sanitizer_cov_trace_const_cmp4(i32 31250, i32 %5)
  %cmp1.not.4.i485 = icmp ult i32 %5, 31250
  br i1 %cmp1.not.4.i485, label %if.end.4.i488, label %if.end.3.i486.if.then.i478_crit_edge

if.end.3.i486.if.then.i478_crit_edge:             ; preds = %if.end.3.i486
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.4.i488:                                    ; preds = %if.end.3.i486
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625, i32 %5)
  %cmp1.not.5.i487 = icmp ult i32 %5, 15625
  br i1 %cmp1.not.5.i487, label %if.end.5.i490, label %if.end.4.i488.if.then.i478_crit_edge

if.end.4.i488.if.then.i478_crit_edge:             ; preds = %if.end.4.i488
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.5.i490:                                    ; preds = %if.end.4.i488
  call void @__sanitizer_cov_trace_const_cmp4(i32 7812, i32 %5)
  %cmp1.not.6.i489 = icmp ult i32 %5, 7812
  br i1 %cmp1.not.6.i489, label %if.end.6.i492, label %if.end.5.i490.if.then.i478_crit_edge

if.end.5.i490.if.then.i478_crit_edge:             ; preds = %if.end.5.i490
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.6.i492:                                    ; preds = %if.end.5.i490
  call void @__sanitizer_cov_trace_const_cmp4(i32 3906, i32 %5)
  %cmp1.not.7.i491 = icmp ult i32 %5, 3906
  br i1 %cmp1.not.7.i491, label %if.end.7.i493, label %if.end.6.i492.if.then.i478_crit_edge

if.end.6.i492.if.then.i478_crit_edge:             ; preds = %if.end.6.i492
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i478

if.end.7.i493:                                    ; preds = %if.end.6.i492
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %P1, align 4
  br label %for.end.i500

for.end.i500:                                     ; preds = %if.end.7.i493, %if.then.i478
  %storemerge22.i494 = phi i32 [ %storemerge25.lcssa.i475, %if.then.i478 ], [ 8, %if.end.7.i493 ]
  %clk0.020.i495 = phi i32 [ %clk0.026.lcssa.i474, %if.then.i478 ], [ 1953, %if.end.7.i493 ]
  %clk1.0.i496 = phi i32 [ %shl.i477, %if.then.i478 ], [ 500000, %if.end.7.i493 ]
  %sub.i497 = sub i32 %5, %clk0.020.i495
  %sub2.i498 = sub i32 %clk1.0.i496, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i497, i32 %sub2.i498)
  %cmp3.not.i499 = icmp ugt i32 %sub.i497, %sub2.i498
  br i1 %cmp3.not.i499, label %if.end5.i502, label %for.end.i500.calc_P.exit504_crit_edge

for.end.i500.calc_P.exit504_crit_edge:            ; preds = %for.end.i500
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_P.exit504

if.end5.i502:                                     ; preds = %for.end.i500
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i501 = add nsw i32 %storemerge22.i494, -1
  %58 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dec.i501, ptr %P1, align 4
  %.pre = sub i32 %5, %clk1.0.i496
  br label %calc_P.exit504

calc_P.exit504:                                   ; preds = %if.end5.i502, %for.end.i500.calc_P.exit504_crit_edge
  %sub95.pre-phi = phi i32 [ %sub.i497, %for.end.i500.calc_P.exit504_crit_edge ], [ %.pre, %if.end5.i502 ]
  %sub86 = sub i32 %5, %retval.0.i471
  %59 = call i32 @llvm.abs.i32(i32 %sub86, i1 false)
  %60 = call i32 @llvm.abs.i32(i32 %sub95.pre-phi, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %60)
  %cmp103.not = icmp sgt i32 %59, %60
  br i1 %cmp103.not, label %if.else106, label %calc_P.exit504.do.body_crit_edge

calc_P.exit504.do.body_crit_edge:                 ; preds = %calc_P.exit504
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else106:                                       ; preds = %calc_P.exit504
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %P1, align 4
  br label %do.body

do.body:                                          ; preds = %if.else106, %calc_P.exit504.do.body_crit_edge
  %.sink = phi i32 [ 27, %if.else106 ], [ 7, %calc_P.exit504.do.body_crit_edge ]
  %shl105.sink.in = phi i32 [ %62, %if.else106 ], [ %divs.7, %calc_P.exit504.do.body_crit_edge ]
  %shl105.sink = shl i32 %shl105.sink.in, 16
  %63 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 10
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl105.sink, ptr %65, align 4
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %67 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp111 = icmp ugt i32 %68, 3
  br i1 %cmp111, label %if.end117, label %do.body.if.end150_crit_edge

do.body.if.end150_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

if.end117:                                        ; preds = %do.body
  %69 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device.i, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  %ccoef114 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 6
  %73 = ptrtoint ptr %ccoef114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ccoef114, align 4
  %cpost115 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 8
  %75 = ptrtoint ptr %cpost115 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpost115, align 4
  %cctrl116 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 4
  %77 = ptrtoint ptr %cctrl116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cctrl116, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %74, i32 noundef %76, i32 noundef %78) #11
  %79 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp123 = icmp ugt i32 %.pr, 3
  br i1 %cmp123, label %if.end134, label %if.end117.if.end150_crit_edge

if.end117.if.end150_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

if.end134:                                        ; preds = %if.end117
  %80 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device.i, align 4
  %dev129 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev129, align 8
  %scoef132 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 7
  %84 = ptrtoint ptr %scoef132 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %scoef132, align 4
  %spost = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 9
  %86 = ptrtoint ptr %spost to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %spost, align 4
  %sctrl133 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 5
  %88 = ptrtoint ptr %sctrl133 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sctrl133, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %85, i32 noundef %87, i32 noundef %89) #11
  %90 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr509 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr509)
  %cmp140 = icmp ugt i32 %.pr509, 3
  br i1 %cmp140, label %do.end144, label %if.end134.if.end150_crit_edge

if.end134.if.end150_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

do.end144:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device.i, align 4
  %dev146 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev146, align 8
  %95 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %65, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %96) #11
  br label %if.end150

if.end150:                                        ; preds = %do.end144, %if.end134.if.end150_crit_edge, %if.end117.if.end150_crit_edge, %do.body.if.end150_crit_edge
  %97 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp159 = icmp ugt i32 %98, 3
  br i1 %cmp159, label %if.end187.sink.split, label %if.end150.if.end187_crit_edge

if.end150.if.end187_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.end187.sink.split:                             ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %csrc153 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 1
  %99 = ptrtoint ptr %csrc153 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %csrc153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %100)
  %cmp154 = icmp eq i32 %100, 6
  %.str.18..str.21 = select i1 %cmp154, ptr @.str.18, ptr @.str.21
  %101 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device.i, align 4
  %dev181 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %dev181 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev181, align 8
  %name182 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull %.str.18..str.21, ptr noundef %name182) #11
  br label %if.end187

if.end187:                                        ; preds = %if.end187.sink.split, %if.end150.if.end187_crit_edge
  %ssrc188 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 2
  %105 = ptrtoint ptr %ssrc188 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ssrc188, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %106, label %do.body226 [
    i32 6, label %do.body191
    i32 15, label %do.body210
  ]

do.body191:                                       ; preds = %if.end187
  %108 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cmp194 = icmp ugt i32 %109, 3
  br i1 %cmp194, label %do.body191.if.end242.sink.split_crit_edge, label %do.body191.if.end242_crit_edge

do.body191.if.end242_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

do.body191.if.end242.sink.split_crit_edge:        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242.sink.split

do.body210:                                       ; preds = %if.end187
  %110 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp213 = icmp ugt i32 %111, 3
  br i1 %cmp213, label %do.body210.if.end242.sink.split_crit_edge, label %do.body210.if.end242_crit_edge

do.body210.if.end242_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

do.body210.if.end242.sink.split_crit_edge:        ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242.sink.split

do.body226:                                       ; preds = %if.end187
  %112 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp229 = icmp ugt i32 %113, 3
  br i1 %cmp229, label %do.body226.if.end242.sink.split_crit_edge, label %do.body226.if.end242_crit_edge

do.body226.if.end242_crit_edge:                   ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

do.body226.if.end242.sink.split_crit_edge:        ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242.sink.split

if.end242.sink.split:                             ; preds = %do.body226.if.end242.sink.split_crit_edge, %do.body210.if.end242.sink.split_crit_edge, %do.body191.if.end242.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.24, %do.body191.if.end242.sink.split_crit_edge ], [ @.str.27, %do.body210.if.end242.sink.split_crit_edge ], [ @.str.30, %do.body226.if.end242.sink.split_crit_edge ]
  %114 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device.i, align 4
  %dev235 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %dev235 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev235, align 8
  %name236 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull %.str.30.sink, ptr noundef %name236) #11
  br label %if.end242

if.end242:                                        ; preds = %if.end242.sink.split, %do.body226.if.end242_crit_edge, %do.body210.if.end242_crit_edge, %do.body191.if.end242_crit_edge
  %118 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %119)
  %cmp249 = icmp ugt i32 %119, 3
  br i1 %cmp249, label %if.end277.sink.split, label %if.end242.if.end277_crit_edge

if.end242.if.end277_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.end277.sink.split:                             ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %121)
  %cmp244 = icmp eq i32 %121, 6
  %.str.33..str.36 = select i1 %cmp244, ptr @.str.33, ptr @.str.36
  %122 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device.i, align 4
  %dev271 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dev271 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev271, align 8
  %name272 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %125, ptr noundef nonnull %.str.33..str.36, ptr noundef %name272) #11
  br label %if.end277

if.end277:                                        ; preds = %if.end277.sink.split, %if.end242.if.end277_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp77_clk_prog(ptr noundef %base) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !87
  %call = call i32 @gt215_clk_pre(ptr noundef %base, ptr noundef nonnull %flags) #7
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call, label %entry.if.end250_crit_edge [
    i32 0, label %if.end
    i32 -16, label %if.then249
  ]

entry.if.end250_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.end:                                           ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 49236
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  call void @arm_heavy_mb() #7
  %and = and i32 %6, -54529649
  %or = or i32 %and, 54527552
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 49236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %or) #7, !srcloc !90
  %and11 = and i32 %6, -54529652
  %csrc = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 1
  %9 = ptrtoint ptr %csrc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %csrc, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %10, label %do.body50 [
    i32 6, label %sw.bb
    i32 15, label %do.body31
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 16424
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  call void @arm_heavy_mb() #7
  %and24 = and i32 %14, -458753
  %cctrl = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 4
  %15 = ptrtoint ptr %cctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cctrl, align 4
  %or25 = or i32 %16, %and24
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %18, i32 16424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %or25) #7, !srcloc !90
  br label %sw.epilog

do.body31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %ccoef = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 6
  %19 = ptrtoint ptr %ccoef to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ccoef, align 4
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %22, i32 16428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %20) #7, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @arm_heavy_mb() #7
  %cctrl39 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 4
  %23 = ptrtoint ptr %cctrl39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cctrl39, align 4
  %or40 = or i32 %24, -2147483648
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %26, i32 16424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %or40) #7, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %cpost = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 8
  %27 = ptrtoint ptr %cpost to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpost, align 4
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %30, i32 16448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %28) #7, !srcloc !90
  br label %sw.epilog

do.body50:                                        ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp ugt i32 %32, 1
  br i1 %cmp, label %do.end54, label %do.body50.do.body201_crit_edge

do.body50.do.body201_crit_edge:                   ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body201

do.end54:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef %name) #11
  br label %resume

sw.epilog:                                        ; preds = %do.body31, %sw.bb
  %.sink = phi i32 [ 50331651, %do.body31 ], [ 50331650, %sw.bb ]
  %pllmask.0 = phi i32 [ 768, %do.body31 ], [ 0, %sw.bb ]
  %or49 = or i32 %and11, %.sink
  %ssrc = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 2
  %37 = ptrtoint ptr %ssrc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ssrc, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %38, label %do.body115 [
    i32 1, label %sw.bb59
    i32 15, label %sw.bb76
    i32 17, label %do.body95
  ]

sw.bb59:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %41, i32 16416
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  call void @arm_heavy_mb() #7
  %and71 = and i32 %42, -458753
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %44, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %and71) #7, !srcloc !90
  br label %sw.epilog130

sw.bb76:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr82 = getelementptr i8, ptr %46, i32 16416
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @arm_heavy_mb() #7
  %and88 = and i32 %47, -458753
  %sctrl = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 5
  %48 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sctrl, align 4
  %or89 = or i32 %49, %and88
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr91 = getelementptr i8, ptr %51, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %or89) #7, !srcloc !90
  %or93 = or i32 %or49, 32
  br label %sw.epilog130

do.body95:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  call void @arm_heavy_mb() #7
  %scoef = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 7
  %52 = ptrtoint ptr %scoef to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scoef, align 4
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %55, i32 16420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %53) #7, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %sctrl103 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 5
  %56 = ptrtoint ptr %sctrl103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sctrl103, align 4
  %or104 = or i32 %57, -2147483648
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %add.ptr106 = getelementptr i8, ptr %59, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %or104) #7, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @arm_heavy_mb() #7
  %spost = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 9
  %60 = ptrtoint ptr %spost to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %spost, align 4
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr111 = getelementptr i8, ptr %63, i32 16496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %61) #7, !srcloc !90
  %or112 = or i32 %pllmask.0, 12288
  %or113 = or i32 %or49, 48
  br label %sw.epilog130

do.body115:                                       ; preds = %sw.epilog
  %debug117 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %64 = ptrtoint ptr %debug117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp118 = icmp ugt i32 %65, 1
  br i1 %cmp118, label %do.end122, label %do.body115.resume_crit_edge

do.body115.resume_crit_edge:                      ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  br label %resume

do.end122:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device3, align 4
  %dev124 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev124, align 8
  %name125 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %69, ptr noundef nonnull @.str.42, ptr noundef %name125) #11
  br label %resume

sw.epilog130:                                     ; preds = %do.body95, %sw.bb76, %sw.bb59
  %mast.1 = phi i32 [ %or113, %do.body95 ], [ %or93, %sw.bb76 ], [ %or49, %sw.bb59 ]
  %pllmask.1 = phi i32 [ %or112, %do.body95 ], [ %pllmask.0, %sw.bb76 ], [ %pllmask.0, %sw.bb59 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %70 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body131

do.body131:                                       ; preds = %do.cond142.do.body131_crit_edge, %sw.epilog130
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr135 = getelementptr i8, ptr %72, i32 16512
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %and138 = and i32 %73, %pllmask.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and138, i32 %pllmask.1)
  %cmp139 = icmp eq i32 %and138, %pllmask.1
  br i1 %cmp139, label %if.end183, label %do.cond142

do.cond142:                                       ; preds = %do.body131
  %call143 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp144 = icmp sgt i64 %call143, -1
  br i1 %cmp144, label %do.cond142.do.body131_crit_edge, label %do.end156

do.cond142.do.body131_crit_edge:                  ; preds = %do.cond142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

do.end156:                                        ; preds = %do.cond142
  %74 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_wait, align 8
  %device158 = getelementptr inbounds %struct.nvkm_timer, ptr %75, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %device158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device158, align 4
  %dev159 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev159, align 8
  %call160 = call ptr @dev_driver_string(ptr noundef %79) #7
  %80 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %_wait, align 8
  %device163 = getelementptr inbounds %struct.nvkm_timer, ptr %81, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %device163 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device163, align 4
  %dev164 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev164, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end156.if.end179_crit_edge

do.end156.if.end179_crit_edge:                    ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.end.i:                                         ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.end.i, %do.end156.if.end179_crit_edge
  %retval.0.i = phi ptr [ %89, %if.end.i ], [ %87, %do.end156.if.end179_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 357, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call160, ptr noundef %retval.0.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %resume

if.end183:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  %vsrc = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 3
  %90 = ptrtoint ptr %vsrc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %91)
  %cond = icmp eq i32 %91, 7
  %or185 = or i32 %mast.1, 4194304
  %spec.select = select i1 %cond, i32 %or185, i32 %mast.1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @arm_heavy_mb() #7
  %vdiv = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 10
  %92 = ptrtoint ptr %vdiv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vdiv, align 4
  %94 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri, align 4
  %add.ptr191 = getelementptr i8, ptr %95, i32 17920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %93) #7, !srcloc !90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri, align 4
  %add.ptr197 = getelementptr i8, ptr %97, i32 49236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %spec.select) #7, !srcloc !90
  br label %resume

resume:                                           ; preds = %if.end183, %if.end179, %do.end122, %do.body115.resume_crit_edge, %do.end54
  %98 = ptrtoint ptr %csrc to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr = load i32, ptr %csrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr)
  %cmp199.not = icmp eq i32 %.pr, 15
  br i1 %cmp199.not, label %resume.if.end222_crit_edge, label %resume.do.body201_crit_edge

resume.do.body201_crit_edge:                      ; preds = %resume
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body201

resume.if.end222_crit_edge:                       ; preds = %resume
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

do.body201:                                       ; preds = %resume.do.body201_crit_edge, %do.body50.do.body201_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri, align 4
  %add.ptr205 = getelementptr i8, ptr %100, i32 16448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 0) #7, !srcloc !90
  %101 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri, align 4
  %add.ptr211 = getelementptr i8, ptr %102, i32 16424
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  call void @arm_heavy_mb() #7
  %and217 = and i32 %103, 2147483647
  %104 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri, align 4
  %add.ptr220 = getelementptr i8, ptr %105, i32 16424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 %and217) #7, !srcloc !90
  br label %if.end222

if.end222:                                        ; preds = %do.body201, %resume.if.end222_crit_edge
  %ssrc223 = getelementptr inbounds %struct.mcp77_clk, ptr %base, i32 0, i32 2
  %106 = ptrtoint ptr %ssrc223 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ssrc223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %107)
  %cmp224.not = icmp eq i32 %107, 17
  br i1 %cmp224.not, label %if.end222.if.end250_crit_edge, label %do.body226

if.end222.if.end250_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

do.body226:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  call void @arm_heavy_mb() #7
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr230 = getelementptr i8, ptr %109, i32 16496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 0) #7, !srcloc !90
  %110 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri, align 4
  %add.ptr236 = getelementptr i8, ptr %111, i32 16416
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  call void @arm_heavy_mb() #7
  %and242 = and i32 %112, 2147483647
  %113 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri, align 4
  %add.ptr245 = getelementptr i8, ptr %114, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 %and242) #7, !srcloc !90
  br label %if.end250

if.then249:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %do.body226, %if.end222.if.end250_crit_edge, %entry.if.end250_crit_edge
  %f.0 = phi ptr [ null, %if.then249 ], [ %flags, %entry.if.end250_crit_edge ], [ %flags, %if.end222.if.end250_crit_edge ], [ %flags, %do.body226 ]
  call void @gt215_clk_post(ptr noundef %base, ptr noundef %f.0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mcp77_clk_tidy(ptr nocapture noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_clk_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_clk_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 404, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 405, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 406, i32 34}
!6 = !{ptr @mcp77_clk, !7, !"mcp77_clk", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 396, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 157, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mcp77_clk_read._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mcp77_clk_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 270, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mcp77_clk_calc._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mcp77_clk_calc._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 272, i32 2}
!23 = !{ptr @mcp77_clk_calc._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcp77_clk_calc._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 274, i32 2}
!27 = !{ptr @mcp77_clk_calc._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mcp77_clk_calc._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 276, i32 3}
!31 = !{ptr @mcp77_clk_calc._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mcp77_clk_calc._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 278, i32 3}
!35 = !{ptr @mcp77_clk_calc._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mcp77_clk_calc._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 281, i32 3}
!39 = !{ptr @mcp77_clk_calc._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mcp77_clk_calc._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 283, i32 3}
!43 = !{ptr @mcp77_clk_calc._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mcp77_clk_calc._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 285, i32 3}
!47 = !{ptr @mcp77_clk_calc._entry.29, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mcp77_clk_calc._entry_ptr.31, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.33, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 288, i32 3}
!51 = !{ptr @mcp77_clk_calc._entry.32, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mcp77_clk_calc._entry_ptr.34, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 290, i32 3}
!55 = !{ptr @mcp77_clk_calc._entry.35, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mcp77_clk_calc._entry_ptr.37, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 328, i32 3}
!59 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mcp77_clk_prog._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @mcp77_clk_prog._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 349, i32 3}
!65 = !{ptr @mcp77_clk_prog._entry.41, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mcp77_clk_prog._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c", i32 353, i32 6}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 5396322}
!79 = !{i64 2156244258}
!80 = !{i64 2156244643}
!81 = !{i64 2156241495}
!82 = !{i64 2156241880}
!83 = !{i64 2156242638}
!84 = !{i64 2156245028}
!85 = !{i64 2156242259}
!86 = !{i64 2156241110}
!87 = !{!"auto-init"}
!88 = !{i64 2156303271}
!89 = !{i64 2156303673}
!90 = !{i64 5395904}
!91 = !{i64 2156304544}
!92 = !{i64 2156304946}
!93 = !{i64 2156305387}
!94 = !{i64 2156305822}
!95 = !{i64 2156306244}
!96 = !{i64 2156309515}
!97 = !{i64 2156309917}
!98 = !{i64 2156310788}
!99 = !{i64 2156311190}
!100 = !{i64 2156311631}
!101 = !{i64 2156312066}
!102 = !{i64 2156312488}
!103 = !{i64 2156316850}
!104 = !{i64 2156318130}
!105 = !{i64 2156318526}
!106 = !{i64 2156318929}
!107 = !{i64 2156319768}
!108 = !{i64 2156320170}
!109 = !{i64 2156320611}
!110 = !{i64 2156321450}
!111 = !{i64 2156321852}
