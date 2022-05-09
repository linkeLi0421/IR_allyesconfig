; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk20a_clk_pllg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gm20b_clk_dvfs_params = type { i32, i32, i32 }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.143, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.143 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.gk20a_clk = type { %struct.nvkm_clk, ptr, %struct.gk20a_pll, i32, ptr, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.gk20a_pll = type { i32, i32, i32 }
%struct.gm20b_clk = type { %struct.gk20a_clk, %struct.gm20b_clk_dvfs, i32, %struct.gk20a_pll, %struct.gm20b_clk_dvfs, i32, ptr, i32, i32, i32 }
%struct.gm20b_clk_dvfs = type { i32, i32, i32 }
%struct.nvkm_clk_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.nvkm_domain] }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.105], i32, i32, i8, i8, i8, i32 }
%struct.anon.105 = type { i32, i8 }
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
%struct.gm20b_pll = type { %struct.gk20a_pll, i32 }

@gm20b_pllg_params = internal constant { %struct.gk20a_clk_pllg_params, [56 x i8] } { %struct.gk20a_clk_pllg_params { i32 1300000, i32 2600000, i32 12000, i32 38400, i32 1, i32 255, i32 8, i32 255, i32 1, i32 31 }, [56 x i8] zeroinitializer }, align 32
@gm20b_clk_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1048, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: cannot use NAPLL, using legacy clock...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gm20b_clk_new\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm20b_clk_new._entry_ptr = internal global ptr @gm20b_clk_new._entry, section ".printk_index", align 4
@gm20b_dvfs_params = internal constant { %struct.gm20b_clk_dvfs_params, [20 x i8] } { %struct.gm20b_clk_dvfs_params { i32 -165230, i32 214007, i32 56 }, [20 x i8] zeroinitializer }, align 32
@gm20b_clk_new._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1064, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: no fused calibration parameters\0A\00", [59 x i8] zeroinitializer }, align 32
@gm20b_clk_new._entry_ptr.7 = internal global ptr @gm20b_clk_new._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@gm20b_clk_speedo0 = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] } { ptr @gm20b_clk_init, ptr @gk20a_clk_fini, ptr @gk20a_clk_read, ptr @gk20a_clk_calc, ptr @gk20a_clk_prog, ptr @gk20a_clk_tidy, ptr @gm20b_pstates, i32 12, [3 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 -1, i8 0, ptr @.str.8, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gm20b_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 868, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cannot initialize clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gm20b_clk_init\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gm20b_clk_init._entry_ptr = internal global ptr @gm20b_clk_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gm20b_clk_init_dvfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 782, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: GPCPLL calibration timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gm20b_clk_init_dvfs\00", [44 x i8] zeroinitializer }, align 32
@gm20b_clk_init_dvfs._entry_ptr = internal global ptr @gm20b_clk_init_dvfs._entry, section ".printk_index", align 4
@gm20b_clk_init_dvfs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 794, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: calibrated DVFS parameters: offs %d, slope %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gm20b_clk_init_dvfs._entry_ptr.19 = internal global ptr @gm20b_clk_init_dvfs._entry.16, section ".printk_index", align 4
@gm20b_dvfs_calc_det_coeff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 207, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: dfs_ext_cal overflow!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gm20b_dvfs_calc_det_coeff\00", [38 x i8] zeroinitializer }, align 32
@gm20b_dvfs_calc_det_coeff._entry_ptr = internal global ptr @gm20b_dvfs_calc_det_coeff._entry, section ".printk_index", align 4
@gm20b_dvfs_calc_det_coeff._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 213, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: %s uv: %d coeff: %x, ext_cal: %d, det_max: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@gm20b_dvfs_calc_det_coeff._entry_ptr.24 = internal global ptr @gm20b_dvfs_calc_det_coeff._entry.22, section ".printk_index", align 4
@gm20b_pstates = internal global { [13 x { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 }], [512 x i8] } { [13 x { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 }] [{ %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 0, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76800], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 1, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 153600], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 2, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 230400], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 3, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 307200], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 4, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 384000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 5, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 460800], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 6, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 537600], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 7, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 614400], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 8, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 691200], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 9, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 768000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 10, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 844800], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 11, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 921600], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 12, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 998400], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }], [512 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gm20b_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] } { ptr @gm20b_clk_init, ptr @gm20b_clk_fini, ptr @gk20a_clk_read, ptr @gm20b_clk_calc, ptr @gm20b_clk_prog, ptr @gk20a_clk_tidy, ptr @gm20b_pstates, i32 13, [3 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 -1, i8 0, ptr @.str.8, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@gm20b_dvfs_calc_ndiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 244, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ndiv <= 0 - setting to 1...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gm20b_dvfs_calc_ndiv\00", [43 x i8] zeroinitializer }, align 32
@gm20b_dvfs_calc_ndiv._entry_ptr = internal global ptr @gm20b_dvfs_calc_ndiv._entry, section ".printk_index", align 4
@gm20b_dvfs_calc_ndiv._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 248, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ndiv > max_n - setting to max_n...\0A\00", [56 x i8] zeroinitializer }, align 32
@gm20b_dvfs_calc_ndiv._entry_ptr.31 = internal global ptr @gm20b_dvfs_calc_ndiv._entry.29, section ".printk_index", align 4
@gm20b_dvfs_calc_ndiv._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 262, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: %s n_eff: %d, n_int: %d, sdm_din: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@gm20b_dvfs_calc_ndiv._entry_ptr.34 = internal global ptr @gm20b_dvfs_calc_ndiv._entry.32, section ".printk_index", align 4
@gm20b_clk_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 479, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s uv: %d uv\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gm20b_clk_calc\00", [17 x i8] zeroinitializer }, align 32
@gm20b_clk_calc._entry_ptr = internal global ptr @gm20b_clk_calc._entry, section ".printk_index", align 4
@gm20b_clk_init_fused_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 971, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: fused calibration data: slope %d, offs %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gm20b_clk_init_fused_params\00", [36 x i8] zeroinitializer }, align 32
@gm20b_clk_init_fused_params._entry_ptr = internal global ptr @gm20b_clk_init_fused_params._entry, section ".printk_index", align 4
@gm20b_clk_init_safe_fmax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1002, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to evaluate safe fmax\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gm20b_clk_init_safe_fmax\00", [39 x i8] zeroinitializer }, align 32
@gm20b_clk_init_safe_fmax._entry_ptr = internal global ptr @gm20b_clk_init_safe_fmax._entry, section ".printk_index", align 4
@gm20b_clk_init_safe_fmax._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1008, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: safe fmax @ vmin = %u Khz\0A\00", [33 x i8] zeroinitializer }, align 32
@gm20b_clk_init_safe_fmax._entry_ptr.43 = internal global ptr @gm20b_clk_init_safe_fmax._entry.41, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"gm20b_pllg_params\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 151, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1048, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"gm20b_dvfs_params\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 98, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1064, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 888, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"gm20b_clk_speedo0\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 876, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 868, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 778, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 782, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 793, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 207, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 211, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"gm20b_pstates\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 638, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"gm20b_clk\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 894, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 244, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 248, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 261, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 479, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 970, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1002, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1008, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @gm20b_clk_calc._entry, ptr @gm20b_clk_calc._entry_ptr, ptr @gm20b_clk_init._entry, ptr @gm20b_clk_init._entry_ptr, ptr @gm20b_clk_init_dvfs._entry, ptr @gm20b_clk_init_dvfs._entry.16, ptr @gm20b_clk_init_dvfs._entry_ptr, ptr @gm20b_clk_init_dvfs._entry_ptr.19, ptr @gm20b_clk_init_fused_params._entry, ptr @gm20b_clk_init_fused_params._entry_ptr, ptr @gm20b_clk_init_safe_fmax._entry, ptr @gm20b_clk_init_safe_fmax._entry.41, ptr @gm20b_clk_init_safe_fmax._entry_ptr, ptr @gm20b_clk_init_safe_fmax._entry_ptr.43, ptr @gm20b_clk_new._entry, ptr @gm20b_clk_new._entry.5, ptr @gm20b_clk_new._entry_ptr, ptr @gm20b_clk_new._entry_ptr.7, ptr @gm20b_dvfs_calc_det_coeff._entry, ptr @gm20b_dvfs_calc_det_coeff._entry.22, ptr @gm20b_dvfs_calc_det_coeff._entry_ptr, ptr @gm20b_dvfs_calc_det_coeff._entry_ptr.24, ptr @gm20b_dvfs_calc_ndiv._entry, ptr @gm20b_dvfs_calc_ndiv._entry.29, ptr @gm20b_dvfs_calc_ndiv._entry.32, ptr @gm20b_dvfs_calc_ndiv._entry_ptr, ptr @gm20b_dvfs_calc_ndiv._entry_ptr.31, ptr @gm20b_dvfs_calc_ndiv._entry_ptr.34, ptr @gm20b_pllg_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gm20b_dvfs_params, ptr @.str.6, ptr @.str.8, ptr @gm20b_clk_speedo0, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @gm20b_pstates, ptr @gm20b_clk, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pllg_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_dvfs_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_new._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_speedo0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_init_dvfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_init_dvfs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_dvfs_calc_det_coeff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_dvfs_calc_det_coeff._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_pstates to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_dvfs_calc_ndiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_dvfs_calc_ndiv._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_dvfs_calc_ndiv._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_init_fused_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_init_safe_fmax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_clk_init_safe_fmax._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm20b_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %tegra = getelementptr inbounds %struct.nvkm_device_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tegra, align 4
  %call = tail call ptr %3(ptr noundef %device) #7
  %gpu_speedo_id = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpu_speedo_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 488) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %pclk, align 4
  %call1.i = tail call i32 @gk20a_clk_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull @gm20b_clk_speedo0, ptr noundef nonnull @gm20b_pllg_params, ptr noundef nonnull %call7.i.i.i) #7
  %pl_to_div.i = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %pl_to_div.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pl_to_div, ptr %pl_to_div.i, align 4
  %div_to_pl.i = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %div_to_pl.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @div_to_pl, ptr %div_to_pl.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 588) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %pclk, align 4
  %add.ptr = getelementptr %struct.gm20b_clk, ptr %call7.i.i, i32 1
  %12 = call ptr @memcpy(ptr %add.ptr, ptr @gm20b_pllg_params, i32 40)
  %call10 = tail call i32 @gk20a_clk_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull @gm20b_clk, ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %max_u = getelementptr %struct.gm20b_clk, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %max_u to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_u, align 8
  %parent_rate = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parent_rate, align 4
  %div = udiv i32 %16, 1000
  %add = add i32 %14, -1
  %sub = add i32 %add, %div
  %div18 = udiv i32 %sub, %div
  %min_m = getelementptr %struct.gm20b_clk, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %min_m to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div18, ptr %min_m, align 4
  %max_m = getelementptr %struct.gm20b_clk, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %max_m to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div18, ptr %max_m, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sub)
  %cmp20 = icmp ugt i32 %div, %sub
  br i1 %cmp20, label %do.body, label %if.end30

