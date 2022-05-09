; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gk20a_clk_pllg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gk20a_pll = type { i32, i32, i32 }
%struct.gk20a_clk = type { %struct.nvkm_clk, ptr, %struct.gk20a_pll, i32, ptr, ptr }
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
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_clk_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.nvkm_domain] }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.142, i32, i32 }
%struct.anon.142 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@gk20a_pllg_calc_mnp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: low_PL %d(div%d), high_PL %d(div%d)\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gk20a_pllg_calc_mnp\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk20a_pllg_calc_mnp._entry_ptr = internal global ptr @gk20a_pllg_calc_mnp._entry, section ".printk_index", align 4
@gk20a_pllg_calc_mnp._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: no best match for target @ %dMHz on gpc_pll\00", [48 x i8] zeroinitializer }, align 32
@gk20a_pllg_calc_mnp._entry_ptr.7 = internal global ptr @gk20a_pllg_calc_mnp._entry.5, section ".printk_index", align 4
@gk20a_pllg_calc_mnp._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: actual target freq %d KHz, M %d, N %d, PL %d(div%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@gk20a_pllg_calc_mnp._entry_ptr.10 = internal global ptr @gk20a_pllg_calc_mnp._entry.8, section ".printk_index", align 4
@gk20a_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 474, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid clock source %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gk20a_clk_read\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gk20a_clk_read._entry_ptr = internal global ptr @gk20a_clk_read._entry, section ".printk_index", align 4
@gk20a_clk_setup_slide._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 530, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: invalid parent clock rate %u KHz\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gk20a_clk_setup_slide\00", [42 x i8] zeroinitializer }, align 32
@gk20a_clk_setup_slide._entry_ptr = internal global ptr @gk20a_clk_setup_slide._entry, section ".printk_index", align 4
@gk20a_clk_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: parent clock rate: %d Khz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gk20a_clk_ctor\00", [17 x i8] zeroinitializer }, align 32
@gk20a_clk_ctor._entry_ptr = internal global ptr @gk20a_clk_ctor._entry, section ".printk_index", align 4
@gk20a_pllg_params = internal constant { %struct.gk20a_clk_pllg_params, [56 x i8] } { %struct.gk20a_clk_pllg_params { i32 1000000, i32 2064000, i32 12000, i32 38000, i32 1, i32 255, i32 8, i32 255, i32 1, i32 32 }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@gk20a_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] } { ptr @gk20a_clk_init, ptr @gk20a_clk_fini, ptr @gk20a_clk_read, ptr @gk20a_clk_calc, ptr @gk20a_clk_prog, ptr @gk20a_clk_tidy, ptr @gk20a_pstates, i32 15, [3 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 -1, i8 0, ptr @.str.19, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@gk20a_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 588, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cannot initialize clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gk20a_clk_init\00", [17 x i8] zeroinitializer }, align 32
@gk20a_clk_init._entry_ptr = internal global ptr @gk20a_clk_init._entry, section ".printk_index", align 4
@gk20a_pstates = internal global { [15 x { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 }], [576 x i8] } { [15 x { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 }] [{ %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 0, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 1, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 2, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 3, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 252000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 4, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 324000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 5, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 396000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 6, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 468000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 7, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 540000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 8, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 612000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 9, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 648000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 10, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 684000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 11, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 708000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 12, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 756000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 13, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 804000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 14, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 852000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }], [576 x i8] zeroinitializer }, align 32
@_pl_to_div = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01\02\03\04\05\06\08\0A\0C\10\0C\10\14\18 ", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 12800000, i64 13000000, i64 19200000, i64 38400000]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 135, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 193, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 203, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 474, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 529, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 634, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"gk20a_pllg_params\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 56, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 272, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 607, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"gk20a_clk\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 596, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 588, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"gk20a_pstates\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 366, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"_pl_to_div\00", align 1
@___asan_gen_.111 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 31, i32 17 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @gk20a_clk_ctor._entry, ptr @gk20a_clk_ctor._entry_ptr, ptr @gk20a_clk_init._entry, ptr @gk20a_clk_init._entry_ptr, ptr @gk20a_clk_read._entry, ptr @gk20a_clk_read._entry_ptr, ptr @gk20a_clk_setup_slide._entry, ptr @gk20a_clk_setup_slide._entry_ptr, ptr @gk20a_pllg_calc_mnp._entry, ptr @gk20a_pllg_calc_mnp._entry.5, ptr @gk20a_pllg_calc_mnp._entry.8, ptr @gk20a_pllg_calc_mnp._entry_ptr, ptr @gk20a_pllg_calc_mnp._entry_ptr.10, ptr @gk20a_pllg_calc_mnp._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @gk20a_pllg_params, ptr @.str.18, ptr @.str.19, ptr @gk20a_clk, ptr @.str.21, ptr @.str.22, ptr @gk20a_pstates, ptr @_pl_to_div], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pllg_calc_mnp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pllg_calc_mnp._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pllg_calc_mnp._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_clk_setup_slide._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_clk_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pllg_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_clk to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pstates to i32), i32 2400, i32 2976, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pl_to_div to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk20a_pllg_read_mnp(ptr nocapture noundef readonly %clk, ptr nocapture noundef writeonly %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1273860
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %and = and i32 %4, 255
  %5 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %pll, align 4
  %shr2 = lshr i32 %4, 8
  %and3 = and i32 %shr2, 255
  %n = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %n, align 4
  %shr4 = lshr i32 %4, 16
  %and5 = and i32 %shr4, 63
  %pl = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %7 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and5, ptr %pl, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk20a_pllg_write_mnp(ptr nocapture noundef readonly %clk, ptr nocapture noundef readonly %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pll, align 4
  %and = and i32 %3, 255
  %n = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %and2 = shl i32 %5, 8
  %shl3 = and i32 %and2, 65280
  %or = or i32 %shl3, %and
  %pl = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pl, align 4
  %and4 = shl i32 %7, 16
  %shl5 = and i32 %and4, 4128768
  %or6 = or i32 %or, %shl5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1273860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or6) #8, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_pllg_calc_rate(ptr nocapture noundef readonly %clk, ptr nocapture noundef readonly %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 3
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %n = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %mul = mul i32 %3, %1
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pll, align 4
  %pl_to_div = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 5
  %6 = ptrtoint ptr %pl_to_div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pl_to_div, align 4
  %pl = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %8 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pl, align 4
  %call = tail call i32 %7(i32 noundef %9) #8
  %mul1 = mul i32 %call, %5
  %div = udiv i32 %mul, %mul1
  %div26 = lshr i32 %div, 1
  ret i32 %div26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_pllg_calc_mnp(ptr noundef %clk, i32 noundef %rate, ptr nocapture noundef %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %rate, 1
  %div = udiv i32 %mul, 1000
  %parent_rate = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 3
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div2 = udiv i32 %1, 1000
  %div3 = udiv i32 %mul, 50000
  %add = add nuw nsw i32 %div, %div3
  %params = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 1
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %max_vco = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %max_vco to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vco, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %add)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %max_m = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %max_m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_m, align 4
  %min_n = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %min_n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_n, align 4
  %min_pl = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %min_pl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_pl, align 4
  %add8 = add nsw i32 %add, -1
  %sub = add i32 %add8, %6
  %div9 = udiv i32 %sub, %add
  %max_pl = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %max_pl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_pl, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %div9, i32 %16)
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %14)
  %div_to_pl = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 4
  %19 = ptrtoint ptr %div_to_pl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %div_to_pl, align 4
  %call = tail call i32 %20(i32 noundef %18) #8
  %div25 = udiv i32 %8, %add
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %params, align 4
  %max_pl27 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %max_pl27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_pl27, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %div25, i32 %24)
  %min_pl35 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %22, i32 0, i32 8
  %26 = ptrtoint ptr %min_pl35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_pl35, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27)
  %29 = ptrtoint ptr %div_to_pl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %div_to_pl, align 4
  %call43 = tail call i32 %30(i32 noundef %28) #8
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp44 = icmp ugt i32 %32, 3
  br i1 %cmp44, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %pl_to_div = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 5
  %37 = ptrtoint ptr %pl_to_div to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pl_to_div, align 4
  %call46 = tail call i32 %38(i32 noundef %call43) #8
  %39 = ptrtoint ptr %pl_to_div to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pl_to_div, align 4
  %call48 = tail call i32 %40(i32 noundef %call) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call43, i32 noundef %call46, i32 noundef %call, i32 noundef %call48) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %call)
  %cmp51.not437 = icmp ugt i32 %call43, %call
  br i1 %cmp51.not437, label %if.end.do.end149_crit_edge, label %for.body.lr.ph

