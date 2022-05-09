; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.anon.88 = type { i32, i32 }
%struct.pll_rate = type { i32, i32, [32 x %struct.anon.88] }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hdmi_pll_8960 = type { ptr, %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to map pll base\0A\00", [32 x i8] zeroinitializer }, align 32
@pll_init = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @hdmi_pll_ops, ptr @hdmi_pll_parents, ptr null, ptr null, i8 1, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to register pll clock\0A\00", [58 x i8] zeroinitializer }, align 32
@freqtbl = internal constant { <{ { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> }, %struct.pll_rate, { i32, i32, <{ [13 x %struct.anon.88], [19 x %struct.anon.88] }> }, { i32, i32, <{ [8 x %struct.anon.88], [24 x %struct.anon.88] }> }, { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> }, { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> }, { i32, i32, <{ [18 x %struct.anon.88], [14 x %struct.anon.88] }> }, %struct.pll_rate, %struct.pll_rate }>, [600 x i8] } { <{ { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> }, %struct.pll_rate, { i32, i32, <{ [13 x %struct.anon.88], [19 x %struct.anon.88] }> }, { i32, i32, <{ [8 x %struct.anon.88], [24 x %struct.anon.88] }> }, { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> }, { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> }, { i32, i32, <{ [18 x %struct.anon.88], [14 x %struct.anon.88] }> }, %struct.pll_rate, %struct.pll_rate }> <{ { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> } { i32 154000000, i32 14, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> <{ [14 x %struct.anon.88] [%struct.anon.88 { i32 8, i32 0 }, %struct.anon.88 { i32 32, i32 8 }, %struct.anon.88 { i32 249, i32 12 }, %struct.anon.88 { i32 2, i32 76 }, %struct.anon.88 { i32 3, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 13, i32 28 }, %struct.anon.88 { i32 77, i32 32 }, %struct.anon.88 { i32 94, i32 36 }, %struct.anon.88 { i32 66, i32 40 }, %struct.anon.88 { i32 0, i32 44 }], [18 x %struct.anon.88] zeroinitializer }> }, %struct.pll_rate { i32 148500000, i32 27, [32 x %struct.anon.88] [%struct.anon.88 { i32 2, i32 0 }, %struct.anon.88 { i32 2, i32 4 }, %struct.anon.88 { i32 1, i32 8 }, %struct.anon.88 { i32 51, i32 12 }, %struct.anon.88 { i32 44, i32 16 }, %struct.anon.88 { i32 6, i32 20 }, %struct.anon.88 { i32 10, i32 24 }, %struct.anon.88 { i32 118, i32 28 }, %struct.anon.88 { i32 1, i32 32 }, %struct.anon.88 { i32 76, i32 36 }, %struct.anon.88 { i32 192, i32 40 }, %struct.anon.88 { i32 0, i32 44 }, %struct.anon.88 { i32 154, i32 48 }, %struct.anon.88 { i32 0, i32 52 }, %struct.anon.88 { i32 0, i32 56 }, %struct.anon.88 { i32 0, i32 60 }, %struct.anon.88 { i32 16, i32 64 }, %struct.anon.88 { i32 26, i32 68 }, %struct.anon.88 { i32 13, i32 72 }, %struct.anon.88 { i32 230, i32 76 }, %struct.anon.88 { i32 2, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 51, i32 100 }, %struct.anon.88 { i32 0, i32 104 }, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer] }, { i32, i32, <{ [13 x %struct.anon.88], [19 x %struct.anon.88] }> } { i32 108000000, i32 13, <{ [13 x %struct.anon.88], [19 x %struct.anon.88] }> <{ [13 x %struct.anon.88] [%struct.anon.88 { i32 8, i32 0 }, %struct.anon.88 { i32 33, i32 8 }, %struct.anon.88 { i32 249, i32 12 }, %struct.anon.88 { i32 28, i32 76 }, %struct.anon.88 { i32 2, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 73, i32 28 }, %struct.anon.88 { i32 73, i32 32 }, %struct.anon.88 { i32 0, i32 36 }, %struct.anon.88 { i32 0, i32 40 }, %struct.anon.88 { i32 0, i32 44 }], [19 x %struct.anon.88] zeroinitializer }> }, { i32, i32, <{ [8 x %struct.anon.88], [24 x %struct.anon.88] }> } { i32 74250000, i32 8, <{ [8 x %struct.anon.88], [24 x %struct.anon.88] }> <{ [8 x %struct.anon.88] [%struct.anon.88 { i32 10, i32 24 }, %struct.anon.88 { i32 18, i32 0 }, %struct.anon.88 { i32 1, i32 8 }, %struct.anon.88 { i32 51, i32 12 }, %struct.anon.88 { i32 118, i32 28 }, %struct.anon.88 { i32 230, i32 76 }, %struct.anon.88 { i32 2, i32 80 }, %struct.anon.88 { i32 59, i32 84 }], [24 x %struct.anon.88] zeroinitializer }> }, { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> } { i32 74176000, i32 14, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> <{ [14 x %struct.anon.88] [%struct.anon.88 { i32 24, i32 0 }, %struct.anon.88 { i32 32, i32 8 }, %struct.anon.88 { i32 249, i32 12 }, %struct.anon.88 { i32 229, i32 76 }, %struct.anon.88 { i32 2, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 12, i32 28 }, %struct.anon.88 { i32 76, i32 32 }, %struct.anon.88 { i32 125, i32 36 }, %struct.anon.88 { i32 188, i32 40 }, %struct.anon.88 { i32 0, i32 44 }], [18 x %struct.anon.88] zeroinitializer }> }, { i32, i32, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> } { i32 65000000, i32 14, <{ [14 x %struct.anon.88], [18 x %struct.anon.88] }> <{ [14 x %struct.anon.88] [%struct.anon.88 { i32 24, i32 0 }, %struct.anon.88 { i32 32, i32 8 }, %struct.anon.88 { i32 249, i32 12 }, %struct.anon.88 { i32 138, i32 76 }, %struct.anon.88 { i32 2, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 11, i32 28 }, %struct.anon.88 { i32 75, i32 32 }, %struct.anon.88 { i32 123, i32 36 }, %struct.anon.88 { i32 9, i32 40 }, %struct.anon.88 { i32 0, i32 44 }], [18 x %struct.anon.88] zeroinitializer }> }, { i32, i32, <{ [18 x %struct.anon.88], [14 x %struct.anon.88] }> } { i32 27030000, i32 18, <{ [18 x %struct.anon.88], [14 x %struct.anon.88] }> <{ [18 x %struct.anon.88] [%struct.anon.88 { i32 10, i32 24 }, %struct.anon.88 { i32 56, i32 0 }, %struct.anon.88 { i32 2, i32 4 }, %struct.anon.88 { i32 32, i32 8 }, %struct.anon.88 { i32 255, i32 12 }, %struct.anon.88 { i32 0, i32 28 }, %struct.anon.88 { i32 78, i32 32 }, %struct.anon.88 { i32 215, i32 36 }, %struct.anon.88 { i32 3, i32 40 }, %struct.anon.88 { i32 0, i32 44 }, %struct.anon.88 { i32 42, i32 76 }, %struct.anon.88 { i32 3, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 51, i32 100 }, %struct.anon.88 { i32 0, i32 104 }], [14 x %struct.anon.88] zeroinitializer }> }, %struct.pll_rate { i32 27000000, i32 27, [32 x %struct.anon.88] [%struct.anon.88 { i32 50, i32 0 }, %struct.anon.88 { i32 2, i32 4 }, %struct.anon.88 { i32 1, i32 8 }, %struct.anon.88 { i32 51, i32 12 }, %struct.anon.88 { i32 44, i32 16 }, %struct.anon.88 { i32 6, i32 20 }, %struct.anon.88 { i32 10, i32 24 }, %struct.anon.88 { i32 123, i32 28 }, %struct.anon.88 { i32 1, i32 32 }, %struct.anon.88 { i32 76, i32 36 }, %struct.anon.88 { i32 192, i32 40 }, %struct.anon.88 { i32 0, i32 44 }, %struct.anon.88 { i32 154, i32 48 }, %struct.anon.88 { i32 0, i32 52 }, %struct.anon.88 { i32 0, i32 56 }, %struct.anon.88 { i32 0, i32 60 }, %struct.anon.88 { i32 16, i32 64 }, %struct.anon.88 { i32 26, i32 68 }, %struct.anon.88 { i32 13, i32 72 }, %struct.anon.88 { i32 42, i32 76 }, %struct.anon.88 { i32 3, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 51, i32 100 }, %struct.anon.88 { i32 0, i32 104 }, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer] }, %struct.pll_rate { i32 25200000, i32 27, [32 x %struct.anon.88] [%struct.anon.88 { i32 50, i32 0 }, %struct.anon.88 { i32 2, i32 4 }, %struct.anon.88 { i32 1, i32 8 }, %struct.anon.88 { i32 51, i32 12 }, %struct.anon.88 { i32 44, i32 16 }, %struct.anon.88 { i32 6, i32 20 }, %struct.anon.88 { i32 10, i32 24 }, %struct.anon.88 { i32 119, i32 28 }, %struct.anon.88 { i32 76, i32 32 }, %struct.anon.88 { i32 0, i32 36 }, %struct.anon.88 { i32 192, i32 40 }, %struct.anon.88 { i32 0, i32 44 }, %struct.anon.88 { i32 154, i32 48 }, %struct.anon.88 { i32 0, i32 52 }, %struct.anon.88 { i32 0, i32 56 }, %struct.anon.88 { i32 32, i32 60 }, %struct.anon.88 { i32 16, i32 64 }, %struct.anon.88 { i32 26, i32 68 }, %struct.anon.88 { i32 13, i32 72 }, %struct.anon.88 { i32 244, i32 76 }, %struct.anon.88 { i32 2, i32 80 }, %struct.anon.88 { i32 59, i32 84 }, %struct.anon.88 { i32 0, i32 88 }, %struct.anon.88 { i32 134, i32 92 }, %struct.anon.88 { i32 0, i32 96 }, %struct.anon.88 { i32 51, i32 100 }, %struct.anon.88 { i32 0, i32 104 }, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer, %struct.anon.88 zeroinitializer] } }>, [600 x i8] zeroinitializer }, align 32
@hdmi_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @hdmi_pll_enable, ptr @hdmi_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_pll_recalc_rate, ptr @hdmi_pll_round_rate, ptr null, ptr null, ptr null, ptr @hdmi_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hdmi_pll_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rate=%lu\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxo\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 437, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 437, i32 44 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 439, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"pll_init\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 413, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 448, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"freqtbl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 40, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"hdmi_pll_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 401, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"hdmi_pll_parents\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 409, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 259, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 391, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [44 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 410, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pll_init, ptr @.str.5, ptr @freqtbl, ptr @hdmi_pll_ops, ptr @hdmi_pll_parents, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freqtbl to i32), i32 2376, i32 2976, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_pll_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_pll_8960_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
for.end:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #4
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %for.end.cleanup_crit_edge, label %if.end28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %call29 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  %mmio = getelementptr inbounds %struct.hdmi_pll_8960, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call29, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.cleanup.sink.split_crit_edge, label %if.end33

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end28
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 4
  %clk_hw = getelementptr inbounds %struct.hdmi_pll_8960, ptr %call.i, i32 0, i32 1
  %init = getelementptr inbounds %struct.hdmi_pll_8960, ptr %call.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pll_init, ptr %init, align 4
  %call36 = tail call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %clk_hw) #4
  %cmp.i57 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.end33.cleanup.sink.split_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end33.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.4, %if.end28.cleanup.sink.split_crit_edge ], [ @.str.5, %if.end33.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %if.end28.cleanup.sink.split_crit_edge ], [ -22, %if.end33.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.5.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %mmio.i = getelementptr i8, ptr %hw, i32 12
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  tail call void @msm_writel(i32 noundef 141, ptr noundef %add.ptr.i) #4
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %7, i32 64
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i38) #4
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %9, i32 68
  tail call void @msm_writel(i32 noundef 26, ptr noundef %add.ptr.i40) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #4
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %12, i32 72
  tail call void @msm_writel(i32 noundef 13, ptr noundef %add.ptr.i42) #4
  %mmio.i43 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %14, i32 48
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i44) #4
  %or = or i32 %call.i, 32
  %15 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i46 = getelementptr i8, ptr %16, i32 48
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i46) #4
  %and = and i32 %call.i, -33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #4
  %18 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i48 = getelementptr i8, ptr %19, i32 48
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i48) #4
  %20 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i50 = getelementptr i8, ptr %21, i32 8
  tail call void @msm_writel(i32 noundef 63, ptr noundef %add.ptr.i50) #4
  %22 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i52 = getelementptr i8, ptr %23, i32 48
  %call.i53 = tail call i32 @msm_readl(ptr noundef %add.ptr.i52) #4
  %or3 = or i32 %call.i53, 128
  %24 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i55 = getelementptr i8, ptr %25, i32 48
  tail call void @msm_writel(i32 noundef %or3, ptr noundef %add.ptr.i55) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #4
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %28, i32 24
  %call.i58 = tail call i32 @msm_readl(ptr noundef %add.ptr.i57) #4
  %or5 = and i32 %call.i58, -11
  %and6 = or i32 %or5, 8
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %30, i32 24
  tail call void @msm_writel(i32 noundef %and6, ptr noundef %add.ptr.i60) #4
  %31 = ptrtoint ptr %mmio.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i43, align 4
  %add.ptr.i62 = getelementptr i8, ptr %32, i32 8
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr.i62) #4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %dec71 = phi i32 [ 9, %entry ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %timeout_count.070 = phi i32 [ 1000, %entry ], [ %timeout_count.0.be, %while.cond.backedge.while.body_crit_edge ]
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %34, i32 152
  %call.i65 = tail call i32 @msm_readl(ptr noundef %add.ptr.i64) #4
  %and8 = and i32 %call.i65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #4
  %dec9 = add i32 %timeout_count.070, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec9)
  %cmp10 = icmp sgt i32 %dec9, 0
  br i1 %cmp10, label %if.end.while.cond.backedge_crit_edge, label %if.end12

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %37, i32 72
  tail call void @msm_writel(i32 noundef 141, ptr noundef %add.ptr.i67) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #4
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %40, i32 72
  tail call void @msm_writel(i32 noundef 13, ptr noundef %add.ptr.i69) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 75161800) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end12, %if.end.while.cond.backedge_crit_edge
  %timeout_count.0.be = phi i32 [ %dec9, %if.end.while.cond.backedge_crit_edge ], [ 1000, %if.end12 ]
  %dec = add nsw i32 %dec71, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %while.body.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  %and = and i32 %call.i, -129
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 48
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i12) #4
  %mmio.i13 = getelementptr i8, ptr %hw, i32 12
  %8 = ptrtoint ptr %mmio.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 24
  %call.i15 = tail call i32 @msm_readl(ptr noundef %add.ptr.i14) #4
  %or = and i32 %call.i15, -161
  %and3 = or i32 %or, 32
  %10 = ptrtoint ptr %mmio.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i13, align 4
  %add.ptr.i17 = getelementptr i8, ptr %11, i32 24
  tail call void @msm_writel(i32 noundef %and3, ptr noundef %add.ptr.i17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pixclk = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %pixclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixclk, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 148500000, i32 %rate)
  %cmp2.i = icmp ugt i32 %rate, 148500000
  br i1 %cmp2.i, label %entry.find_rate.exit_crit_edge, label %for.inc.i