do.body:                                          ; preds = %if.end13
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp22 = icmp ugt i32 %20, 1
  br i1 %cmp22, label %do.end, label %do.body.if.end26_crit_edge

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device25 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device25, align 8
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end, %do.body.if.end26_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i96 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 488) #10
  %tobool.not.i97 = icmp eq ptr %call7.i.i.i96, null
  br i1 %tobool.not.i97, label %if.end26.cleanup_crit_edge, label %if.end.i101

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i101:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i96, ptr %pclk, align 4
  %call1.i98 = tail call i32 @gk20a_clk_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull @gm20b_clk_speedo0, ptr noundef nonnull @gm20b_pllg_params, ptr noundef nonnull %call7.i.i.i96) #7
  %pl_to_div.i99 = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i.i96, i32 0, i32 5
  %27 = ptrtoint ptr %pl_to_div.i99 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pl_to_div, ptr %pl_to_div.i99, align 4
  %div_to_pl.i100 = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i.i96, i32 0, i32 4
  %28 = ptrtoint ptr %div_to_pl.i100 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @div_to_pl, ptr %div_to_pl.i100, align 8
  br label %cleanup

if.end30:                                         ; preds = %if.end13
  %pl_to_div = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %pl_to_div to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pl_to_div, ptr %pl_to_div, align 4
  %div_to_pl = getelementptr inbounds %struct.gk20a_clk, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %div_to_pl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @div_to_pl, ptr %div_to_pl, align 8
  %dvfs_params = getelementptr inbounds %struct.gm20b_clk, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %dvfs_params to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gm20b_dvfs_params, ptr %dvfs_params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val.i, align 4
  %call.i = call i32 @tegra_fuse_readl(i32 noundef 516, ptr noundef nonnull %val.i) #7
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %34)
  %cmp.i = icmp ult i32 %34, 1073741824
  br i1 %cmp.i, label %do.body36, label %if.end.i104

if.end.i104:                                      ; preds = %if.end30
  %shr3.i = lshr i32 %34, 24
  %and4.i = and i32 %shr3.i, 63
  %mul.i = mul nuw nsw i32 %and4.i, 1000
  %shr5.i = lshr i32 %34, 14
  %and6.i = and i32 %shr5.i, 1023
  %add.i = add nuw nsw i32 %mul.i, %and6.i
  %uvdet_slope.i = getelementptr inbounds %struct.gm20b_clk, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %uvdet_slope.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %uvdet_slope.i, align 8
  %shr7.i = lshr i32 %34, 4
  %and8.i = and i32 %shr7.i, 1023
  %mul9.i = mul nuw nsw i32 %and8.i, 1000
  %and11.i = and i32 %34, 15
  %mul12.i = mul nuw nsw i32 %and11.i, 100
  %add13.i = add nuw nsw i32 %mul9.i, %mul12.i
  %uvdet_offs.i = getelementptr inbounds %struct.gm20b_clk, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %uvdet_offs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add13.i, ptr %uvdet_offs.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp14.i = icmp ugt i32 %38, 3
  br i1 %cmp14.i, label %do.end.i, label %if.end.i104.gm20b_clk_init_fused_params.exit.thread_crit_edge

if.end.i104.gm20b_clk_init_fused_params.exit.thread_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %gm20b_clk_init_fused_params.exit.thread

do.end.i:                                         ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i, align 8
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.37, ptr noundef %name.i, i32 noundef %add.i, i32 noundef %add13.i) #11
  br label %gm20b_clk_init_fused_params.exit.thread

gm20b_clk_init_fused_params.exit.thread:          ; preds = %do.end.i, %if.end.i104.gm20b_clk_init_fused_params.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end51

do.body36:                                        ; preds = %if.end30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %debug38 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %debug38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp39 = icmp ugt i32 %44, 1
  br i1 %cmp39, label %do.end43, label %do.body36.if.end51_crit_edge

do.body36.if.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end43:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %device44 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device44, align 8
  %dev45 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev45, align 8
  %name46 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef %name46) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end43, %do.body36.if.end51_crit_edge, %gm20b_clk_init_fused_params.exit.thread
  %device.i106 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %device.i106 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i106, align 8
  %volt3.i = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 40
  %51 = ptrtoint ptr %volt3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %volt3.i, align 4
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i, align 8
  %pstates6.i = getelementptr inbounds %struct.nvkm_clk_func, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %pstates6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pstates6.i, align 4
  %nr_pstates10.i = getelementptr inbounds %struct.nvkm_clk_func, ptr %54, i32 0, i32 7
  %57 = ptrtoint ptr %nr_pstates10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_pstates10.i, align 4
  %vid_nr.i = getelementptr inbounds %struct.nvkm_volt, ptr %52, i32 0, i32 3
  %59 = ptrtoint ptr %vid_nr.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vid_nr.i, align 1
  %conv.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp105.i = icmp ugt i8 %60, 1
  br i1 %cmp105.i, label %for.body.preheader.i, label %if.end51.for.cond24.preheader.i_crit_edge

if.end51.for.cond24.preheader.i_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.preheader.i

for.body.preheader.i:                             ; preds = %if.end51
  %vid.i = getelementptr inbounds %struct.nvkm_volt, ptr %52, i32 0, i32 4
  %61 = ptrtoint ptr %vid.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vid.i, align 4
  br label %for.body.i

for.cond24.preheader.i:                           ; preds = %for.inc.i.for.cond24.preheader.i_crit_edge, %if.end51.for.cond24.preheader.i_crit_edge
  %id.0.lcssa.i = phi i32 [ 0, %if.end51.for.cond24.preheader.i_crit_edge ], [ %id.1.i, %for.inc.i.for.cond24.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp25110.i = icmp sgt i32 %58, 0
  br i1 %cmp25110.i, label %for.cond24.preheader.i.for.body27.i_crit_edge, label %for.cond24.preheader.i.do.body.i_crit_edge

for.cond24.preheader.i.do.body.i_crit_edge:       ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.cond24.preheader.i.for.body27.i_crit_edge:    ; preds = %for.cond24.preheader.i
  br label %for.body27.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0108.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %id.0107.i = phi i32 [ %id.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %vmin.0106.i = phi i32 [ %vmin.1.i, %for.inc.i.for.body.i_crit_edge ], [ %62, %for.body.preheader.i ]
  %arrayidx13.i = getelementptr %struct.nvkm_volt, ptr %52, i32 0, i32 4, i32 %i.0108.i
  %63 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %vmin.0106.i)
  %cmp15.not.i = icmp ugt i32 %64, %vmin.0106.i
  br i1 %cmp15.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %vid22.i = getelementptr %struct.nvkm_volt, ptr %52, i32 0, i32 4, i32 %i.0108.i, i32 1
  %65 = ptrtoint ptr %vid22.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vid22.i, align 4
  %conv23.i = zext i8 %66 to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %vmin.1.i = phi i32 [ %64, %if.then.i ], [ %vmin.0106.i, %for.body.i.for.inc.i_crit_edge ]
  %id.1.i = phi i32 [ %conv23.i, %if.then.i ], [ %id.0107.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0108.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.for.cond24.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.cond24.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.preheader.i

for.body27.i:                                     ; preds = %for.inc40.i.for.body27.i_crit_edge, %for.cond24.preheader.i.for.body27.i_crit_edge
  %i.1112.i = phi i32 [ %inc41.i, %for.inc40.i.for.body27.i_crit_edge ], [ 0, %for.cond24.preheader.i.for.body27.i_crit_edge ]
  %fmax.0111.i = phi i32 [ %fmax.1.i, %for.inc40.i.for.body27.i_crit_edge ], [ 0, %for.cond24.preheader.i.for.body27.i_crit_edge ]
  %voltage.i = getelementptr %struct.nvkm_pstate, ptr %56, i32 %i.1112.i, i32 2, i32 1
  %67 = ptrtoint ptr %voltage.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %voltage.i, align 4
  %conv30.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.lcssa.i, i32 %conv30.i)
  %cmp31.i = icmp eq i32 %id.0.lcssa.i, %conv30.i
  br i1 %cmp31.i, label %if.then33.i, label %for.body27.i.for.inc40.i_crit_edge

for.body27.i.for.inc40.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40.i

if.then33.i:                                      ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx36.i = getelementptr %struct.nvkm_pstate, ptr %56, i32 %i.1112.i, i32 2, i32 2, i32 19
  %69 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx36.i, align 4
  %71 = call i32 @llvm.umax.i32(i32 %fmax.0111.i, i32 %70) #7
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %if.then33.i, %for.body27.i.for.inc40.i_crit_edge
  %fmax.1.i = phi i32 [ %71, %if.then33.i ], [ %fmax.0111.i, %for.body27.i.for.inc40.i_crit_edge ]
  %inc41.i = add nuw nsw i32 %i.1112.i, 1
  %exitcond115.not.i = icmp eq i32 %inc41.i, %58
  br i1 %exitcond115.not.i, label %for.end42.i, label %for.inc40.i.for.body27.i_crit_edge

for.inc40.i.for.body27.i_crit_edge:               ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27.i

for.end42.i:                                      ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fmax.1.i)
  %tobool.not.i107 = icmp eq i32 %fmax.1.i, 0
  br i1 %tobool.not.i107, label %for.end42.i.do.body.i_crit_edge, label %if.end52.i