if.end.do.end149_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end149

for.body.lr.ph:                                   ; preds = %if.end
  %pl_to_div52 = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 5
  %sub73 = add nsw i32 %div2, -1
  br label %for.body

for.body:                                         ; preds = %for.inc135.for.body_crit_edge, %for.body.lr.ph
  %pl.0442 = phi i32 [ %call43, %for.body.lr.ph ], [ %inc136, %for.inc135.for.body_crit_edge ]
  %best_delta.0441 = phi i32 [ -1, %for.body.lr.ph ], [ %best_delta.1.lcssa, %for.inc135.for.body_crit_edge ]
  %best_n.0440 = phi i32 [ %12, %for.body.lr.ph ], [ %best_n.1.lcssa, %for.inc135.for.body_crit_edge ]
  %best_m.0439 = phi i32 [ %10, %for.body.lr.ph ], [ %best_m.1.lcssa, %for.inc135.for.body_crit_edge ]
  %best_pl.0438 = phi i32 [ %14, %for.body.lr.ph ], [ %best_pl.1.lcssa, %for.inc135.for.body_crit_edge ]
  %41 = ptrtoint ptr %pl_to_div52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pl_to_div52, align 4
  %call53 = tail call i32 %42(i32 noundef %pl.0442) #8
  %mul54 = mul i32 %call53, %div
  %43 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params, align 4
  %min_m = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %min_m to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_m, align 4
  %max_m58416 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %max_m58416 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_m58416, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp59.not417 = icmp ugt i32 %46, %48
  br i1 %cmp59.not417, label %for.body.for.inc135_crit_edge, label %for.body.for.body60_crit_edge

for.body.for.body60_crit_edge:                    ; preds = %for.body
  br label %for.body60

for.body.for.inc135_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc135

for.body60:                                       ; preds = %for.inc127.for.body60_crit_edge, %for.body.for.body60_crit_edge
  %49 = phi ptr [ %68, %for.inc127.for.body60_crit_edge ], [ %44, %for.body.for.body60_crit_edge ]
  %m.0422 = phi i32 [ %inc128, %for.inc127.for.body60_crit_edge ], [ %46, %for.body.for.body60_crit_edge ]
  %best_delta.1421 = phi i32 [ %best_delta.8.ph, %for.inc127.for.body60_crit_edge ], [ %best_delta.0441, %for.body.for.body60_crit_edge ]
  %best_n.1420 = phi i32 [ %best_n.8.ph, %for.inc127.for.body60_crit_edge ], [ %best_n.0440, %for.body.for.body60_crit_edge ]
  %best_m.1419 = phi i32 [ %best_m.8.ph, %for.inc127.for.body60_crit_edge ], [ %best_m.0439, %for.body.for.body60_crit_edge ]
  %best_pl.1418 = phi i32 [ %best_pl.8.ph, %for.inc127.for.body60_crit_edge ], [ %best_pl.0438, %for.body.for.body60_crit_edge ]
  %div61 = udiv i32 %div2, %m.0422
  %min_u = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %min_u to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %min_u, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div61, i32 %51)
  %cmp63 = icmp ult i32 %div61, %51
  br i1 %cmp63, label %for.body60.for.inc135_crit_edge, label %if.end65

for.body60.for.inc135_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc135

if.end65:                                         ; preds = %for.body60
  %max_u = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %max_u to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_u, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div61, i32 %53)
  %cmp67 = icmp ugt i32 %div61, %53
  br i1 %cmp67, label %if.end65.for.inc127_crit_edge, label %if.end69

if.end65.for.inc127_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc127

if.end69:                                         ; preds = %if.end65
  %mul70 = mul i32 %mul54, %m.0422
  %div71 = udiv i32 %mul70, %div2
  %add74 = add i32 %sub73, %mul70
  %div75 = udiv i32 %add74, %div2
  %max_n = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %49, i32 0, i32 7
  %54 = ptrtoint ptr %max_n to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div71, i32 %55)
  %cmp77 = icmp ugt i32 %div71, %55
  br i1 %cmp77, label %if.end69.for.inc135_crit_edge, label %for.cond80.preheader

if.end69.for.inc135_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc135

for.cond80.preheader:                             ; preds = %if.end69
  call void @__sanitizer_cov_trace_cmp4(i32 %div71, i32 %div75)
  %cmp81.not402 = icmp ugt i32 %div71, %div75
  br i1 %cmp81.not402, label %for.cond80.preheader.for.inc127_crit_edge, label %for.cond80.preheader.for.body82_crit_edge

for.cond80.preheader.for.body82_crit_edge:        ; preds = %for.cond80.preheader
  br label %for.body82