entry.find_rate.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000000, i32 %rate)
  %cmp2.1.i = icmp ugt i32 %rate, 108000000
  br i1 %cmp2.1.i, label %for.inc.i.find_rate.exit_crit_edge, label %for.inc.1.i

for.inc.i.find_rate.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250000, i32 %rate)
  %cmp2.2.i = icmp ugt i32 %rate, 74250000
  br i1 %cmp2.2.i, label %for.inc.1.i.find_rate.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.find_rate.exit_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74176000, i32 %rate)
  %cmp2.3.i = icmp ugt i32 %rate, 74176000
  br i1 %cmp2.3.i, label %for.inc.2.i.find_rate.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.find_rate.exit_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000000, i32 %rate)
  %cmp2.4.i = icmp ugt i32 %rate, 65000000
  br i1 %cmp2.4.i, label %for.inc.3.i.find_rate.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.find_rate.exit_crit_edge:             ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27030000, i32 %rate)
  %cmp2.5.i = icmp ugt i32 %rate, 27030000
  br i1 %cmp2.5.i, label %for.inc.4.i.find_rate.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.find_rate.exit_crit_edge:             ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %rate)
  %cmp2.6.i = icmp ugt i32 %rate, 27000000
  br i1 %cmp2.6.i, label %for.inc.5.i.find_rate.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.find_rate.exit_crit_edge:             ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25200000, i32 %rate)
  %cmp2.7.i = icmp ugt i32 %rate, 25200000
  %spec.select.i = select i1 %cmp2.7.i, i32 7, i32 8
  br label %find_rate.exit