for.end42.i.do.body.i_crit_edge:                  ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %for.end42.i.do.body.i_crit_edge, %for.cond24.preheader.i.do.body.i_crit_edge
  %debug.i108 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 5
  %72 = ptrtoint ptr %debug.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp44.not.i = icmp eq i32 %73, 0
  br i1 %cmp44.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i111

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i111:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i109 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %74 = ptrtoint ptr %dev.i109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i109, align 8
  %name.i110 = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.39, ptr noundef %name.i110) #11
  br label %cleanup

if.end52.i:                                       ; preds = %for.end42.i
  %mul.i112 = mul i32 %fmax.1.i, 90
  %div.i = udiv i32 %mul.i112, 100
  %safe_fmax_vmin.i = getelementptr inbounds %struct.gm20b_clk, ptr %call7.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %safe_fmax_vmin.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div.i, ptr %safe_fmax_vmin.i, align 8
  %debug55.i = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 5
  %77 = ptrtoint ptr %debug55.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %debug55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp56.i = icmp ugt i32 %78, 3
  br i1 %cmp56.i, label %do.end61.i, label %if.end52.i.cleanup_crit_edge

if.end52.i.cleanup_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end61.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev63.i = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %79 = ptrtoint ptr %dev63.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev63.i, align 8
  %name64.i = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.42, ptr noundef %name64.i, i32 noundef %div.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end61.i, %if.end52.i.cleanup_crit_edge, %do.end.i111, %do.body.i.cleanup_crit_edge, %if.end.i101, %if.end26.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %call10, %if.end4.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ -12, %if.then.cleanup_crit_edge ], [ %call1.i98, %if.end.i101 ], [ -12, %if.end26.cleanup_crit_edge ], [ -22, %do.end.i111 ], [ -22, %do.body.i.cleanup_crit_edge ], [ 0, %do.end61.i ], [ 0, %if.end52.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_ctor(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl_to_div(i32 noundef returned %pl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %pl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @div_to_pl(i32 noundef returned %div) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm20b_clk_init(ptr noundef %base) #0 align 64 {
entry:
  %_wait.i = alloca %struct.nvkm_timer_wait, align 8
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
  %add.ptr4 = getelementptr i8, ptr %3, i32 1273856
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %and = and i32 %4, -3
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 1273856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %and) #7, !srcloc !97
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 1273856
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #7
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1274448
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %and25 = and i32 %13, 2147467456
  %or26 = or i32 %and25, -2147483588
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 1274448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %or26) #7, !srcloc !97
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 1274688
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %and41 = and i32 %18, -2
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr44 = getelementptr i8, ptr %20, i32 1274688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %and41) #7, !srcloc !97
  %call46 = tail call i32 @gk20a_clk_setup_slide(ptr noundef %base) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup124_crit_edge

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %22, i32 137540
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %and52 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or55 = or i32 %23, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr60 = getelementptr i8, ptr %25, i32 137540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %or55) #7, !srcloc !97
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 137544
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %or66 = or i32 %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr71 = getelementptr i8, ptr %30, i32 137544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %or66) #7, !srcloc !97
  br label %if.end72

if.end72:                                         ; preds = %if.then54, %if.end.if.end72_crit_edge
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %32, i32 131424
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %and84 = and i32 %33, -4128769
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr87 = getelementptr i8, ptr %35, i32 131424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %and84) #7, !srcloc !97
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %cmp = icmp eq ptr %37, @gm20b_clk
  br i1 %cmp, label %if.then90, label %if.end72.if.end104_crit_edge

if.end72.if.end104_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then90:                                        ; preds = %if.end72
  %volt97 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 40
  %38 = ptrtoint ptr %volt97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %volt97, align 4
  %call98 = tail call i32 @nvkm_volt_get(ptr noundef %39) #7
  %uv = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 2
  %40 = ptrtoint ptr %uv to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call98, ptr %uv, align 4
  %41 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device3, align 4
  %uvdet_offs.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 8
  %43 = ptrtoint ptr %uvdet_offs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %uvdet_offs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.then90.land.end.i_crit_edge, label %land.rhs.i

if.then90.land.end.i_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %uvdet_slope.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 7
  %45 = ptrtoint ptr %uvdet_slope.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %uvdet_slope.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.i = icmp ne i32 %46, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then90.land.end.i_crit_edge
  %47 = phi i1 [ false, %if.then90.land.end.i_crit_edge ], [ %tobool4.i, %land.rhs.i ]
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 11
  %48 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 1273876
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %50, 536870912
  %51 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %52, i32 1273876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %or.i) #7, !srcloc !97
  %dvfs_params.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 6
  %53 = ptrtoint ptr %dvfs_params.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dvfs_params.i, align 4
  %vco_ctrl.i = getelementptr inbounds %struct.gm20b_clk_dvfs_params, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %vco_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vco_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool8.not.i = icmp eq i32 %56, 0
  br i1 %tobool8.not.i, label %land.end.i.if.end.i_crit_edge, label %if.then.i

land.end.i.if.end.i_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %58, i32 1273880
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %and20.i = and i32 %59, -512
  %60 = ptrtoint ptr %dvfs_params.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dvfs_params.i, align 4
  %vco_ctrl22.i = getelementptr inbounds %struct.gm20b_clk_dvfs_params, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %vco_ctrl22.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vco_ctrl22.i, align 4
  %or23.i = or i32 %63, %and20.i
  %64 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %65, i32 1273880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %or23.i) #7, !srcloc !97
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.end.i.if.end.i_crit_edge
  %66 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %67, i32 1273876
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %or41.i = or i32 %68, 1073741824
  %69 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %70, i32 1273876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %or41.i) #7
  br i1 %47, label %if.end.i.calibrated.i_crit_edge, label %if.end45.i

if.end.i.calibrated.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calibrated.i

if.end45.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #7
  %71 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %42, i64 noundef 10000, ptr noundef nonnull %_wait.i) #7
  %72 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i, align 4
  %add.ptr65227.i = getelementptr i8, ptr %73, i32 1273876
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65227.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp228.i = icmp slt i32 %74, 0
  br i1 %cmp228.i, label %if.end107.thread.i, label %if.end45.i.do.cond71.i_crit_edge

if.end45.i.do.cond71.i_crit_edge:                 ; preds = %if.end45.i
  br label %do.cond71.i

if.end107.thread.i:                               ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #7
  br label %if.end124.i

do.body62.i:                                      ; preds = %do.cond71.i
  %75 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %76, i32 1273876
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %cmp.i = icmp slt i32 %77, 0
  br i1 %cmp.i, label %do.body62.i.if.end107.i_crit_edge, label %do.body62.i.do.cond71.i_crit_edge

do.body62.i.do.cond71.i_crit_edge:                ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond71.i

do.body62.i.if.end107.i_crit_edge:                ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107.i

do.cond71.i:                                      ; preds = %do.body62.i.do.cond71.i_crit_edge, %if.end45.i.do.cond71.i_crit_edge
  %call72.i = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call72.i)
  %cmp73.i = icmp sgt i64 %call72.i, -1
  br i1 %cmp73.i, label %do.body62.i, label %do.end85.i

do.end85.i:                                       ; preds = %do.cond71.i
  %78 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_wait.i, align 8
  %device87.i = getelementptr inbounds %struct.nvkm_timer, ptr %79, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %device87.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device87.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 8
  %call88.i = call ptr @dev_driver_string(ptr noundef %83) #7
  %84 = ptrtoint ptr %_wait.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_wait.i, align 8
  %device91.i = getelementptr inbounds %struct.nvkm_timer, ptr %85, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %device91.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device91.i, align 4
  %dev92.i = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev92.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev92.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %91, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end85.i.dev_name.exit.i_crit_edge

do.end85.i.dev_name.exit.i_crit_edge:             ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end85.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %93, %if.end.i.i ], [ %91, %do.end85.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 780, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call88.i, ptr noundef %retval.0.i.i) #7
  br label %if.end107.i

if.end107.i:                                      ; preds = %dev_name.exit.i, %do.body62.i.if.end107.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #7
  %94 = and i64 %call72.i, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %cmp109.not.i = icmp eq i64 %94, 0
  br i1 %cmp109.not.i, label %if.end107.i.if.end124.i_crit_edge, label %do.body112.i

if.end107.i.if.end124.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

do.body112.i:                                     ; preds = %if.end107.i
  %debug.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %95 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp113.not.i = icmp eq i32 %96, 0
  br i1 %cmp113.not.i, label %do.body112.i.cleanup124_crit_edge, label %do.body112.i.cleanup124.sink.split_crit_edge

do.body112.i.cleanup124.sink.split_crit_edge:     ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124.sink.split

do.body112.i.cleanup124_crit_edge:                ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