for.cond80.preheader.for.inc127_crit_edge:        ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc127

for.body82:                                       ; preds = %for.inc.for.body82_crit_edge, %for.cond80.preheader.for.body82_crit_edge
  %n.0407 = phi i32 [ %inc, %for.inc.for.body82_crit_edge ], [ %div71, %for.cond80.preheader.for.body82_crit_edge ]
  %best_delta.2406 = phi i32 [ %best_delta.6.ph, %for.inc.for.body82_crit_edge ], [ %best_delta.1421, %for.cond80.preheader.for.body82_crit_edge ]
  %best_n.2405 = phi i32 [ %best_n.6.ph, %for.inc.for.body82_crit_edge ], [ %best_n.1420, %for.cond80.preheader.for.body82_crit_edge ]
  %best_m.2404 = phi i32 [ %best_m.6.ph, %for.inc.for.body82_crit_edge ], [ %best_m.1419, %for.cond80.preheader.for.body82_crit_edge ]
  %best_pl.2403 = phi i32 [ %best_pl.6.ph, %for.inc.for.body82_crit_edge ], [ %best_pl.1418, %for.cond80.preheader.for.body82_crit_edge ]
  %56 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %params, align 4
  %min_n84 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %min_n84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %min_n84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0407, i32 %59)
  %cmp85 = icmp ult i32 %n.0407, %59
  br i1 %cmp85, label %for.body82.for.inc_crit_edge, label %if.end87

for.body82.for.inc_crit_edge:                     ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end87:                                         ; preds = %for.body82
  %max_n89 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %57, i32 0, i32 7
  %60 = ptrtoint ptr %max_n89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_n89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0407, i32 %61)
  %cmp90 = icmp ugt i32 %n.0407, %61
  br i1 %cmp90, label %if.end87.for.inc127_crit_edge, label %if.end92

if.end87.for.inc127_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc127

if.end92:                                         ; preds = %if.end87
  %mul93 = mul i32 %n.0407, %div2
  %div94 = udiv i32 %mul93, %m.0422
  call void @__sanitizer_cov_trace_cmp4(i32 %div94, i32 %8)
  %cmp95.not = icmp ult i32 %div94, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %div94, i32 %6)
  %cmp96.not = icmp ugt i32 %div94, %6
  %or.cond = select i1 %cmp95.not, i1 true, i1 %cmp96.not
  br i1 %or.cond, label %if.end92.for.inc_crit_edge, label %if.then97

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then97:                                        ; preds = %if.end92
  %62 = ptrtoint ptr %pl_to_div52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pl_to_div52, align 4
  %call99 = tail call i32 %63(i32 noundef %pl.0442) #8
  %div100333 = lshr i32 %call99, 1
  %add101 = add i32 %div100333, %div94
  %64 = ptrtoint ptr %pl_to_div52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pl_to_div52, align 4
  %call103 = tail call i32 %65(i32 noundef %pl.0442) #8
  %div104 = udiv i32 %add101, %call103
  %sub105 = sub i32 %div104, %div
  %66 = tail call i32 @llvm.abs.i32(i32 %sub105, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %best_delta.2406)
  %cmp113 = icmp ult i32 %66, %best_delta.2406
  br i1 %cmp113, label %if.then114, label %if.then97.for.inc_crit_edge

if.then97.for.inc_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then114:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_cmp4(i32 %div104, i32 %div)
  %cmp115 = icmp eq i32 %div104, %div
  br i1 %cmp115, label %if.then114.if.end181_crit_edge, label %if.then114.for.inc_crit_edge

if.then114.for.inc_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then114.if.end181_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

for.inc:                                          ; preds = %if.then114.for.inc_crit_edge, %if.then97.for.inc_crit_edge, %if.end92.for.inc_crit_edge, %for.body82.for.inc_crit_edge
  %best_pl.6.ph = phi i32 [ %best_pl.2403, %if.end92.for.inc_crit_edge ], [ %best_pl.2403, %for.body82.for.inc_crit_edge ], [ %pl.0442, %if.then114.for.inc_crit_edge ], [ %best_pl.2403, %if.then97.for.inc_crit_edge ]
  %best_m.6.ph = phi i32 [ %best_m.2404, %if.end92.for.inc_crit_edge ], [ %best_m.2404, %for.body82.for.inc_crit_edge ], [ %m.0422, %if.then114.for.inc_crit_edge ], [ %best_m.2404, %if.then97.for.inc_crit_edge ]
  %best_n.6.ph = phi i32 [ %best_n.2405, %if.end92.for.inc_crit_edge ], [ %best_n.2405, %for.body82.for.inc_crit_edge ], [ %n.0407, %if.then114.for.inc_crit_edge ], [ %best_n.2405, %if.then97.for.inc_crit_edge ]
  %best_delta.6.ph = phi i32 [ %best_delta.2406, %if.end92.for.inc_crit_edge ], [ %best_delta.2406, %for.body82.for.inc_crit_edge ], [ %66, %if.then114.for.inc_crit_edge ], [ %best_delta.2406, %if.then97.for.inc_crit_edge ]
  %inc = add i32 %n.0407, 1
  %cmp81.not = icmp ugt i32 %inc, %div75
  br i1 %cmp81.not, label %for.inc.for.inc127_crit_edge, label %for.inc.for.body82_crit_edge

for.inc.for.body82_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

for.inc.for.inc127_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc127

for.inc127:                                       ; preds = %for.inc.for.inc127_crit_edge, %if.end87.for.inc127_crit_edge, %for.cond80.preheader.for.inc127_crit_edge, %if.end65.for.inc127_crit_edge
  %best_pl.8.ph = phi i32 [ %best_pl.1418, %if.end65.for.inc127_crit_edge ], [ %best_pl.1418, %for.cond80.preheader.for.inc127_crit_edge ], [ %best_pl.6.ph, %for.inc.for.inc127_crit_edge ], [ %best_pl.2403, %if.end87.for.inc127_crit_edge ]
  %best_m.8.ph = phi i32 [ %best_m.1419, %if.end65.for.inc127_crit_edge ], [ %best_m.1419, %for.cond80.preheader.for.inc127_crit_edge ], [ %best_m.6.ph, %for.inc.for.inc127_crit_edge ], [ %best_m.2404, %if.end87.for.inc127_crit_edge ]
  %best_n.8.ph = phi i32 [ %best_n.1420, %if.end65.for.inc127_crit_edge ], [ %best_n.1420, %for.cond80.preheader.for.inc127_crit_edge ], [ %best_n.6.ph, %for.inc.for.inc127_crit_edge ], [ %best_n.2405, %if.end87.for.inc127_crit_edge ]
  %best_delta.8.ph = phi i32 [ %best_delta.1421, %if.end65.for.inc127_crit_edge ], [ %best_delta.1421, %for.cond80.preheader.for.inc127_crit_edge ], [ %best_delta.6.ph, %for.inc.for.inc127_crit_edge ], [ %best_delta.2406, %if.end87.for.inc127_crit_edge ]
  %inc128 = add i32 %m.0422, 1
  %67 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %params, align 4
  %max_m58 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %max_m58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_m58, align 4
  %cmp59.not = icmp ugt i32 %inc128, %70
  br i1 %cmp59.not, label %for.inc127.for.inc135_crit_edge, label %for.inc127.for.body60_crit_edge