find_rate.exit:                                   ; preds = %for.inc.6.i, %for.inc.5.i.find_rate.exit_crit_edge, %for.inc.4.i.find_rate.exit_crit_edge, %for.inc.3.i.find_rate.exit_crit_edge, %for.inc.2.i.find_rate.exit_crit_edge, %for.inc.1.i.find_rate.exit_crit_edge, %for.inc.i.find_rate.exit_crit_edge, %entry.find_rate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.find_rate.exit_crit_edge ], [ 1, %for.inc.i.find_rate.exit_crit_edge ], [ 2, %for.inc.1.i.find_rate.exit_crit_edge ], [ 3, %for.inc.2.i.find_rate.exit_crit_edge ], [ 4, %for.inc.3.i.find_rate.exit_crit_edge ], [ 5, %for.inc.4.i.find_rate.exit_crit_edge ], [ 6, %for.inc.5.i.find_rate.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %retval.0.i = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %i.0.lcssa.i
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retval.0.i, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_pll_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 148500000, i32 %rate)
  %cmp2.i = icmp ugt i32 %rate, 148500000
  br i1 %cmp2.i, label %entry.find_rate.exit_crit_edge, label %for.inc.i

entry.find_rate.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000000, i32 %rate)
  %cmp2.1.i = icmp ugt i32 %rate, 108000000
  br i1 %cmp2.1.i, label %for.inc.i.find_rate.exit_crit_edge, label %for.inc.1.i