if.end124.i:                                      ; preds = %if.end107.i.if.end124.i_crit_edge, %if.end107.thread.i
  %97 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri.i, align 4
  %add.ptr127.i = getelementptr i8, ptr %98, i32 1273880
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %shr.i = lshr i32 %99, 24
  %and130.i = and i32 %shr.i, 127
  %uvdet_slope131.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 7
  %100 = ptrtoint ptr %uvdet_slope131.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 10000, ptr %uvdet_slope131.i, align 4
  %101 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %uv, align 4
  %mul.neg.i = mul nsw i32 %and130.i, -10000
  %sub.i = add i32 %mul.neg.i, %102
  %103 = ptrtoint ptr %uvdet_offs.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub.i, ptr %uvdet_offs.i, align 4
  %debug135.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %104 = ptrtoint ptr %debug135.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %105)
  %cmp136.i = icmp ugt i32 %105, 3
  br i1 %cmp136.i, label %do.end141.i, label %if.end124.i.calibrated.i_crit_edge

if.end124.i.calibrated.i_crit_edge:               ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calibrated.i

do.end141.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device3, align 4
  %dev143.i = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %dev143.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev143.i, align 8
  %name144.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.17, ptr noundef %name144.i, i32 noundef %sub.i, i32 noundef 10000) #11
  br label %calibrated.i

calibrated.i:                                     ; preds = %do.end141.i, %if.end124.i.calibrated.i_crit_edge, %if.end.i.calibrated.i_crit_edge
  %110 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %uv, align 4
  %dvfs.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 1
  call fastcc void @gm20b_dvfs_calc_det_coeff(ptr noundef %base, i32 noundef %111, ptr noundef %dvfs.i) #7
  %112 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device3, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %115, i32 1255456
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %or.i.i = or i32 %116, 65536
  %117 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pri.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %118, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %or.i.i) #7, !srcloc !97
  %119 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %120, i32 1273872
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @arm_heavy_mb() #7
  %and17.i.i = and i32 %121, -128
  %122 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %123, i32 1273872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 %and17.i.i) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 214748) #7
  %125 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pri.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %126, i32 1255456
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %and33.i.i = and i32 %127, -65537
  %128 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pri.i.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %129, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %and33.i.i) #7, !srcloc !97
  %dfs_ext_cal.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 1, i32 2
  %130 = ptrtoint ptr %dfs_ext_cal.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dfs_ext_cal.i, align 4
  %132 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device3, align 4
  %pri.i205.i = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 11
  %134 = ptrtoint ptr %pri.i205.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pri.i205.i, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %135, i32 1255456
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @arm_heavy_mb() #7
  %and.i.i = and i32 %136, -128
  %or.i207.i = or i32 %and.i.i, %131
  %137 = ptrtoint ptr %pri.i205.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pri.i205.i, align 4
  %add.ptr4.i208.i = getelementptr i8, ptr %138, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i208.i, i32 %or.i207.i) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %139(i32 noundef 214748) #7
  %140 = ptrtoint ptr %pri.i205.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pri.i205.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %141, i32 1273876
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %and11.i.i = and i32 %142, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i209.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i209.i, label %if.then.i.i, label %calibrated.i.gm20b_clk_init_dvfs.exit_crit_edge

calibrated.i.gm20b_clk_init_dvfs.exit_crit_edge:  ; preds = %calibrated.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gm20b_clk_init_dvfs.exit

if.then.i.i:                                      ; preds = %calibrated.i
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i.i = or i32 %142, 33619968
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %143 = ptrtoint ptr %pri.i205.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pri.i205.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %144, i32 1273876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %or12.i.i) #7, !srcloc !97
  br label %gm20b_clk_init_dvfs.exit

gm20b_clk_init_dvfs.exit:                         ; preds = %if.then.i.i, %calibrated.i.gm20b_clk_init_dvfs.exit_crit_edge
  %145 = ptrtoint ptr %dvfs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dvfs.i, align 4
  %147 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device3, align 4
  %pri.i212.i = getelementptr inbounds %struct.nvkm_device, ptr %148, i32 0, i32 11
  %149 = ptrtoint ptr %pri.i212.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pri.i212.i, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %150, i32 1255456
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %or.i214.i = or i32 %151, 65536
  %152 = ptrtoint ptr %pri.i212.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri.i212.i, align 4
  %add.ptr4.i215.i = getelementptr i8, ptr %153, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i215.i, i32 %or.i214.i) #7, !srcloc !97
  %154 = ptrtoint ptr %pri.i212.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri.i212.i, align 4
  %add.ptr11.i216.i = getelementptr i8, ptr %155, i32 1273872
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i216.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @arm_heavy_mb() #7
  %and17.i217.i = and i32 %156, -128
  %or18.i.i = or i32 %and17.i217.i, %146
  %157 = ptrtoint ptr %pri.i212.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri.i212.i, align 4
  %add.ptr20.i218.i = getelementptr i8, ptr %158, i32 1273872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i218.i, i32 %or18.i.i) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %159(i32 noundef 214748) #7
  %160 = ptrtoint ptr %pri.i212.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pri.i212.i, align 4
  %add.ptr27.i219.i = getelementptr i8, ptr %161, i32 1255456
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i219.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %and33.i220.i = and i32 %162, -65537
  %163 = ptrtoint ptr %pri.i212.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pri.i212.i, align 4
  %add.ptr36.i221.i = getelementptr i8, ptr %164, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i221.i, i32 %and33.i220.i) #7, !srcloc !97
  %new_dvfs.i = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 4
  call fastcc void @gm20b_dvfs_program_dfs_detection(ptr noundef %base, ptr noundef %new_dvfs.i) #7
  br label %if.end104

if.end104:                                        ; preds = %gm20b_clk_init_dvfs.exit, %if.end72.if.end104_crit_edge
  %165 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base, align 4
  %calc = getelementptr inbounds %struct.nvkm_clk_func, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %calc to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %calc, align 4
  %pstates = getelementptr inbounds %struct.nvkm_clk_func, ptr %166, i32 0, i32 6
  %169 = ptrtoint ptr %pstates to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pstates, align 4
  %base107 = getelementptr inbounds %struct.nvkm_pstate, ptr %170, i32 0, i32 2
  %call108 = call i32 %168(ptr noundef %base, ptr noundef %base107) #7
  %171 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base, align 4
  %prog = getelementptr inbounds %struct.nvkm_clk_func, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prog, align 4
  %call110 = call i32 %174(ptr noundef %base) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end104.cleanup124_crit_edge, label %do.body113

if.end104.cleanup124_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

do.body113:                                       ; preds = %if.end104
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %175 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp114.not = icmp eq i32 %176, 0
  br i1 %cmp114.not, label %do.body113.cleanup124_crit_edge, label %do.body113.cleanup124.sink.split_crit_edge

do.body113.cleanup124.sink.split_crit_edge:       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124.sink.split

do.body113.cleanup124_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

cleanup124.sink.split:                            ; preds = %do.body113.cleanup124.sink.split_crit_edge, %do.body112.i.cleanup124.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %do.body112.i.cleanup124.sink.split_crit_edge ], [ @.str.10, %do.body113.cleanup124.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ -110, %do.body112.i.cleanup124.sink.split_crit_edge ], [ %call110, %do.body113.cleanup124.sink.split_crit_edge ]
  %177 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %device3, align 4
  %dev120.i = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %dev120.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev120.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull %.str.14.sink, ptr noundef %name.i) #11
  br label %cleanup124