for.inc127.for.body60_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body60

for.inc127.for.inc135_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc135

for.inc135:                                       ; preds = %for.inc127.for.inc135_crit_edge, %if.end69.for.inc135_crit_edge, %for.body60.for.inc135_crit_edge, %for.body.for.inc135_crit_edge
  %best_pl.1.lcssa = phi i32 [ %best_pl.0438, %for.body.for.inc135_crit_edge ], [ %best_pl.1418, %if.end69.for.inc135_crit_edge ], [ %best_pl.1418, %for.body60.for.inc135_crit_edge ], [ %best_pl.8.ph, %for.inc127.for.inc135_crit_edge ]
  %best_m.1.lcssa = phi i32 [ %best_m.0439, %for.body.for.inc135_crit_edge ], [ %best_m.1419, %if.end69.for.inc135_crit_edge ], [ %best_m.1419, %for.body60.for.inc135_crit_edge ], [ %best_m.8.ph, %for.inc127.for.inc135_crit_edge ]
  %best_n.1.lcssa = phi i32 [ %best_n.0440, %for.body.for.inc135_crit_edge ], [ %best_n.1420, %if.end69.for.inc135_crit_edge ], [ %best_n.1420, %for.body60.for.inc135_crit_edge ], [ %best_n.8.ph, %for.inc127.for.inc135_crit_edge ]
  %best_delta.1.lcssa = phi i32 [ %best_delta.0441, %for.body.for.inc135_crit_edge ], [ %best_delta.1421, %if.end69.for.inc135_crit_edge ], [ %best_delta.1421, %for.body60.for.inc135_crit_edge ], [ %best_delta.8.ph, %for.inc127.for.inc135_crit_edge ]
  %inc136 = add i32 %pl.0442, 1
  %cmp51.not = icmp ugt i32 %inc136, %call
  br i1 %cmp51.not, label %found_match, label %for.inc135.for.body_crit_edge

for.inc135.for.body_crit_edge:                    ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

found_match:                                      ; preds = %for.inc135
  %71 = zext i32 %best_delta.1.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %best_delta.1.lcssa, label %found_match.do.body165_crit_edge [
    i32 -1, label %found_match.do.end149_crit_edge
    i32 0, label %found_match.if.end181_crit_edge
  ], !prof !62

found_match.if.end181_crit_edge:                  ; preds = %found_match
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

found_match.do.end149_crit_edge:                  ; preds = %found_match
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end149

found_match.do.body165_crit_edge:                 ; preds = %found_match
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body165

do.end149:                                        ; preds = %found_match.do.end149_crit_edge, %if.end.do.end149_crit_edge
  %best_n.0.lcssa459 = phi i32 [ %best_n.1.lcssa, %found_match.do.end149_crit_edge ], [ %12, %if.end.do.end149_crit_edge ]
  %best_m.0.lcssa457 = phi i32 [ %best_m.1.lcssa, %found_match.do.end149_crit_edge ], [ %10, %if.end.do.end149_crit_edge ]
  %best_pl.0.lcssa455 = phi i32 [ %best_pl.1.lcssa, %found_match.do.end149_crit_edge ], [ %14, %if.end.do.end149_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #8
  br label %do.body165

do.body165:                                       ; preds = %do.end149, %found_match.do.body165_crit_edge
  %best_n.0.lcssa460 = phi i32 [ %best_n.0.lcssa459, %do.end149 ], [ %best_n.1.lcssa, %found_match.do.body165_crit_edge ]
  %best_m.0.lcssa458 = phi i32 [ %best_m.0.lcssa457, %do.end149 ], [ %best_m.1.lcssa, %found_match.do.body165_crit_edge ]
  %best_pl.0.lcssa456 = phi i32 [ %best_pl.0.lcssa455, %do.end149 ], [ %best_pl.1.lcssa, %found_match.do.body165_crit_edge ]
  %72 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp168 = icmp ugt i32 %73, 3
  br i1 %cmp168, label %do.end172, label %do.body165.if.end181_crit_edge

do.body165.if.end181_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

do.end172:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #10
  %device173 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %device173 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device173, align 4
  %dev174 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev174, align 8
  %name175 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %div177 = udiv i32 %mul, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.6, ptr noundef %name175, i32 noundef %div177) #11
  br label %if.end181

if.end181:                                        ; preds = %do.end172, %do.body165.if.end181_crit_edge, %found_match.if.end181_crit_edge, %if.then114.if.end181_crit_edge
  %best_n.11386 = phi i32 [ %best_n.0.lcssa460, %do.body165.if.end181_crit_edge ], [ %best_n.0.lcssa460, %do.end172 ], [ %best_n.1.lcssa, %found_match.if.end181_crit_edge ], [ %n.0407, %if.then114.if.end181_crit_edge ]
  %best_m.11385 = phi i32 [ %best_m.0.lcssa458, %do.body165.if.end181_crit_edge ], [ %best_m.0.lcssa458, %do.end172 ], [ %best_m.1.lcssa, %found_match.if.end181_crit_edge ], [ %m.0422, %if.then114.if.end181_crit_edge ]
  %best_pl.11384 = phi i32 [ %best_pl.0.lcssa456, %do.body165.if.end181_crit_edge ], [ %best_pl.0.lcssa456, %do.end172 ], [ %best_pl.1.lcssa, %found_match.if.end181_crit_edge ], [ %pl.0442, %if.then114.if.end181_crit_edge ]
  %78 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %best_m.11385, ptr %pll, align 4
  %n183 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %79 = ptrtoint ptr %n183 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %best_n.11386, ptr %n183, align 4
  %pl184 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %80 = ptrtoint ptr %pl184 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %best_pl.11384, ptr %pl184, align 4
  %81 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %parent_rate, align 4
  %pl_to_div.i = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 5
  %83 = ptrtoint ptr %pl_to_div.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pl_to_div.i, align 4
  %call.i = tail call i32 %84(i32 noundef %best_pl.11384) #8
  %85 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp189 = icmp ugt i32 %86, 3
  br i1 %cmp189, label %do.end193, label %if.end181.cleanup208_crit_edge