for.inc.i.find_rate.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250000, i32 %rate)
  %cmp2.2.i = icmp ugt i32 %rate, 74250000
  br i1 %cmp2.2.i, label %for.inc.1.i.find_rate.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.find_rate.exit_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74176000, i32 %rate)
  %cmp2.3.i = icmp ugt i32 %rate, 74176000
  br i1 %cmp2.3.i, label %for.inc.2.i.find_rate.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.find_rate.exit_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000000, i32 %rate)
  %cmp2.4.i = icmp ugt i32 %rate, 65000000
  br i1 %cmp2.4.i, label %for.inc.3.i.find_rate.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.find_rate.exit_crit_edge:             ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27030000, i32 %rate)
  %cmp2.5.i = icmp ugt i32 %rate, 27030000
  br i1 %cmp2.5.i, label %for.inc.4.i.find_rate.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.find_rate.exit_crit_edge:             ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000000, i32 %rate)
  %cmp2.6.i = icmp ugt i32 %rate, 27000000
  br i1 %cmp2.6.i, label %for.inc.5.i.find_rate.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.find_rate.exit_crit_edge:             ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_rate.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 25200000, i32 %rate)
  %cmp2.7.i = icmp ugt i32 %rate, 25200000
  %spec.select.i = select i1 %cmp2.7.i, i32 7, i32 8
  br label %find_rate.exit