cleanup124:                                       ; preds = %cleanup124.sink.split, %do.body113.cleanup124_crit_edge, %if.end104.cleanup124_crit_edge, %do.body112.i.cleanup124_crit_edge, %entry.cleanup124_crit_edge
  %retval.1 = phi i32 [ %call46, %entry.cleanup124_crit_edge ], [ %call110, %do.body113.cleanup124_crit_edge ], [ 0, %if.end104.cleanup124_crit_edge ], [ -110, %do.body112.i.cleanup124_crit_edge ], [ %retval.1.ph, %cleanup124.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_clk_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_read(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_calc(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_prog(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_clk_tidy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_setup_slide(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gm20b_dvfs_calc_det_coeff(ptr noundef %clk, i32 noundef %uv, ptr nocapture noundef %dvfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvfs_params = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 6
  %0 = ptrtoint ptr %dvfs_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvfs_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uv)
  %cmp = icmp sgt i32 %uv, 0
  %cond.in.v = select i1 %cmp, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %uv
  %cond = sdiv i32 %cond.in, 1000
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mul = mul i32 %3, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp13 = icmp sgt i32 %mul, 0
  %cond28.in.v = select i1 %cmp13, i32 500, i32 -500
  %cond28.in = add i32 %cond28.in.v, %mul
  %cond28 = sdiv i32 %cond28.in, 1000
  %coeff_offs = getelementptr inbounds %struct.gm20b_clk_dvfs_params, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %coeff_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %coeff_offs, align 4
  %add29 = add i32 %5, 500
  %add34 = add i32 %add29, %cond28
  call void @__sanitizer_cov_trace_const_cmp4(i32 127000, i32 %add34)
  %cmp37 = icmp ult i32 %add34, 127000
  %div35 = udiv i32 %add34, 1000
  %cond42 = select i1 %cmp37, i32 %div35, i32 127
  %6 = ptrtoint ptr %dvfs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond42, ptr %dvfs, align 4
  %uvdet_offs = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 8
  %7 = ptrtoint ptr %uvdet_offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uvdet_offs, align 4
  %sub44 = sub i32 %uv, %8
  %uvdet_slope = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 7
  %9 = ptrtoint ptr %uvdet_slope to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uvdet_slope, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub44)
  %cmp47 = icmp slt i32 %sub44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp49 = icmp sgt i32 %10, 0
  %cmp51 = xor i1 %cmp47, %cmp49
  %add55.pn.v.v = select i1 %cmp51, i32 2, i32 -2
  %add55.pn.v = sdiv i32 %10, %add55.pn.v.v
  %add55.pn = add i32 %add55.pn.v, %sub44
  %cond62 = sdiv i32 %add55.pn, %10
  %dfs_ext_cal = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %dvfs, i32 0, i32 2
  %11 = ptrtoint ptr %dfs_ext_cal to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond62, ptr %dfs_ext_cal, align 4
  %12 = tail call i32 @llvm.abs.i32(i32 %cond62, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %12)
  %cmp73 = icmp ugt i32 %12, 63
  br i1 %cmp73, label %do.body, label %entry.if.end81_crit_edge

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp75.not = icmp eq i32 %14, 0
  br i1 %cmp75.not, label %do.body.if.end81_crit_edge, label %do.end

do.body.if.end81_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef %name) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end, %do.body.if.end81_crit_edge, %entry.if.end81_crit_edge
  %dfs_det_max = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %dvfs, i32 0, i32 1
  %19 = ptrtoint ptr %dfs_det_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dfs_det_max, align 4
  %debug84 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %debug84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp85 = icmp ugt i32 %21, 3
  br i1 %cmp85, label %do.end90, label %if.end81.if.end98_crit_edge

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end90:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %device91 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device91 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device91, align 4
  %dev92 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev92, align 8
  %name93 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %dvfs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dvfs, align 4
  %28 = ptrtoint ptr %dfs_ext_cal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dfs_ext_cal, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.23, ptr noundef %name93, ptr noundef nonnull @.str.21, i32 noundef %uv, i32 noundef %27, i32 noundef %29, i32 noundef 0) #11
  br label %if.end98

if.end98:                                         ; preds = %do.end90, %if.end81.if.end98_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gm20b_dvfs_program_dfs_detection(ptr nocapture noundef readonly %clk, ptr nocapture noundef readonly %dvfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1255456
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %or = or i32 %4, 65536
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1255456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #7, !srcloc !97
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 1273872
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %and17 = and i32 %9, -32640
  %10 = ptrtoint ptr %dvfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dvfs, align 4
  %dfs_det_max = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %dvfs, i32 0, i32 1
  %12 = ptrtoint ptr %dfs_det_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dfs_det_max, align 4
  %shl18 = shl i32 %13, 8
  %or19 = or i32 %11, %and17
  %or20 = or i32 %or19, %shl18
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 1273872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %or20) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 1255456
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %and35 = and i32 %19, -65537
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %21, i32 1255456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %and35) #7, !srcloc !97
  %dfs_ext_cal = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %dvfs, i32 0, i32 2
  %22 = ptrtoint ptr %dfs_ext_cal to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dfs_ext_cal, align 4
  %24 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 1255456
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %28, -128
  %or.i = or i32 %and.i, %23
  %29 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 1255456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #7
  %32 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %33, i32 1273876
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %and11.i = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.gm20b_dvfs_program_ext_cal.exit_crit_edge

entry.gm20b_dvfs_program_ext_cal.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gm20b_dvfs_program_ext_cal.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i = or i32 %34, 33619968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %36, i32 1273876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %or12.i) #7, !srcloc !97
  br label %gm20b_dvfs_program_ext_cal.exit

gm20b_dvfs_program_ext_cal.exit:                  ; preds = %if.then.i, %entry.gm20b_dvfs_program_ext_cal.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm20b_clk_fini(ptr noundef %base) #0 align 64 {
entry:
  %pll = alloca %struct.gk20a_pll, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pll) #7
  %5 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pll, align 4, !annotation !132
  %6 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !132
  %8 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !132
  call void @gk20a_pllg_read_mnp(ptr noundef %base, ptr noundef nonnull %pll) #7
  %10 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll, align 4
  %params.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 1
  %12 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %mul.i = mul i32 %15, %11
  %parent_rate.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 3
  %16 = ptrtoint ptr %parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_rate.i, align 4
  %div.i = udiv i32 %17, 1000
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %div.i
  %div3.i = udiv i32 %sub.i, %div.i
  %call9 = call fastcc i32 @gm20b_pllg_slide(ptr noundef %base, i32 noundef %div3.i)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pll) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device1, align 4
  %pri.i24 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %21, i32 1274112
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @arm_heavy_mb() #7
  %and.i26 = and i32 %22, -2
  %23 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i24, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 1274112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %and.i26) #7, !srcloc !97
  %25 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i24, align 4
  %add.ptr11.i = getelementptr i8, ptr %26, i32 1273856
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @arm_heavy_mb() #7
  %and17.i = and i32 %27, -5
  %28 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i24, align 4
  %add.ptr20.i = getelementptr i8, ptr %29, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %and17.i) #7, !srcloc !97
  %30 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i24, align 4
  %add.ptr27.i = getelementptr i8, ptr %31, i32 1273856
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %and33.i = and i32 %32, -2
  %33 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri.i24, align 4
  %add.ptr36.i = getelementptr i8, ptr %34, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %and33.i) #7, !srcloc !97
  %35 = ptrtoint ptr %pri.i24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i24, align 4
  %add.ptr40.i = getelementptr i8, ptr %36, i32 1273856
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %add.ptr10 = getelementptr i8, ptr %39, i32 1273856
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  call void @arm_heavy_mb() #7
  %and = and i32 %40, -4
  %or = or i32 %and, 1
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add.ptr14 = getelementptr i8, ptr %42, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %or) #7, !srcloc !97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm20b_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %volt6 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %volt6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volt6, align 4
  %arrayidx = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 19
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %5, 1000
  %new_pll = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 3
  %call = tail call i32 @gk20a_pllg_calc_mnp(ptr noundef %base, i32 noundef %mul, ptr noundef %new_pll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltage = getelementptr inbounds %struct.nvkm_cstate, ptr %cstate, i32 0, i32 1
  %6 = ptrtoint ptr %voltage to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %voltage, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx8 = getelementptr %struct.nvkm_volt, ptr %3, i32 0, i32 4, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  %new_uv = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 5
  %10 = ptrtoint ptr %new_uv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %new_uv, align 4
  %new_dvfs = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 4
  tail call fastcc void @gm20b_dvfs_calc_det_coeff(ptr noundef %base, i32 noundef %9, ptr noundef %new_dvfs)
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp = icmp ugt i32 %12, 3
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %new_uv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_uv, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.36, i32 noundef %18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm20b_clk_prog(ptr noundef %base) #0 align 64 {
entry:
  %pll_safe = alloca %struct.gk20a_pll, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uv = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uv, align 4
  %new_uv = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 5
  %2 = ptrtoint ptr %new_uv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.prog_crit_edge, label %if.end

entry.prog_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %prog

if.end:                                           ; preds = %entry
  %call = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 19) #7
  %safe_fmax_vmin = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 9
  %4 = ptrtoint ptr %safe_fmax_vmin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %safe_fmax_vmin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp6 = icmp ugt i32 %call, %5
  br i1 %cmp6, label %if.then7, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pll_safe) #7
  %6 = getelementptr inbounds %struct.gk20a_pll, ptr %pll_safe, i32 0, i32 1
  %7 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uv, align 4
  %9 = ptrtoint ptr %new_uv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp10 = icmp ult i32 %8, %10
  %new_pll = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 3
  %pll = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 2
  %new_pll.sink = select i1 %cmp10, ptr %pll, ptr %new_pll
  %11 = call ptr @memcpy(ptr %pll_safe, ptr %new_pll.sink, i32 12)
  %call.i = call i32 @gk20a_pllg_calc_rate(ptr noundef %base, ptr noundef nonnull %pll_safe) #7
  %div.i = udiv i32 %call.i, 1000
  %parent_rate2.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 3
  %12 = ptrtoint ptr %parent_rate2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_rate2.i, align 4
  %div3.i = udiv i32 %13, 1000
  %14 = ptrtoint ptr %safe_fmax_vmin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %safe_fmax_vmin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %15)
  %cmp.i = icmp ugt i32 %div.i, %15
  %mul.i = mul nuw nsw i32 %div.i, 90
  %div4.i = udiv i32 %mul.i, 100
  %rate.0.i = select i1 %cmp.i, i32 %div4.i, i32 %div.i
  %mul5.i = shl nuw nsw i32 %rate.0.i, 1
  %16 = ptrtoint ptr %pll_safe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_safe, align 4
  %params.i = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 1
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %mul7.i = mul i32 %21, %17
  %add.i = add nsw i32 %div3.i, -1
  %sub.i = add i32 %add.i, %mul7.i
  %div8.i = udiv i32 %sub.i, %div3.i
  %mul10.i = mul i32 %mul5.i, %17
  %div13.i = udiv i32 %mul10.i, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %div13.i, i32 %div8.i)
  %cmp14.i = icmp ult i32 %div13.i, %div8.i
  br i1 %cmp14.i, label %if.then15.i, label %if.then7.gm20b_dvfs_calc_safe_pll.exit_crit_edge

if.then7.gm20b_dvfs_calc_safe_pll.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %gm20b_dvfs_calc_safe_pll.exit

if.then15.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = getelementptr inbounds %struct.gk20a_pll, ptr %pll_safe, i32 0, i32 2
  %mul16.i = mul i32 %div8.i, %div3.i
  %add19.i = add i32 %mul10.i, -1
  %sub20.i = add i32 %add19.i, %mul16.i
  %div23.i = udiv i32 %sub20.i, %mul10.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div23.i, ptr %22, align 4
  br label %gm20b_dvfs_calc_safe_pll.exit

gm20b_dvfs_calc_safe_pll.exit:                    ; preds = %if.then15.i, %if.then7.gm20b_dvfs_calc_safe_pll.exit_crit_edge
  %nsafe.0.i = phi i32 [ %div8.i, %if.then15.i ], [ %div13.i, %if.then7.gm20b_dvfs_calc_safe_pll.exit_crit_edge ]
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %nsafe.0.i, ptr %6, align 4
  %call14 = call fastcc i32 @gm20b_pllg_program_mnp_slide(ptr noundef %base, ptr noundef nonnull %pll_safe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pll_safe) #7
  br i1 %tobool.not, label %gm20b_dvfs_calc_safe_pll.exit.if.end17_crit_edge, label %gm20b_dvfs_calc_safe_pll.exit.cleanup29_crit_edge