if.end181.cleanup208_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup208

do.end193:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %82, %best_n.11386
  %mul1.i = mul i32 %call.i, %best_m.11385
  %div.i = udiv i32 %mul.i, %mul1.i
  %device194 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %device194 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device194, align 4
  %dev195 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev195, align 8
  %name196 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %div198 = udiv i32 %div.i, 2000
  %91 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pll, align 4
  %93 = ptrtoint ptr %n183 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n183, align 4
  %95 = ptrtoint ptr %pl184 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pl184, align 4
  %97 = ptrtoint ptr %pl_to_div.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pl_to_div.i, align 4
  %call204 = tail call i32 %98(i32 noundef %96) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.9, ptr noundef %name196, i32 noundef %div198, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %call204) #11
  br label %cleanup208

cleanup208:                                       ; preds = %do.end193, %if.end181.cleanup208_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %2 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %src, label %do.body [
    i32 0, label %sw.bb
    i32 19, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1273860
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %and.i = and i32 %7, 255
  %shr2.i = lshr i32 %7, 8
  %and3.i = and i32 %shr2.i, 255
  %shr4.i = lshr i32 %7, 16
  %and5.i = and i32 %shr4.i, 63
  %parent_rate.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 3
  %8 = ptrtoint ptr %parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate.i, align 4
  %mul.i = mul i32 %and3.i, %9
  %pl_to_div.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 5
  %10 = ptrtoint ptr %pl_to_div.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pl_to_div.i, align 4
  %call.i = tail call i32 %11(i32 noundef %and5.i) #8
  %mul1.i = mul i32 %call.i, %and.i
  %div.i = udiv i32 %mul.i, %mul1.i
  %div = udiv i32 %div.i, 2000
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %src) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.bb4, %sw.bb
  %retval.0 = phi i32 [ %div, %sw.bb4 ], [ %4, %sw.bb ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 19
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 1000
  %pll = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 2
  %call = tail call i32 @gk20a_pllg_calc_mnp(ptr noundef %base, i32 noundef %mul, ptr noundef %pll)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_prog(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  %cur_pll.i = alloca %struct.gk20a_pll, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur_pll.i) #8
  %0 = getelementptr inbounds %struct.gk20a_pll, ptr %cur_pll.i, i32 0, i32 1
  %device1.i.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 1273856
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end12.i_crit_edge, label %if.then.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i.i, align 4
  %pri.i37.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i37.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i37.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %9, i32 1273860
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %and.i39.i = and i32 %10, 255
  %11 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and.i39.i)
  %cmp.i = icmp eq i32 %12, %and.i39.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %shr4.i.i = lshr i32 %10, 16
  %and5.i.i = and i32 %shr4.i.i, 63
  %pl.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and5.i.i)
  %cmp3.i = icmp eq i32 %14, %and5.i.i
  br i1 %cmp3.i, label %land.lhs.true.i.gk20a_pllg_program_mnp_slide.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.gk20a_pllg_program_mnp_slide.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gk20a_pllg_program_mnp_slide.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %params.i.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 1
  %15 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %mul.i.i = mul i32 %18, %and.i39.i
  %parent_rate.i.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 3
  %19 = ptrtoint ptr %parent_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %parent_rate.i.i, align 4
  %div.i.i = udiv i32 %20, 1000
  %add.i.i = add i32 %mul.i.i, -1
  %sub.i.i = add i32 %add.i.i, %div.i.i
  %div3.i.i = udiv i32 %sub.i.i, %div.i.i
  %call9.i = tail call fastcc i32 @gk20a_pllg_slide(ptr noundef %base, i32 noundef %div3.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.end.i.gk20a_pllg_program_mnp_slide.exit.thread_crit_edge

if.end.i.gk20a_pllg_program_mnp_slide.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gk20a_pllg_program_mnp_slide.exit.thread

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i.if.end12.i_crit_edge, %entry.if.end12.i_crit_edge
  %21 = call ptr @memcpy(ptr %cur_pll.i, ptr %pll, i32 12)
  %22 = ptrtoint ptr %cur_pll.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_pll.i, align 4
  %params.i40.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 1
  %24 = ptrtoint ptr %params.i40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params.i40.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %mul.i41.i = mul i32 %27, %23
  %parent_rate.i42.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 3
  %28 = ptrtoint ptr %parent_rate.i42.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parent_rate.i42.i, align 4
  %div.i43.i = udiv i32 %29, 1000
  %add.i44.i = add i32 %mul.i41.i, -1
  %sub.i45.i = add i32 %add.i44.i, %div.i43.i
  %div3.i46.i = udiv i32 %sub.i45.i, %div.i43.i
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div3.i46.i, ptr %0, align 4
  %call15.i = call fastcc i32 @gk20a_pllg_program_mnp(ptr noundef %base, ptr noundef nonnull %cur_pll.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end12.i.gk20a_pllg_program_mnp_slide.exit_crit_edge, label %if.end12.i.gk20a_pllg_program_mnp_slide.exit.thread_crit_edge

if.end12.i.gk20a_pllg_program_mnp_slide.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gk20a_pllg_program_mnp_slide.exit.thread

if.end12.i.gk20a_pllg_program_mnp_slide.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gk20a_pllg_program_mnp_slide.exit

gk20a_pllg_program_mnp_slide.exit.thread:         ; preds = %if.end12.i.gk20a_pllg_program_mnp_slide.exit.thread_crit_edge, %if.end.i.gk20a_pllg_program_mnp_slide.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur_pll.i) #8
  br label %if.then

gk20a_pllg_program_mnp_slide.exit:                ; preds = %if.end12.i.gk20a_pllg_program_mnp_slide.exit_crit_edge, %land.lhs.true.i.gk20a_pllg_program_mnp_slide.exit_crit_edge
  %n19.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %n19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n19.i, align 4
  %call20.i = tail call fastcc i32 @gk20a_pllg_slide(ptr noundef %base, i32 noundef %32) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur_pll.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not = icmp eq i32 %call20.i, 0
  br i1 %tobool.not, label %gk20a_pllg_program_mnp_slide.exit.if.end_crit_edge, label %gk20a_pllg_program_mnp_slide.exit.if.then_crit_edge

gk20a_pllg_program_mnp_slide.exit.if.then_crit_edge: ; preds = %gk20a_pllg_program_mnp_slide.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

gk20a_pllg_program_mnp_slide.exit.if.end_crit_edge: ; preds = %gk20a_pllg_program_mnp_slide.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %gk20a_pllg_program_mnp_slide.exit.if.then_crit_edge, %gk20a_pllg_program_mnp_slide.exit.thread
  %call2 = tail call fastcc i32 @gk20a_pllg_program_mnp(ptr noundef %base, ptr noundef %pll)
  br label %if.end

if.end:                                           ; preds = %if.then, %gk20a_pllg_program_mnp_slide.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %gk20a_pllg_program_mnp_slide.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gk20a_pllg_program_mnp(ptr nocapture noundef readonly %clk, ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  %_wait.i = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1273860
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %5 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1274448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %and = and i32 %7, -16129
  %or = or i32 %and, 512
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 1274448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #8, !srcloc !61
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 1274448
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %and17 = and i32 %12, -16129
  %or18 = or i32 %and17, 512
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr20 = getelementptr i8, ptr %14, i32 1274448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %or18) #8, !srcloc !61
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 1274448
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #8
  %19 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device2, align 4
  %pri.i91 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %22, i32 1274112
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %and.i93 = and i32 %23, -2
  %24 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i91, align 4
  %add.ptr3.i = getelementptr i8, ptr %25, i32 1274112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and.i93) #8, !srcloc !61
  %26 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i91, align 4
  %add.ptr10.i = getelementptr i8, ptr %27, i32 1273856
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %and16.i = and i32 %28, -2
  %29 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i91, align 4
  %add.ptr19.i = getelementptr i8, ptr %30, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %and16.i) #8, !srcloc !61
  %31 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i91, align 4
  %add.ptr23.i = getelementptr i8, ptr %32, i32 1273856
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %34 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device2, align 4
  %36 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pll, align 4
  %and.i95 = and i32 %37, 255
  %n.i96 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %38 = ptrtoint ptr %n.i96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n.i96, align 4
  %and2.i = shl i32 %39, 8
  %shl3.i = and i32 %and2.i, 65280
  %or.i = or i32 %shl3.i, %and.i95
  %pl.i97 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %40 = ptrtoint ptr %pl.i97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pl.i97, align 4
  %and4.i = shl i32 %41, 16
  %shl5.i = and i32 %and4.i, 4128768
  %or6.i = or i32 %or.i, %shl5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %pri.i98 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %42 = ptrtoint ptr %pri.i98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %43, i32 1273860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %or6.i) #8, !srcloc !61
  %44 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device2, align 4
  %pri.i101 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i101, align 4
  %add.ptr.i102 = getelementptr i8, ptr %47, i32 1273856
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %or.i103 = or i32 %48, 1
  %49 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri.i101, align 4
  %add.ptr3.i104 = getelementptr i8, ptr %50, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i104, i32 %or.i103) #8, !srcloc !61
  %51 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri.i101, align 4
  %add.ptr7.i = getelementptr i8, ptr %52, i32 1273856
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  %54 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri.i101, align 4
  %add.ptr12.i = getelementptr i8, ptr %55, i32 1273856
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  %and15.i = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and16.i105 = and i32 %56, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri.i101, align 4
  %add.ptr21.i = getelementptr i8, ptr %58, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %and16.i105) #8, !srcloc !61
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #8
  %59 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %45, i64 noundef 300000, ptr noundef nonnull %_wait.i) #8
  br label %do.body22.i