find_rate.exit:                                   ; preds = %for.inc.6.i, %for.inc.5.i.find_rate.exit_crit_edge, %for.inc.4.i.find_rate.exit_crit_edge, %for.inc.3.i.find_rate.exit_crit_edge, %for.inc.2.i.find_rate.exit_crit_edge, %for.inc.1.i.find_rate.exit_crit_edge, %for.inc.i.find_rate.exit_crit_edge, %entry.find_rate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.find_rate.exit_crit_edge ], [ 1, %for.inc.i.find_rate.exit_crit_edge ], [ 2, %for.inc.1.i.find_rate.exit_crit_edge ], [ 3, %for.inc.2.i.find_rate.exit_crit_edge ], [ 4, %for.inc.3.i.find_rate.exit_crit_edge ], [ 5, %for.inc.4.i.find_rate.exit_crit_edge ], [ 6, %for.inc.5.i.find_rate.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %rate) #4
  %num_reg = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %i.0.lcssa.i, i32 1
  %0 = ptrtoint ptr %num_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body.lr.ph, label %find_rate.exit.for.end_crit_edge

find_rate.exit.for.end_crit_edge:                 ; preds = %find_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %find_rate.exit
  %mmio.i = getelementptr i8, ptr %hw, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %i.0.lcssa.i, i32 2, i32 %i.012
  %reg = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %i.0.lcssa.i, i32 2, i32 %i.012, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %3
  tail call void @msm_writel(i32 noundef %5, ptr noundef %add.ptr.i) #4
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %find_rate.exit.for.end_crit_edge
  %pixclk = getelementptr i8, ptr %hw, i32 16
  %8 = ptrtoint ptr %pixclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rate, ptr %pixclk, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 430, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 437, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 437, i32 44}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 439, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 448, i32 3}
!11 = !{ptr @freqtbl, !12, !"freqtbl", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 40, i32 30}
!13 = !{ptr @pll_init, !14, !"pll_init", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 413, i32 29}
!15 = !{ptr @hdmi_pll_ops, !16, !"hdmi_pll_ops", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 401, i32 29}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 259, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 391, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 410, i32 2}
!23 = !{ptr @hdmi_pll_parents, !24, !"hdmi_pll_parents", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c", i32 409, i32 27}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2157257370}
!35 = !{i64 2157261181}