gm20b_dvfs_calc_safe_pll.exit.cleanup29_crit_edge: ; preds = %gm20b_dvfs_calc_safe_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

gm20b_dvfs_calc_safe_pll.exit.if.end17_crit_edge: ; preds = %gm20b_dvfs_calc_safe_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %gm20b_dvfs_calc_safe_pll.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %device2.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device2.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 1255456
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %or.i = or i32 %29, 65536
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %31, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #7, !srcloc !97
  %32 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %33, i32 1273872
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @arm_heavy_mb() #7
  %and17.i = and i32 %34, -128
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %36, i32 1273872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %and17.i) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748) #7
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %39, i32 1255456
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %and33.i = and i32 %40, -65537
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %42, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %and33.i) #7, !srcloc !97
  %new_dvfs = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 4
  %dfs_ext_cal = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %dfs_ext_cal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dfs_ext_cal, align 4
  %45 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device2.i, align 4
  %pri.i58 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %pri.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %48, i32 1255456
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @arm_heavy_mb() #7
  %and.i = and i32 %49, -128
  %or.i60 = or i32 %and.i, %44
  %50 = ptrtoint ptr %pri.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i58, align 4
  %add.ptr4.i61 = getelementptr i8, ptr %51, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i61, i32 %or.i60) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748) #7
  %53 = ptrtoint ptr %pri.i58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri.i58, align 4
  %add.ptr8.i = getelementptr i8, ptr %54, i32 1273876
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %and11.i = and i32 %55, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end17.gm20b_dvfs_program_ext_cal.exit_crit_edge

if.end17.gm20b_dvfs_program_ext_cal.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %gm20b_dvfs_program_ext_cal.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i = or i32 %55, 33619968
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %pri.i58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i58, align 4
  %add.ptr17.i = getelementptr i8, ptr %57, i32 1273876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %or12.i) #7, !srcloc !97
  br label %gm20b_dvfs_program_ext_cal.exit

gm20b_dvfs_program_ext_cal.exit:                  ; preds = %if.then.i, %if.end17.gm20b_dvfs_program_ext_cal.exit_crit_edge
  %58 = ptrtoint ptr %new_dvfs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %new_dvfs, align 4
  %60 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device2.i, align 4
  %pri.i63 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %pri.i63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri.i63, align 4
  %add.ptr.i64 = getelementptr i8, ptr %63, i32 1255456
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %or.i65 = or i32 %64, 65536
  %65 = ptrtoint ptr %pri.i63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i63, align 4
  %add.ptr4.i66 = getelementptr i8, ptr %66, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i66, i32 %or.i65) #7, !srcloc !97
  %67 = ptrtoint ptr %pri.i63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri.i63, align 4
  %add.ptr11.i67 = getelementptr i8, ptr %68, i32 1273872
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i67) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @arm_heavy_mb() #7
  %and17.i68 = and i32 %69, -128
  %or18.i = or i32 %and17.i68, %59
  %70 = ptrtoint ptr %pri.i63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri.i63, align 4
  %add.ptr20.i69 = getelementptr i8, ptr %71, i32 1273872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i69, i32 %or18.i) #7, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748) #7
  %73 = ptrtoint ptr %pri.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri.i63, align 4
  %add.ptr27.i70 = getelementptr i8, ptr %74, i32 1255456
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i70) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %and33.i71 = and i32 %75, -65537
  %76 = ptrtoint ptr %pri.i63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri.i63, align 4
  %add.ptr36.i72 = getelementptr i8, ptr %77, i32 1255456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i72, i32 %and33.i71) #7, !srcloc !97
  call fastcc void @gm20b_dvfs_program_dfs_detection(ptr noundef %base, ptr noundef %new_dvfs)
  br label %prog

prog:                                             ; preds = %gm20b_dvfs_program_ext_cal.exit, %entry.prog_crit_edge
  %78 = ptrtoint ptr %new_uv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %new_uv, align 4
  %80 = ptrtoint ptr %uv to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %uv, align 4
  %dvfs = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 1
  %new_dvfs22 = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 4
  %81 = call ptr @memcpy(ptr %dvfs, ptr %new_dvfs22, i32 12)
  %pll24 = getelementptr inbounds %struct.gk20a_clk, ptr %base, i32 0, i32 2
  %new_pll25 = getelementptr inbounds %struct.gm20b_clk, ptr %base, i32 0, i32 3
  %82 = call ptr @memcpy(ptr %pll24, ptr %new_pll25, i32 12)
  %call28 = call fastcc i32 @gm20b_pllg_program_mnp_slide(ptr noundef %base, ptr noundef %pll24)
  br label %cleanup29

cleanup29:                                        ; preds = %prog, %gm20b_dvfs_calc_safe_pll.exit.cleanup29_crit_edge
  %retval.1 = phi i32 [ %call28, %prog ], [ %call14, %gm20b_dvfs_calc_safe_pll.exit.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_pllg_read_mnp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gm20b_pllg_slide(ptr noundef %clk, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %pll = alloca %struct.gm20b_pll, align 4
  %n_int = alloca i32, align 4
  %sdm_din = alloca i32, align 4
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll) #7
  %2 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %3 = getelementptr inbounds %struct.gm20b_pll, ptr %pll, i32 0, i32 1
  %4 = call ptr @memset(ptr %pll, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_int) #7
  %5 = ptrtoint ptr %n_int to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %n_int, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdm_din) #7
  %6 = ptrtoint ptr %sdm_din to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sdm_din, align 4, !annotation !132
  call fastcc void @gm20b_dvfs_calc_ndiv(ptr noundef %clk, i32 noundef %n, ptr noundef nonnull %n_int, ptr noundef nonnull %sdm_din)
  %7 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device3, align 4
  call void @gk20a_pllg_read_mnp(ptr noundef %clk, ptr noundef nonnull %pll) #7
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 1273868
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %and.i = and i32 %11, 255
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %3, align 4
  %13 = ptrtoint ptr %n_int to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_int, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp eq i32 %14, %16
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = ptrtoint ptr %sdm_din to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdm_din, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and.i)
  %cmp7 = icmp eq i32 %18, %and.i
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 1273884
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  %or = or i32 %21, 4194304
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %23, i32 1273884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %or) #7, !srcloc !97
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %25, i32 1273868
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  call void @arm_heavy_mb() #7
  %and22 = and i32 %26, -8388353
  %27 = ptrtoint ptr %sdm_din to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdm_din, align 4
  %shl = shl i32 %28, 8
  %or23 = or i32 %shl, %and22
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %30, i32 1273868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %or23) #7, !srcloc !97
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %14, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748) #7
  call void @gk20a_pllg_write_mnp(ptr noundef %clk, ptr noundef nonnull %pll) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748) #7
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %35, i32 1273884
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @arm_heavy_mb() #7
  %or43 = or i32 %36, -2147483648
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %38, i32 1273884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or43) #7, !srcloc !97
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %39 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 500000, ptr noundef nonnull %_wait) #7
  br label %do.body47

do.body47:                                        ; preds = %do.cond57.do.body47_crit_edge, %if.end
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr50 = getelementptr i8, ptr %41, i32 1255584
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %and53 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp54.not = icmp eq i32 %and53, 0
  br i1 %cmp54.not, label %do.cond57, label %if.end93.thread

if.end93.thread:                                  ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %60

do.cond57:                                        ; preds = %do.body47
  %call58 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp59 = icmp sgt i64 %call58, -1
  br i1 %cmp59, label %do.cond57.do.body47_crit_edge, label %do.end71

do.cond57.do.body47_crit_edge:                    ; preds = %do.cond57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

do.end71:                                         ; preds = %do.cond57
  %43 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_wait, align 8
  %device73 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device73, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %call74 = call ptr @dev_driver_string(ptr noundef %48) #7
  %49 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_wait, align 8
  %device77 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %device77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device77, align 4
  %dev78 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev78, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end71._crit_edge

do.end71._crit_edge:                              ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %59

if.end.i:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %59