do.body22.i:                                      ; preds = %do.cond31.i.do.body22.i_crit_edge, %if.end.i
  %60 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri.i101, align 4
  %add.ptr25.i = getelementptr i8, ptr %61, i32 1273856
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %and28.i = and i32 %62, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %cmp.not.i = icmp eq i32 %and28.i, 0
  br i1 %cmp.not.i, label %do.cond31.i, label %if.end

do.cond31.i:                                      ; preds = %do.body22.i
  %call32.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i) #8
  %cmp33.i = icmp sgt i64 %call32.i, -1
  br i1 %cmp33.i, label %do.cond31.i.do.body22.i_crit_edge, label %do.end45.i

do.cond31.i.do.body22.i_crit_edge:                ; preds = %do.cond31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22.i

do.end45.i:                                       ; preds = %do.cond31.i
  %63 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_wait.i, align 8
  %device47.i = getelementptr inbounds %struct.nvkm_timer, ptr %64, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %device47.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device47.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 8
  %call48.i = call ptr @dev_driver_string(ptr noundef %68) #8
  %69 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_wait.i, align 8
  %device51.i = getelementptr inbounds %struct.nvkm_timer, ptr %70, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %device51.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device51.i, align 4
  %dev52.i = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev52.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end45.i.gk20a_pllg_enable.exit_crit_edge

do.end45.i.gk20a_pllg_enable.exit_crit_edge:      ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gk20a_pllg_enable.exit

if.end.i.i:                                       ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 4
  br label %gk20a_pllg_enable.exit

gk20a_pllg_enable.exit:                           ; preds = %if.end.i.i, %do.end45.i.gk20a_pllg_enable.exit_crit_edge
  %retval.0.i.i = phi ptr [ %78, %if.end.i.i ], [ %76, %do.end45.i.gk20a_pllg_enable.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 273, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call48.i, ptr noundef %retval.0.i.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #8
  %79 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i101, align 4
  %add.ptr77.i = getelementptr i8, ptr %80, i32 1274112
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %or84.i = or i32 %81, 1
  %82 = ptrtoint ptr %pri.i101 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri.i101, align 4
  %add.ptr86.i = getelementptr i8, ptr %83, i32 1274112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 %or84.i) #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 429496) #8
  %85 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri.i, align 4
  %add.ptr33 = getelementptr i8, ptr %86, i32 1274448
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @arm_heavy_mb() #8
  %and39 = and i32 %87, -16129
  %88 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i, align 4
  %add.ptr42 = getelementptr i8, ptr %89, i32 1274448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %and39) #8, !srcloc !61
  %90 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri.i, align 4
  %add.ptr49 = getelementptr i8, ptr %91, i32 1274448
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @arm_heavy_mb() #8
  %and55 = and i32 %92, -16129
  %93 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri.i, align 4
  %add.ptr58 = getelementptr i8, ptr %94, i32 1274448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %and55) #8, !srcloc !61
  %95 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i, align 4
  %add.ptr62 = getelementptr i8, ptr %96, i32 1274448
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gk20a_pllg_enable.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %gk20a_pllg_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gk20a_clk_tidy(ptr nocapture %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_setup_slide(ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %parent_rate = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 3
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %do.body [
    i32 12000000, label %entry.sw.epilog_crit_edge
    i32 12800000, label %entry.sw.epilog_crit_edge48
    i32 13000000, label %entry.sw.epilog_crit_edge49
    i32 19200000, label %sw.bb3
    i32 38400000, label %sw.bb4
  ]

entry.sw.epilog_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %div = udiv i32 %3, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %div) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge48, %entry.sw.epilog_crit_edge49
  %step_b.0 = phi i32 [ 327680, %sw.bb4 ], [ 524288, %sw.bb3 ], [ 720896, %entry.sw.epilog_crit_edge ], [ 720896, %entry.sw.epilog_crit_edge48 ], [ 720896, %entry.sw.epilog_crit_edge49 ]
  %step_a.0 = phi i32 [ 67108864, %sw.bb4 ], [ 301989888, %sw.bb3 ], [ 721420288, %entry.sw.epilog_crit_edge ], [ 721420288, %entry.sw.epilog_crit_edge48 ], [ 721420288, %entry.sw.epilog_crit_edge49 ]
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1273868
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %and = and i32 %11, 16777215
  %or = or i32 %and, %step_a.0
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 1273868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %or) #8, !srcloc !61
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 1273880
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %and27 = and i32 %16, -16711681
  %or29 = or i32 %and27, %step_b.0
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %18, i32 1273880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %or29) #8, !srcloc !61
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk20a_clk_fini(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1273856
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %pri.i19 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %pri.i19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %8, i32 1273860
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %and.i21 = and i32 %9, 255
  %params.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 1
  %10 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %mul.i = mul i32 %13, %and.i21
  %parent_rate.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 3
  %14 = ptrtoint ptr %parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parent_rate.i, align 4
  %div.i = udiv i32 %15, 1000
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %div.i
  %div3.i = udiv i32 %sub.i, %div.i
  %call3 = tail call fastcc i32 @gk20a_pllg_slide(ptr noundef %base, i32 noundef %div3.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1, align 4
  %pri.i23 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %19, i32 1274112
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %and.i25 = and i32 %20, -2
  %21 = ptrtoint ptr %pri.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i23, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 1274112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and.i25) #8, !srcloc !61
  %23 = ptrtoint ptr %pri.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i23, align 4
  %add.ptr10.i = getelementptr i8, ptr %24, i32 1273856
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %and16.i = and i32 %25, -2
  %26 = ptrtoint ptr %pri.i23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i23, align 4
  %add.ptr19.i = getelementptr i8, ptr %27, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %and16.i) #8, !srcloc !61
  %28 = ptrtoint ptr %pri.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i23, align 4
  %add.ptr23.i = getelementptr i8, ptr %29, i32 1273856
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %31 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i, align 4
  %add.ptr4 = getelementptr i8, ptr %32, i32 1273856
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %and = and i32 %33, -4
  %or = or i32 %and, 1
  %34 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri.i, align 4
  %add.ptr8 = getelementptr i8, ptr %35, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #8, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gk20a_pllg_slide(ptr nocapture noundef readonly %clk, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1273860
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %shr2.i = lshr i32 %4, 8
  %and3.i = and i32 %shr2.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %n)
  %cmp = icmp eq i32 %and3.i, %n
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5.i = and i32 %4, 4128768
  %and.i = and i32 %4, 255
  %5 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1273884
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %or = or i32 %7, 4194304
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 1273884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %11 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device2, align 4
  %and2.i = shl i32 %n, 8
  %shl3.i = and i32 %and2.i, 65280
  %or.i = or i32 %and.i, %shl3.i
  %or6.i = or i32 %or.i, %and5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %pri.i121 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i121 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %14, i32 1273860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %or6.i) #8, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %16 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri.i, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 1273884
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %or20 = or i32 %18, -2147483648
  %19 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i, align 4
  %add.ptr22 = getelementptr i8, ptr %20, i32 1273884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %or20) #8, !srcloc !61
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #8
  %21 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 500000, ptr noundef nonnull %_wait) #8
  br label %do.body24

do.body24:                                        ; preds = %do.cond34.do.body24_crit_edge, %if.end
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 1255584
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %and30 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31.not = icmp eq i32 %and30, 0
  br i1 %cmp31.not, label %do.cond34, label %if.end69.thread

if.end69.thread:                                  ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #8
  br label %42

do.cond34:                                        ; preds = %do.body24
  %call35 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #8
  %cmp36 = icmp sgt i64 %call35, -1
  br i1 %cmp36, label %do.cond34.do.body24_crit_edge, label %do.end47

do.cond34.do.body24_crit_edge:                    ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.end47:                                         ; preds = %do.cond34
  %25 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_wait, align 8
  %device49 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %device49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device49, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %call50 = call ptr @dev_driver_string(ptr noundef %30) #8
  %31 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_wait, align 8
  %device53 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device53, align 4
  %dev54 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev54, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end47._crit_edge

do.end47._crit_edge:                              ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %41

if.end.i:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  br label %41