59:                                               ; preds = %if.end.i, %do.end71._crit_edge
  %retval.0.i = phi ptr [ %58, %if.end.i ], [ %56, %do.end71._crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call74, ptr noundef %retval.0.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %60

60:                                               ; preds = %59, %if.end93.thread
  %61 = phi i32 [ -110, %59 ], [ 0, %if.end93.thread ]
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr103 = getelementptr i8, ptr %63, i32 1273868
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @arm_heavy_mb() #7
  %and109 = and i32 %64, -256
  %or111 = or i32 %and109, %28
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr113 = getelementptr i8, ptr %66, i32 1273868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %or111) #7, !srcloc !97
  %67 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri, align 4
  %add.ptr120 = getelementptr i8, ptr %68, i32 1273884
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  call void @arm_heavy_mb() #7
  %and126 = and i32 %69, 2143289343
  %70 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri, align 4
  %add.ptr129 = getelementptr i8, ptr %71, i32 1273884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %and126) #7, !srcloc !97
  %72 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri, align 4
  %add.ptr133 = getelementptr i8, ptr %73, i32 1273884
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %60, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %61, %60 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdm_din) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_int) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gm20b_dvfs_calc_ndiv(ptr noundef %clk, i32 noundef %n_eff, ptr nocapture noundef %n_int, ptr nocapture noundef writeonly %sdm_din) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 1
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %uv = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 2
  %2 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uv, align 4
  %uvdet_offs = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 8
  %4 = ptrtoint ptr %uvdet_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uvdet_offs, align 4
  %sub = sub i32 %3, %5
  %uvdet_slope = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 7
  %6 = ptrtoint ptr %uvdet_slope to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uvdet_slope, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp sgt i32 %7, 0
  %cmp6 = xor i1 %cmp, %cmp4
  %add.pn.v.v = select i1 %cmp6, i32 2, i32 -2
  %add.pn.v = sdiv i32 %7, %add.pn.v.v
  %add.pn = add i32 %add.pn.v, %sub
  %cond = sdiv i32 %add.pn, %7
  %dvfs = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 1
  %dfs_ext_cal = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dfs_ext_cal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dfs_ext_cal, align 4
  %sub12 = sub i32 %cond, %9
  %dfs_det_max = getelementptr inbounds %struct.gm20b_clk, ptr %clk, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dfs_det_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dfs_det_max, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %sub12, i32 %11)
  %13 = ptrtoint ptr %dvfs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dvfs, align 4
  %mul = mul i32 %12, %14
  %shl = shl i32 %n_eff, 6
  %sub22 = sub i32 %shl, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %cmp23 = icmp eq i32 %sub22, 0
  br i1 %cmp23, label %do.body, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25.not = icmp eq i32 %16, 0
  br i1 %cmp25.not, label %do.body.if.end31_crit_edge, label %do.end

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.27, ptr noundef %name) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end, %do.body.if.end31_crit_edge, %entry.if.end31_crit_edge
  %n.0 = phi i32 [ %sub22, %entry.if.end31_crit_edge ], [ 64, %do.end ], [ 64, %do.body.if.end31_crit_edge ]
  %shr = lshr i32 %n.0, 6
  %max_n = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %max_n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %22)
  %cmp32 = icmp ugt i32 %shr, %22
  br i1 %cmp32, label %do.body35, label %if.end31.if.end53_crit_edge

if.end31.if.end53_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.body35:                                        ; preds = %if.end31
  %debug37 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %debug37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp38.not = icmp eq i32 %24, 0
  br i1 %cmp38.not, label %do.body35.if.end48_crit_edge, label %do.end43

do.body35.if.end48_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end43:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %device44 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device44, align 4
  %dev45 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev45, align 8
  %name46 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.30, ptr noundef %name46) #11
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %do.body35.if.end48_crit_edge
  %29 = ptrtoint ptr %max_n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_n, align 4
  %shl52 = shl i32 %30, 6
  %.pre = and i32 %30, 67108863
  br label %if.end53

if.end53:                                         ; preds = %if.end48, %if.end31.if.end53_crit_edge
  %shr54.pre-phi = phi i32 [ %.pre, %if.end48 ], [ %shr, %if.end31.if.end53_crit_edge ]
  %n.1 = phi i32 [ %shl52, %if.end48 ], [ %n.0, %if.end31.if.end53_crit_edge ]
  %31 = ptrtoint ptr %n_int to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr54.pre-phi, ptr %n_int, align 4
  %and = shl i32 %n.1, 7
  %shl55 = and i32 %and, 8064
  %sub56 = add nuw nsw i32 %shl55, 61440
  %shr57 = lshr i32 %sub56, 8
  %and58 = and i32 %shr57, 255
  %32 = ptrtoint ptr %sdm_din to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and58, ptr %sdm_din, align 4
  %debug61 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %debug61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp62 = icmp ugt i32 %34, 3
  br i1 %cmp62, label %do.end67, label %if.end53.if.end72_crit_edge

if.end53.if.end72_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end67:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %device68 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %device68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device68, align 4
  %dev69 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev69, align 8
  %name70 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %n_int to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_int, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.33, ptr noundef %name70, ptr noundef nonnull @.str.28, i32 noundef %n_eff, i32 noundef %40, i32 noundef %and58) #11
  br label %if.end72

if.end72:                                         ; preds = %do.end67, %if.end53.if.end72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_pllg_write_mnp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_pllg_calc_mnp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gm20b_pllg_program_mnp_slide(ptr noundef %clk, ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  %cur_pll.i = alloca %struct.gm20b_pll, align 4
  %n_int.i = alloca i32, align 4
  %sdm_din.i = alloca i32, align 4
  %cur_pll = alloca %struct.gk20a_pll, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur_pll) #7
  %0 = ptrtoint ptr %cur_pll to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_pll, align 4, !annotation !132
  %1 = getelementptr inbounds %struct.gk20a_pll, ptr %cur_pll, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !132
  %3 = getelementptr inbounds %struct.gk20a_pll, ptr %cur_pll, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !132
  %device1.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1273856
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @gk20a_pllg_read_mnp(ptr noundef %clk, ptr noundef nonnull %cur_pll) #7
  %10 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll, align 4
  %12 = ptrtoint ptr %cur_pll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_pll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %pl = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 2
  %14 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pl, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp4 = icmp eq i32 %15, %17
  br i1 %cmp4, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %params.i = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 1
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %mul.i = mul i32 %21, %13
  %parent_rate.i = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 3
  %22 = ptrtoint ptr %parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent_rate.i, align 4
  %div.i = udiv i32 %23, 1000
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %div.i
  %div3.i = udiv i32 %sub.i, %div.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div3.i, ptr %1, align 4
  %call11 = call fastcc i32 @gm20b_pllg_slide(ptr noundef %clk, i32 noundef %div3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %25 = call ptr @memcpy(ptr %cur_pll, ptr %pll, i32 12)
  %26 = ptrtoint ptr %cur_pll to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_pll, align 4
  %params.i39 = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 1
  %28 = ptrtoint ptr %params.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params.i39, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %mul.i40 = mul i32 %31, %27
  %parent_rate.i41 = getelementptr inbounds %struct.gk20a_clk, ptr %clk, i32 0, i32 3
  %32 = ptrtoint ptr %parent_rate.i41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %parent_rate.i41, align 4
  %div.i42 = udiv i32 %33, 1000
  %add.i43 = add i32 %mul.i40, -1
  %sub.i44 = add i32 %add.i43, %div.i42
  %div3.i45 = udiv i32 %sub.i44, %div.i42
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div3.i45, ptr %1, align 4
  %35 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cur_pll.i) #7
  %37 = getelementptr inbounds %struct.gk20a_pll, ptr %cur_pll.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.gk20a_pll, ptr %cur_pll.i, i32 0, i32 2
  %39 = getelementptr inbounds %struct.gm20b_pll, ptr %cur_pll.i, i32 0, i32 1
  %40 = call ptr @memset(ptr %cur_pll.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_int.i) #7
  %41 = ptrtoint ptr %n_int.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %n_int.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdm_din.i) #7
  %42 = ptrtoint ptr %sdm_din.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %sdm_din.i, align 4, !annotation !132
  call fastcc void @gm20b_dvfs_calc_ndiv(ptr noundef %clk, i32 noundef %div3.i45, ptr noundef nonnull %n_int.i, ptr noundef nonnull %sdm_din.i) #7
  %43 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device1.i, align 4
  call void @gk20a_pllg_read_mnp(ptr noundef %clk, ptr noundef nonnull %cur_pll.i) #7
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 1273868
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %and.i.i = and i32 %47, 255
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i.i, ptr %39, align 4
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %37, align 4
  %51 = ptrtoint ptr %n_int.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_int.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp.i = icmp eq i32 %50, %52
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end14.land.end.i_crit_edge

if.end14.land.end.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.end14
  %53 = ptrtoint ptr %sdm_din.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sdm_din.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %54)
  %cmp7.i = icmp eq i32 %and.i.i, %54
  br i1 %cmp7.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %cur_pll.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_pll.i, align 4
  %57 = ptrtoint ptr %cur_pll to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cur_pll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp10.i = icmp eq i32 %56, %58
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.end14.land.end.i_crit_edge
  %59 = phi i1 [ false, %land.lhs.true.i.land.end.i_crit_edge ], [ false, %if.end14.land.end.i_crit_edge ], [ %cmp10.i, %land.rhs.i ]
  %60 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device1.i, align 4
  %pri.i2.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %pri.i2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %63, i32 1273856
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %and.i4.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.i.i = icmp ne i32 %and.i4.i, 0
  %spec.select.i = select i1 %tobool.i.i, i1 %59, i1 false
  %pri.i46 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 11
  %65 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %66, i32 1274448
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  call void @arm_heavy_mb() #7
  %and.i48 = and i32 %67, -16129
  %or.i = or i32 %and.i48, 512
  %68 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri.i46, align 4
  %add.ptr14.i = getelementptr i8, ptr %69, i32 1274448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %or.i) #7, !srcloc !97
  %70 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri.i46, align 4
  %add.ptr21.i = getelementptr i8, ptr %71, i32 1274448
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  call void @arm_heavy_mb() #7
  %and27.i = and i32 %72, -16129
  %or28.i = or i32 %and27.i, 512
  %73 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri.i46, align 4
  %add.ptr30.i = getelementptr i8, ptr %74, i32 1274448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %or28.i) #7, !srcloc !97
  %75 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i46, align 4
  %add.ptr34.i = getelementptr i8, ptr %76, i32 1274448
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 429496) #7
  br i1 %spec.select.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %land.end.i
  %79 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %38, align 4
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %3, align 4
  %and40.i = and i32 %82, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %cmp41.i = icmp eq i32 %and40.i, 0
  br i1 %cmp41.i, label %if.then42.i, label %if.then37.i.if.end55.i_crit_edge

if.then37.i.if.end55.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then42.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = call i32 @llvm.cttz.i32(i32 %82, i1 true) #7, !range !160
  %.op.i = shl nuw i32 1, %83
  %or43.i = or i32 %.op.i, %80
  %84 = call i32 @llvm.cttz.i32(i32 %80, i1 true) #7, !range !160
  %.op1.i = shl nuw i32 1, %84
  %or48.i = or i32 %.op1.i, %82
  %85 = call i32 @llvm.umin.i32(i32 %or43.i, i32 %or48.i) #7
  %86 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %38, align 4
  call void @gk20a_pllg_write_mnp(ptr noundef %clk, ptr noundef nonnull %cur_pll.i) #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then42.i, %if.then37.i.if.end55.i_crit_edge
  %87 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %82, ptr %38, align 4
  call void @gk20a_pllg_write_mnp(ptr noundef %clk, ptr noundef nonnull %cur_pll.i) #7
  br label %gm20b_pllg_program_mnp.exit