41:                                               ; preds = %if.end.i, %do.end47._crit_edge
  %retval.0.i = phi ptr [ %40, %if.end.i ], [ %38, %do.end47._crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call50, ptr noundef %retval.0.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #8
  br label %42

42:                                               ; preds = %41, %if.end69.thread
  %43 = phi i32 [ -110, %41 ], [ 0, %if.end69.thread ]
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add.ptr79 = getelementptr i8, ptr %45, i32 1273884
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %and85 = and i32 %46, 2143289343
  %47 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i, align 4
  %add.ptr88 = getelementptr i8, ptr %48, i32 1273884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %and85) #8, !srcloc !61
  %49 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri.i, align 4
  %add.ptr92 = getelementptr i8, ptr %50, i32 1273884
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %42 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %func, ptr noundef %params, ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %tegra = getelementptr inbounds %struct.nvkm_device_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tegra, align 4
  %call = tail call ptr %3(ptr noundef %device) #8
  %nr_pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %func, i32 0, i32 7
  %4 = ptrtoint ptr %nr_pstates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pstates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp36 = icmp sgt i32 %5, 0
  br i1 %cmp36, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %func, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %pstates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pstates, align 4
  %list = getelementptr %struct.nvkm_pstate, ptr %7, i32 %i.037, i32 1
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.nvkm_pstate, ptr %7, i32 %i.037, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %add = add nuw nsw i32 %i.037, 1
  %conv = trunc i32 %add to i8
  %10 = load ptr, ptr %pstates, align 4
  %pstate = getelementptr %struct.nvkm_pstate, ptr %10, i32 %i.037, i32 3
  %11 = ptrtoint ptr %pstate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %pstate, align 4
  %12 = ptrtoint ptr %nr_pstates to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pstates, align 4
  %cmp = icmp slt i32 %add, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %params4 = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 1
  %14 = ptrtoint ptr %params4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %params, ptr %params4, align 4
  %clk5 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk5, align 4
  %call6 = tail call i32 @clk_get_rate(ptr noundef %16) #8
  %parent_rate = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 3
  %17 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6, ptr %parent_rate, align 4
  %call7 = tail call i32 @nvkm_clk_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.body, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %for.end
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp9 = icmp ugt i32 %19, 3
  br i1 %cmp9, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device13 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device13, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %parent_rate, align 4
  %div = udiv i32 %25, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %div) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 488) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pclk, align 4
  %call1 = tail call i32 @gk20a_clk_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull @gk20a_clk, ptr noundef nonnull @gk20a_pllg_params, ptr noundef nonnull %call7.i.i)
  %pl_to_div = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %pl_to_div to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pl_to_div, ptr %pl_to_div, align 4
  %div_to_pl = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %div_to_pl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @div_to_pl, ptr %div_to_pl, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl_to_div(i32 noundef %pl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %pl)
  %cmp = icmp ugt i32 %pl, 14
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [15 x i8], ptr @_pl_to_div, i32 0, i32 %pl
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @div_to_pl(i32 noundef %div) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp1.not = icmp ugt i32 %div, 1
  br i1 %cmp1.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp1.not.1.not = icmp eq i32 %div, 2
  br i1 %cmp1.not.1.not, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp1.not.2 = icmp ugt i32 %div, 3
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div)
  %cmp1.not.3.not = icmp eq i32 %div, 4
  br i1 %cmp1.not.3.not, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div)
  %cmp1.not.4 = icmp ugt i32 %div, 5
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div)
  %cmp1.not.5.not = icmp eq i32 %div, 6
  br i1 %cmp1.not.5.not, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp1.not.6 = icmp ugt i32 %div, 8
  br i1 %cmp1.not.6, label %for.inc.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div)
  %cmp1.not.7 = icmp ugt i32 %div, 10
  br i1 %cmp1.not.7, label %for.inc.7, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %div)
  %cmp1.not.8 = icmp ugt i32 %div, 12
  br i1 %cmp1.not.8, label %for.inc.8, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div)
  %cmp1.not.9 = icmp ugt i32 %div, 16
  br i1 %cmp1.not.9, label %for.inc.11, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %div)
  %cmp1.not.12 = icmp ugt i32 %div, 20
  br i1 %cmp1.not.12, label %for.inc.12, label %for.inc.11.cleanup_crit_edge

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %div)
  %cmp1.not.13 = icmp ugt i32 %div, 24
  %spec.select = select i1 %cmp1.not.13, i32 14, i32 13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.12, %for.inc.11.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ 7, %for.inc.6.cleanup_crit_edge ], [ 8, %for.inc.7.cleanup_crit_edge ], [ 9, %for.inc.8.cleanup_crit_edge ], [ 12, %for.inc.11.cleanup_crit_edge ], [ %spec.select, %for.inc.12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_clk_init(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 1273856
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %and = and i32 %4, -3
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %and) #8, !srcloc !61
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 1273856
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #8
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1274448
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %and25 = and i32 %13, 2147467456
  %or26 = or i32 %and25, -2147483588
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 1274448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %or26) #8, !srcloc !61
  %call30 = tail call i32 @gk20a_clk_setup_slide(ptr noundef %base)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %calc = getelementptr inbounds %struct.nvkm_clk_func, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %calc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %calc, align 4
  %pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %pstates to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pstates, align 4
  %base32 = getelementptr inbounds %struct.nvkm_pstate, ptr %21, i32 0, i32 2
  %call33 = tail call i32 %19(ptr noundef %base, ptr noundef %base32) #8
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %prog = getelementptr inbounds %struct.nvkm_clk_func, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prog, align 4
  %call36 = tail call i32 %25(ptr noundef %base) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end.cleanup_crit_edge, label %do.body39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body39:                                        ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %do.body39.cleanup_crit_edge, label %do.end43

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end43:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.body39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %entry.cleanup_crit_edge ], [ %call36, %do.end43 ], [ %call36, %do.body39.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 135, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gk20a_pllg_calc_mnp._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gk20a_pllg_calc_mnp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 193, i32 3}
!10 = !{ptr @gk20a_pllg_calc_mnp._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gk20a_pllg_calc_mnp._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 203, i32 2}
!14 = !{ptr @gk20a_pllg_calc_mnp._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gk20a_pllg_calc_mnp._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 474, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gk20a_clk_read._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @gk20a_clk_read._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 529, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gk20a_clk_setup_slide._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @gk20a_clk_setup_slide._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 634, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gk20a_clk_ctor._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @gk20a_clk_ctor._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 272, i32 6}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 607, i32 30}
!36 = !{ptr @gk20a_clk, !37, !"gk20a_clk", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 596, i32 1}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 588, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gk20a_clk_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @gk20a_clk_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @gk20a_pstates, !44, !"gk20a_pstates", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 366, i32 1}
!45 = !{ptr @gk20a_pllg_params, !46, !"gk20a_pllg_params", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 56, i32 43}
!47 = !{ptr @_pl_to_div, !48, !"_pl_to_div", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c", i32 31, i32 17}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 5400115}
!59 = !{i64 2156257545}
!60 = !{i64 2156258068}
!61 = !{i64 5399697}
!62 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!63 = !{i64 2156244520}
!64 = !{i64 2156301918}
!65 = !{i64 2156302346}
!66 = !{i64 2156303394}
!67 = !{i64 2156303822}
!68 = !{i64 2156304403}
!69 = !{i64 2156298573}
!70 = !{i64 2156298991}
!71 = !{i64 2156300008}
!72 = !{i64 2156300426}
!73 = !{i64 2156300986}
!74 = !{i64 2156290634}
!75 = !{i64 2156291104}
!76 = !{i64 2156291690}
!77 = !{i64 2156292139}
!78 = !{i64 2156292686}
!79 = !{i64 2156295064}
!80 = !{i64 2156297057}
!81 = !{i64 2156297527}
!82 = !{i64 2156306407}
!83 = !{i64 2156306835}
!84 = !{i64 2156307883}
!85 = !{i64 2156308311}
!86 = !{i64 2156308892}
!87 = !{i64 2156318167}
!88 = !{i64 2156318573}
!89 = !{i64 2156319508}
!90 = !{i64 2156319914}
!91 = !{i64 2156326221}
!92 = !{i64 2156326639}
!93 = !{i64 2156280998}
!94 = !{i64 2156281472}
!95 = !{i64 2156283699}
!96 = !{i64 2156284173}
!97 = !{i64 2156286565}
!98 = !{i64 2156288534}
!99 = !{i64 2156289016}
!100 = !{i64 2156289620}
!101 = !{i64 2156328891}
!102 = !{i64 2156329309}
!103 = !{i64 2156329869}
!104 = !{i64 2156331841}
!105 = !{i64 2156332495}