if.else.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device1.i, align 4
  %pri.i5.i = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %91, i32 1274112
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @arm_heavy_mb() #7
  %and.i7.i = and i32 %92, -2
  %93 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %94, i32 1274112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %and.i7.i) #7, !srcloc !97
  %95 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %96, i32 1273856
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @arm_heavy_mb() #7
  %and17.i.i = and i32 %97, -5
  %98 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %99, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 %and17.i.i) #7, !srcloc !97
  %100 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %101, i32 1273856
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %and33.i.i = and i32 %102, -2
  %103 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %104, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %and33.i.i) #7, !srcloc !97
  %105 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %106, i32 1273856
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %108 = call ptr @memcpy(ptr %cur_pll.i, ptr %cur_pll, i32 12)
  %109 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %52, ptr %37, align 4
  %110 = ptrtoint ptr %sdm_din.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sdm_din.i, align 4
  %112 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %39, align 4
  %113 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device1.i, align 4
  %pri.i9.i = getelementptr inbounds %struct.nvkm_device, ptr %114, i32 0, i32 11
  %115 = ptrtoint ptr %pri.i9.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pri.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %116, i32 1273868
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  call void @arm_heavy_mb() #7
  %and.i11.i = and i32 %117, -256
  %118 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %39, align 4
  %or.i.i = or i32 %119, %and.i11.i
  %120 = ptrtoint ptr %pri.i9.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pri.i9.i, align 4
  %add.ptr4.i13.i = getelementptr i8, ptr %121, i32 1273868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i13.i, i32 %or.i.i) #7, !srcloc !97
  call void @gk20a_pllg_write_mnp(ptr noundef %clk, ptr noundef nonnull %cur_pll.i) #7
  %122 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device1.i, align 4
  %pri.i15.i = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %125, i32 1273856
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  %or.i17.i = or i32 %126, 1
  %127 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr4.i18.i = getelementptr i8, ptr %128, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i18.i, i32 %or.i17.i) #7, !srcloc !97
  %129 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %130, i32 1273856
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %132(i32 noundef 8589920) #7
  %133 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %134, i32 1273856
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  call void @arm_heavy_mb() #7
  %or23.i.i = or i32 %135, 4
  %136 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %137, i32 1273856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %or23.i.i) #7, !srcloc !97
  %138 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %139, i32 1273856
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %141 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %142, i32 1274112
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  call void @arm_heavy_mb() #7
  %or44.i.i = or i32 %143, 1
  %144 = ptrtoint ptr %pri.i15.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri.i15.i, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %145, i32 1274112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i, i32 %or44.i.i) #7, !srcloc !97
  br label %gm20b_pllg_program_mnp.exit

gm20b_pllg_program_mnp.exit:                      ; preds = %if.else.i, %if.end55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 429496) #7
  %147 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pri.i46, align 4
  %add.ptr74.i = getelementptr i8, ptr %148, i32 1274448
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  call void @arm_heavy_mb() #7
  %and80.i = and i32 %149, -16129
  %150 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pri.i46, align 4
  %add.ptr83.i = getelementptr i8, ptr %151, i32 1274448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 %and80.i) #7, !srcloc !97
  %152 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri.i46, align 4
  %add.ptr90.i = getelementptr i8, ptr %153, i32 1274448
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  call void @arm_heavy_mb() #7
  %and96.i = and i32 %154, -16129
  %155 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pri.i46, align 4
  %add.ptr99.i = getelementptr i8, ptr %156, i32 1274448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %and96.i) #7, !srcloc !97
  %157 = ptrtoint ptr %pri.i46 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri.i46, align 4
  %add.ptr103.i = getelementptr i8, ptr %158, i32 1274448
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdm_din.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_int.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cur_pll.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %gm20b_pllg_program_mnp.exit, %land.lhs.true.cleanup.sink.split_crit_edge
  %n22 = getelementptr inbounds %struct.gk20a_pll, ptr %pll, i32 0, i32 1
  %160 = ptrtoint ptr %n22 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %n22, align 4
  %call23 = call fastcc i32 @gm20b_pllg_slide(ptr noundef %clk, i32 noundef %161)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end.cleanup_crit_edge ], [ %call23, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur_pll) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_pllg_calc_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 1048, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gm20b_clk_new._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gm20b_clk_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 1064, i32 3}
!10 = !{ptr @gm20b_clk_new._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gm20b_clk_new._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 888, i32 30}
!14 = !{ptr @gm20b_clk_speedo0, !15, !"gm20b_clk_speedo0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 876, i32 1}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 868, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gm20b_clk_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @gm20b_clk_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"ADC_SLOPE_UV", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 747, i32 19}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 778, i32 8}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 782, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gm20b_clk_init_dvfs._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @gm20b_clk_init_dvfs._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 793, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gm20b_clk_init_dvfs._entry.16, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gm20b_clk_init_dvfs._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 207, i32 3}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gm20b_dvfs_calc_det_coeff._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @gm20b_dvfs_calc_det_coeff._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 211, i32 2}
!43 = !{ptr @gm20b_dvfs_calc_det_coeff._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gm20b_dvfs_calc_det_coeff._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @gm20b_pstates, !46, !"gm20b_pstates", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 638, i32 1}
!47 = !{ptr @gm20b_pllg_params, !48, !"gm20b_pllg_params", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 151, i32 43}
!49 = !{ptr @gm20b_clk, !50, !"gm20b_clk", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 894, i32 1}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 244, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gm20b_dvfs_calc_ndiv._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @gm20b_dvfs_calc_ndiv._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 248, i32 3}
!58 = !{ptr @gm20b_dvfs_calc_ndiv._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gm20b_dvfs_calc_ndiv._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 261, i32 2}
!62 = !{ptr @gm20b_dvfs_calc_ndiv._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @gm20b_dvfs_calc_ndiv._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 479, i32 2}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @gm20b_clk_calc._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @gm20b_clk_calc._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @gm20b_dvfs_params, !70, !"gm20b_dvfs_params", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 98, i32 43}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 970, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @gm20b_clk_init_fused_params._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @gm20b_clk_init_fused_params._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 1002, i32 3}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @gm20b_clk_init_safe_fmax._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @gm20b_clk_init_safe_fmax._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c", i32 1008, i32 2}
!83 = !{ptr @gm20b_clk_init_safe_fmax._entry.41, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @gm20b_clk_init_safe_fmax._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 5413627}
!95 = !{i64 2156389674}
!96 = !{i64 2156390092}
!97 = !{i64 5413209}
!98 = !{i64 2156390652}
!99 = !{i64 2156392624}
!100 = !{i64 2156393278}
!101 = !{i64 2156394358}
!102 = !{i64 2156394768}
!103 = !{i64 2156395260}
!104 = !{i64 2156395590}
!105 = !{i64 2156396040}
!106 = !{i64 2156396370}
!107 = !{i64 2156397197}
!108 = !{i64 2156397585}
!109 = !{i64 2156373301}
!110 = !{i64 2156373775}
!111 = !{i64 2156374864}
!112 = !{i64 2156375342}
!113 = !{i64 2156381093}
!114 = !{i64 2156384819}
!115 = !{i64 2156345365}
!116 = !{i64 2156345839}
!117 = !{i64 2156346911}
!118 = !{i64 2156347347}
!119 = !{i64 2156348924}
!120 = !{i64 2156349344}
!121 = !{i64 2156350322}
!122 = !{i64 2156350750}
!123 = !{i64 2156351863}
!124 = !{i64 2156352483}
!125 = !{i64 2156353579}
!126 = !{i64 2156354053}
!127 = !{i64 2156355292}
!128 = !{i64 2156355866}
!129 = !{i64 2156357512}
!130 = !{i64 2156357932}
!131 = !{i64 2156271540}
!132 = !{!"auto-init"}
!133 = !{i64 2156316799}
!134 = !{i64 2156317217}
!135 = !{i64 2156318234}
!136 = !{i64 2156318652}
!137 = !{i64 2156319669}
!138 = !{i64 2156320087}
!139 = !{i64 2156320647}
!140 = !{i64 2156371746}
!141 = !{i64 2156372164}
!142 = !{i64 2156272383}
!143 = !{i64 2156297975}
!144 = !{i64 2156298449}
!145 = !{i64 2156299526}
!146 = !{i64 2156299968}
!147 = !{i64 2156302179}
!148 = !{i64 2156302653}
!149 = !{i64 2156305045}
!150 = !{i64 2156306921}
!151 = !{i64 2156307361}
!152 = !{i64 2156308503}
!153 = !{i64 2156308985}
!154 = !{i64 2156309589}
!155 = !{i64 2156321579}
!156 = !{i64 2156322007}
!157 = !{i64 2156323055}
!158 = !{i64 2156323483}
!159 = !{i64 2156324064}
!160 = !{i32 0, i32 33}
!161 = !{i64 2156273338}
!162 = !{i64 2156273788}
!163 = !{i64 2156310603}
!164 = !{i64 2156311073}
!165 = !{i64 2156311659}
!166 = !{i64 2156313215}
!167 = !{i64 2156313685}
!168 = !{i64 2156314271}
!169 = !{i64 2156315283}
!170 = !{i64 2156315753}
!171 = !{i64 2156328938}
!172 = !{i64 2156329366}
!173 = !{i64 2156330414}
!174 = !{i64 2156330842}
!175 = !{i64 2156331423}
