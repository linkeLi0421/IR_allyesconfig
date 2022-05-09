; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra20.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_mc_client = type { i32, ptr, %union.anon, i32, %struct.anon }
%union.anon = type { i32 }
%struct.anon = type { %struct.anon.0, %struct.anon.1, %struct.anon.2 }
%struct.anon.0 = type { i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32 }
%struct.anon.2 = type { i32, i32 }
%struct.tegra_mc_reset_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_reset = type { ptr, i32, i32, i32, i32, i32 }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.tegra_mc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.69 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.anon.69 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.icc_node_data = type { ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tegra20_mc_client_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tegra20_mc_clients = internal constant { [52 x %struct.tegra_mc_client], [608 x i8] } { [52 x %struct.tegra_mc_client] [%struct.tegra_mc_client { i32 0, ptr @.str, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 1, ptr @.str.1, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 2, ptr @.str.2, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 3, ptr @.str.3, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 4, ptr @.str.4, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 5, ptr @.str.5, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 6, ptr @.str.6, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 7, ptr @.str.7, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 8, ptr @.str.8, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 9, ptr @.str.9, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 10, ptr @.str.10, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 11, ptr @.str.11, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 12, ptr @.str.12, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 13, ptr @.str.13, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 14, ptr @.str.14, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 15, ptr @.str.15, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 16, ptr @.str.16, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 17, ptr @.str.17, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 18, ptr @.str.18, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 19, ptr @.str.19, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 20, ptr @.str.20, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 21, ptr @.str.21, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 22, ptr @.str.22, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 23, ptr @.str.23, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 24, ptr @.str.24, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 25, ptr @.str.25, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 26, ptr @.str.26, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 27, ptr @.str.27, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 28, ptr @.str.28, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 29, ptr @.str.29, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 30, ptr @.str.30, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 31, ptr @.str.31, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 32, ptr @.str.32, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 33, ptr @.str.33, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 34, ptr @.str.34, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 35, ptr @.str.35, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 36, ptr @.str.36, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 37, ptr @.str.37, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 38, ptr @.str.38, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 39, ptr @.str.39, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 40, ptr @.str.40, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 41, ptr @.str.41, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 42, ptr @.str.42, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 43, ptr @.str.43, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 44, ptr @.str.44, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 45, ptr @.str.45, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 46, ptr @.str.46, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 47, ptr @.str.47, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 48, ptr @.str.48, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 49, ptr @.str.49, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 50, ptr @.str.50, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 51, ptr @.str.51, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }], [608 x i8] zeroinitializer }, align 32
@tegra20_mc_reset_ops = internal constant { %struct.tegra_mc_reset_ops, [40 x i8] } { %struct.tegra_mc_reset_ops { ptr @tegra20_mc_hotreset_assert, ptr @tegra20_mc_hotreset_deassert, ptr @tegra20_mc_block_dma, ptr @tegra20_mc_dma_idling, ptr @tegra20_mc_unblock_dma, ptr @tegra20_mc_reset_status }, [40 x i8] zeroinitializer }, align 32
@tegra20_mc_resets = internal constant { [15 x %struct.tegra_mc_reset], [88 x i8] } { [15 x %struct.tegra_mc_reset] [%struct.tegra_mc_reset { ptr @.str.52, i32 0, i32 256, i32 320, i32 260, i32 0 }, %struct.tegra_mc_reset { ptr @.str.53, i32 1, i32 256, i32 324, i32 260, i32 1 }, %struct.tegra_mc_reset { ptr @.str.54, i32 2, i32 256, i32 328, i32 260, i32 2 }, %struct.tegra_mc_reset { ptr @.str.55, i32 3, i32 256, i32 332, i32 260, i32 3 }, %struct.tegra_mc_reset { ptr @.str.56, i32 4, i32 256, i32 336, i32 260, i32 4 }, %struct.tegra_mc_reset { ptr @.str.57, i32 5, i32 256, i32 340, i32 260, i32 5 }, %struct.tegra_mc_reset { ptr @.str.58, i32 6, i32 256, i32 344, i32 260, i32 6 }, %struct.tegra_mc_reset { ptr @.str.59, i32 7, i32 256, i32 348, i32 260, i32 7 }, %struct.tegra_mc_reset { ptr @.str.60, i32 8, i32 256, i32 352, i32 260, i32 8 }, %struct.tegra_mc_reset { ptr @.str.61, i32 9, i32 256, i32 356, i32 260, i32 9 }, %struct.tegra_mc_reset { ptr @.str.62, i32 10, i32 256, i32 360, i32 260, i32 10 }, %struct.tegra_mc_reset { ptr @.str.63, i32 11, i32 256, i32 364, i32 260, i32 11 }, %struct.tegra_mc_reset { ptr @.str.64, i32 12, i32 256, i32 368, i32 260, i32 12 }, %struct.tegra_mc_reset { ptr @.str.65, i32 13, i32 256, i32 372, i32 260, i32 13 }, %struct.tegra_mc_reset { ptr @.str.66, i32 14, i32 256, i32 376, i32 260, i32 14 }], [88 x i8] zeroinitializer }, align 32
@tegra20_mc_icc_ops = internal constant { %struct.tegra_mc_icc_ops, [20 x i8] } { %struct.tegra_mc_icc_ops { ptr @tegra20_mc_icc_set, ptr @tegra20_mc_icc_aggreate, ptr @tegra20_mc_of_icc_xlate_extended }, [20 x i8] zeroinitializer }, align 32
@tegra20_mc_ops = internal constant { %struct.tegra_mc_ops, [40 x i8] } { %struct.tegra_mc_ops { ptr @tegra20_mc_probe, ptr null, ptr @tegra20_mc_suspend, ptr @tegra20_mc_resume, ptr @tegra20_mc_handle_irq, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra20_mc_soc = dso_local constant { %struct.tegra_mc_soc, [40 x i8] } { %struct.tegra_mc_soc { ptr @tegra20_mc_clients, i32 52, ptr null, i32 0, i32 32, i32 0, i8 63, ptr null, i32 448, ptr @tegra20_mc_reset_ops, ptr @tegra20_mc_resets, i32 15, ptr @tegra20_mc_icc_ops, ptr @tegra20_mc_ops }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display0a\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display0ab\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display0b\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display0bb\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display0c\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display0cb\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display1b\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display1bb\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eppup\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2pr\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2sr\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpeunifbr\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viruv\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avpcarm7r\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"displayhc\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"displayhcb\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fdcdrd\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2dr\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host1xdmar\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host1xr\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"idxsrd\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpcorer\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpe_ipred\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpeamemrd\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpecsrd\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbdmar\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbslvr\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"texsrd\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdebsevr\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdember\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdemcer\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdetper\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eppu\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eppv\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eppy\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpeunifbw\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viwsb\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"viwu\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"viwv\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"viwy\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2dw\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avpcarm7w\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fdcdwr\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host1xw\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ispw\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpcorew\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpecswr\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbdmaw\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbslvw\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdebsevw\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdembew\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdetpmw\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVPC\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DC\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCB\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPP\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2D\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HC\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISP\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MPCORE\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPEA\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPEB\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPEC\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3D\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PPCS\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDE\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VI\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vi\00", [29 x i8] zeroinitializer }, align 32
@tegra20_mc_of_icc_xlate_extended._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.71, i32 424, ptr @.str.72, ptr @.str.73 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid ICC client ID %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra20_mc_of_icc_xlate_extended\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/memory/tegra/tegra20.c\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra20_mc_of_icc_xlate_extended._entry_ptr = internal global ptr @tegra20_mc_of_icc_xlate_extended._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@tegra20_mc_stat_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tegra20_mc_stat_lock, i64 52), ptr getelementptr (i8, ptr @tegra20_mc_stat_lock, i64 52) }, ptr @tegra20_mc_stat_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Memory client   Events   Timeout   High priority   Bandwidth ARB   RW change   Successive   Page miss\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"-----------------------------------------------------------------------------------------------------\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%-14s  \00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%-9s\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-10s\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-16s\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-12s\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-13s\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-12s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra20_mc_stat_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra20_mc_stat_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%3u.%02u%%\00", [21 x i8] zeroinitializer }, align 32
@tegra_mc_status_names = external dso_local local_unnamed_addr constant [32 x ptr], align 4
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tegra_mc_error_names = external dso_local local_unnamed_addr constant [8 x ptr], align 4
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"secure \00", [24 x i8] zeroinitializer }, align 32
@tegra20_mc_handle_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.91, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra20_mc_handle_irq = private unnamed_addr constant [22 x i8] c"tegra20_mc_handle_irq\00", align 1
@tegra20_mc_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.tegra20_mc_handle_irq, ptr @.str.71, i32 780, ptr @.str.72, ptr @.str.73 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s%s @%pa: %s (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra20_mc_handle_irq._entry_ptr = internal global ptr @tegra20_mc_handle_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"tegra20_mc_clients\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 90, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"tegra20_mc_reset_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 354, i32 40 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"tegra20_mc_resets\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 260, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"tegra20_mc_icc_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 429, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"tegra20_mc_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 789, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"tegra20_mc_soc\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 796, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 93, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 96, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 99, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 102, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 105, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 108, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 111, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 114, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 117, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 120, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 123, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 126, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 129, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 132, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 135, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 138, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 141, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 144, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 147, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 150, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 153, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 156, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 159, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 162, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 165, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 168, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 171, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 174, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 177, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 180, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 183, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 186, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 189, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 192, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 195, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 198, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 201, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 204, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 207, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 210, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 213, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 216, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 219, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 222, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 225, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 228, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 231, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 234, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 237, i32 11 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 240, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 243, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 246, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 261, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 262, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 263, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 264, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 265, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 266, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 267, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 268, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 269, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 270, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 271, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 272, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 273, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 274, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 275, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 410, i32 29 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 411, i32 29 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 424, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 684, i32 39 }
@___asan_gen_.339 = private unnamed_addr constant [21 x i8] c"tegra20_mc_stat_lock\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 627, i32 14 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 628, i32 14 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 631, i32 17 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 634, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 640, i32 33 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 646, i32 33 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 658, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 668, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 674, i32 33 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 59, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 605, i32 51 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 729, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 729, i32 45 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 744, i32 17 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 765, i32 13 }
@___asan_gen_.390 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.400 = private constant [34 x i8] c"../drivers/memory/tegra/tegra20.c\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 778, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @tegra20_mc_handle_irq._entry, ptr @tegra20_mc_handle_irq._entry_ptr, ptr @tegra20_mc_of_icc_xlate_extended._entry, ptr @tegra20_mc_of_icc_xlate_extended._entry_ptr, ptr @tegra20_mc_clients, ptr @tegra20_mc_reset_ops, ptr @tegra20_mc_resets, ptr @tegra20_mc_icc_ops, ptr @tegra20_mc_ops, ptr @tegra20_mc_soc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @tegra20_mc_stat_lock, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @tegra20_mc_handle_irq._rs, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_clients to i32), i32 2496, i32 3104, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_reset_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_resets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_icc_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_of_icc_xlate_extended._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_stat_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_handle_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_mc_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_hotreset_assert(ptr noundef %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %reset = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 4
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reset, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #11, !srcloc !209
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_hotreset_deassert(ptr noundef %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %reset = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 4
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reset, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #11, !srcloc !209
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_block_dma(ptr noundef %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %control = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 2
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #11, !srcloc !209
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tegra20_mc_dma_idling(ptr nocapture noundef readonly %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_unblock_dma(ptr noundef %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %control = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 2
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #11, !srcloc !209
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_reset_status(ptr nocapture noundef readonly %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 4
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  %7 = xor i32 %4, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, %6
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra20_mc_icc_set(ptr nocapture noundef readnone %src, ptr nocapture noundef readnone %dst) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_icc_aggreate(ptr nocapture noundef readnone %node, i32 noundef %tag, i32 noundef %avg_bw, i32 noundef %peak_bw, ptr nocapture noundef %agg_avg, ptr nocapture noundef %agg_peak) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %tag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %peak_bw to i64
  %mul.i = mul nuw nsw i64 %conv, 300
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i32 0) #14, !srcloc !210
  %asmresult.i.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #14, !srcloc !211
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %div1611.i = lshr i64 %asmresult10.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i)
  %cmp184.i = icmp ult i64 %asmresult10.i.i, 274877906880
  %extract.t.i = trunc i64 %div1611.i to i32
  %cond189.off0.i = select i1 %cmp184.i, i32 %extract.t.i, i32 -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %peak_bw.addr.0 = phi i32 [ %cond189.off0.i, %if.then ], [ %peak_bw, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %agg_avg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agg_avg, align 4
  %add = add i32 %3, %avg_bw
  store i32 %add, ptr %agg_avg, align 4
  %4 = ptrtoint ptr %agg_peak to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agg_peak, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %peak_bw.addr.0)
  %7 = ptrtoint ptr %agg_peak to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agg_peak, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra20_mc_of_icc_xlate_extended(ptr nocapture noundef readonly %spec, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 -84
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %nodes = getelementptr i8, ptr %data, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %nodes, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.cond20.preheader, label %for.body

for.cond20.preheader:                             ; preds = %for.cond
  %soc = getelementptr i8, ptr %data, i32 -60
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 4
  %num_clients = getelementptr inbounds %struct.tegra_mc_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_clients to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_clients, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2159.not = icmp eq i32 %6, 0
  br i1 %cmp2159.not, label %for.cond20.preheader.do.end_crit_edge, label %for.body22.lr.ph

for.cond20.preheader.do.end_crit_edge:            ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %for.body22

for.body:                                         ; preds = %for.cond
  %node.0 = getelementptr i8, ptr %.pn, i32 -20
  %9 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node.0, align 4
  %cmp3.not = icmp eq i32 %10, %1
  br i1 %cmp3.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %node.0.le = getelementptr i8, ptr %.pn, i32 -20
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node.0.le, ptr %call7.i.i, align 8
  %name = getelementptr i8, ptr %.pn, i32 -16
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call1.i = tail call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(8) @.str.67, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.end7.if.then12_crit_edge, label %lor.lhs.false

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end7
  %call1.i55 = tail call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(3) @.str.68, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %cmp.i56 = icmp eq i32 %call1.i55, 0
  br i1 %cmp.i56, label %lor.lhs.false.if.then12_crit_edge, label %if.else

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  %tag = getelementptr inbounds %struct.icc_node_data, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %tag, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %tag13 = getelementptr inbounds %struct.icc_node_data, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %tag13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tag13, align 4
  br label %cleanup

for.cond20:                                       ; preds = %for.body22
  %inc = add nuw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond20.do.end_crit_edge, label %for.cond20.for.body22_crit_edge

for.cond20.for.body22_crit_edge:                  ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

for.cond20.do.end_crit_edge:                      ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body22:                                       ; preds = %for.cond20.for.body22_crit_edge, %for.body22.lr.ph
  %i.060 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc, %for.cond20.for.body22_crit_edge ]
  %arrayidx24 = getelementptr %struct.tegra_mc_client, ptr %8, i32 %i.060
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp26 = icmp eq i32 %18, %1
  br i1 %cmp26, label %for.body22.cleanup_crit_edge, label %for.cond20

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %for.cond20.do.end_crit_edge, %for.cond20.preheader.do.end_crit_edge
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.69, i32 noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body22.cleanup_crit_edge, %if.else, %if.then12, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %if.else ], [ %call7.i.i, %if.then12 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %for.body22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_probe(ptr nocapture noundef readonly %mc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc, align 4
  %debugfs = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 13
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef %3, ptr noundef nonnull @tegra20_mc_stats_show) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_suspend(ptr nocapture noundef readonly %mc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 2
  %0 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @tegra_gart_suspend(ptr noundef nonnull %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_resume(ptr nocapture noundef readonly %mc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 2
  %0 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @tegra_gart_resume(ptr noundef nonnull %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %status = alloca i32, align 4
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !208
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %intmask = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intmask, align 4
  %and = and i32 %7, %3
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

if.end:                                           ; preds = %entry
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1)
  %cmp94 = icmp ult i32 %call1, 32
  br i1 %cmp94, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %bit.095 = phi i32 [ %call57, %cleanup.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @tegra_mc_status_names, i32 0, i32 %bit.095
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #11
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %addr, align 4, !annotation !212
  %shl = shl nuw i32 1, %bit.095
  %12 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl, label %for.body.cleanup_crit_edge [
    i32 64, label %sw.bb
    i32 128, label %sw.bb10
    i32 256, label %sw.bb21
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 88
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !208
  %16 = call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 4
  %client_id_mask = getelementptr inbounds %struct.tegra_mc_soc, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %client_id_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %client_id_mask, align 4
  %21 = trunc i32 %16 to i8
  %conv5 = and i8 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool7.not = icmp sgt i32 %16, -1
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %23, i32 48
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #11, !srcloc !208
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  %shr = lshr i32 %25, 1
  %26 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc, align 4
  %client_id_mask13 = getelementptr inbounds %struct.tegra_mc_soc, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %client_id_mask13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %client_id_mask13, align 4
  %30 = trunc i32 %shr to i8
  %conv16 = and i8 %29, %30
  %and17 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %32, i32 116
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #11, !srcloc !208
  %34 = call i32 @llvm.bswap.i32(i32 %33) #11
  %35 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc, align 4
  %client_id_mask24 = getelementptr inbounds %struct.tegra_mc_soc, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %client_id_mask24 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %client_id_mask24, align 4
  %39 = trunc i32 %34 to i8
  %conv27 = and i8 %38, %39
  %and28 = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %idxprom = select i1 %tobool29.not, i32 3, i32 4
  %arrayidx31 = getelementptr [8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool33.not = icmp sgt i32 %34, -1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb10, %sw.bb
  %tobool33.not.sink = phi i1 [ %tobool33.not, %sw.bb21 ], [ %tobool18.not, %sw.bb10 ], [ %tobool7.not, %sw.bb ]
  %secure.0 = phi ptr [ @.str.90, %sw.bb21 ], [ @.str.88, %sw.bb10 ], [ @.str.88, %sw.bb ]
  %desc.0.in = phi ptr [ %arrayidx31, %sw.bb21 ], [ getelementptr inbounds ([8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 2), %sw.bb10 ], [ getelementptr inbounds ([8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 2), %sw.bb ]
  %reg.0 = phi i32 [ 120, %sw.bb21 ], [ 52, %sw.bb10 ], [ 92, %sw.bb ]
  %id.0 = phi i8 [ %conv27, %sw.bb21 ], [ %conv16, %sw.bb10 ], [ %conv5, %sw.bb ]
  %40 = ptrtoint ptr %desc.0.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %desc.0 = load ptr, ptr %desc.0.in, align 4
  %41 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %soc, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %idxprom37 = zext i8 %id.0 to i32
  %name = getelementptr %struct.tegra_mc_client, ptr %44, i32 %idxprom37, i32 1
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %48, i32 %reg.0
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #11, !srcloc !208
  %50 = call i32 @llvm.bswap.i32(i32 %49) #11
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %addr, align 4
  %call40 = call i32 @___ratelimit(ptr noundef nonnull @tegra20_mc_handle_irq._rs, ptr noundef nonnull @__func__.tegra20_mc_handle_irq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select85 = select i1 %tobool33.not.sink, ptr @.str.87, ptr @.str.89
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.92, ptr noundef %46, ptr noundef nonnull %secure.0, ptr noundef nonnull %spec.select85, ptr noundef nonnull %addr, ptr noundef %10, ptr noundef %desc.0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  %add56 = add nuw nsw i32 %bit.095, 1
  %call57 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef %add56) #11
  %cmp = icmp ult i32 %call57, 32
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #11
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !209
  br label %cleanup58

cleanup58:                                        ; preds = %for.end, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_mc_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %percents_str.i65 = alloca [8 x i8], align 8
  %percents_str.i61 = alloca [8 x i8], align 8
  %percents_str.i57 = alloca [8 x i8], align 8
  %percents_str.i53 = alloca [8 x i8], align 8
  %percents_str.i49 = alloca [8 x i8], align 8
  %percents_str.i45 = alloca [8 x i8], align 8
  %percents_str.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %num_clients = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_clients to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clients, align 4
  %add = add i32 %7, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 40) #11
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !213

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @tegra20_mc_stat_lock, i32 noundef 0) #11
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 4
  %num_clients158.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %num_clients158.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clients158.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp159.not.i = icmp eq i32 %14, 0
  br i1 %cmp159.not.i, label %if.end.for.cond15.preheader.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.cond15.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.body.i.for.cond15.preheader.i_crit_edge, %if.end.for.cond15.preheader.i_crit_edge
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %num_clients17166.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %num_clients17166.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_clients17166.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18167.not.i = icmp eq i32 %18, 0
  br i1 %cmp18167.not.i, label %for.cond15.preheader.i.tegra20_mc_collect_stats.exit_crit_edge, label %for.cond15.preheader.i.for.cond22.preheader.i_crit_edge

for.cond15.preheader.i.for.cond22.preheader.i_crit_edge: ; preds = %for.cond15.preheader.i
  br label %for.cond22.preheader.i

for.cond15.preheader.i.tegra20_mc_collect_stats.exit_crit_edge: ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra20_mc_collect_stats.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %19 = phi i32 [ %26, %for.body.i.for.body.i_crit_edge ], [ %14, %if.end.for.body.i_crit_edge ]
  %20 = phi ptr [ %24, %for.body.i.for.body.i_crit_edge ], [ %12, %if.end.for.body.i_crit_edge ]
  %i.0160.i = phi i32 [ %add14.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx.i = getelementptr %struct.tegra_mc_client, ptr %22, i32 %i.0160.i
  %add.i = or i32 %i.0160.i, 1
  %arrayidx4.i = getelementptr %struct.tegra_mc_client, ptr %22, i32 %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %19)
  %cmp8.i = icmp eq i32 %add.i, %19
  %spec.select.i = select i1 %cmp8.i, ptr null, ptr %arrayidx4.i
  %arrayidx10.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.0160.i
  %arrayidx12.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %add.i
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %arrayidx.i, ptr noundef %spec.select.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %arrayidx10.i, ptr noundef %arrayidx12.i) #11
  %add14.i = add i32 %i.0160.i, 2
  %23 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc, align 4
  %num_clients.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %num_clients.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_clients.i, align 4
  %cmp.i = icmp ult i32 %add14.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond15.preheader.i_crit_edge

for.body.i.for.cond15.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond22.preheader.i:                           ; preds = %for.inc76.i.for.cond22.preheader.i_crit_edge, %for.cond15.preheader.i.for.cond22.preheader.i_crit_edge
  %27 = phi i32 [ %40, %for.inc76.i.for.cond22.preheader.i_crit_edge ], [ %18, %for.cond15.preheader.i.for.cond22.preheader.i_crit_edge ]
  %28 = phi ptr [ %38, %for.inc76.i.for.cond22.preheader.i_crit_edge ], [ %16, %for.cond15.preheader.i.for.cond22.preheader.i_crit_edge ]
  %i.1168.i = phi i32 [ %inc77.i, %for.inc76.i.for.cond22.preheader.i_crit_edge ], [ 0, %for.cond15.preheader.i.for.cond22.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1168.i, i32 %27)
  %cmp25161.i = icmp ult i32 %i.1168.i, %27
  br i1 %cmp25161.i, label %for.cond22.preheader.i.for.body26.i_crit_edge, label %for.cond22.preheader.i.for.end36.i_crit_edge

for.cond22.preheader.i.for.end36.i_crit_edge:     ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36.i

for.cond22.preheader.i.for.body26.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc34.i.for.body26.i_crit_edge, %for.cond22.preheader.i.for.body26.i_crit_edge
  %i.2162.i = phi i32 [ %inc35.i, %for.inc34.i.for.body26.i_crit_edge ], [ %i.1168.i, %for.cond22.preheader.i.for.body26.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.2162.i
  %29 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %for.inc34.i, label %if.then29.i

if.then29.i:                                      ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %arrayidx32.i = getelementptr %struct.tegra_mc_client, ptr %32, i32 %i.2162.i
  %inc.i = add nuw i32 %i.2162.i, 1
  br label %for.end36.i

for.inc34.i:                                      ; preds = %for.body26.i
  %inc35.i = add nuw i32 %i.2162.i, 1
  %exitcond.not.i = icmp eq i32 %inc35.i, %27
  br i1 %exitcond.not.i, label %for.inc34.i.for.end52.i_crit_edge, label %for.inc34.i.for.body26.i_crit_edge

for.inc34.i.for.body26.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26.i

for.inc34.i.for.end52.i_crit_edge:                ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52.i

for.end36.i:                                      ; preds = %if.then29.i, %for.cond22.preheader.i.for.end36.i_crit_edge
  %client0.0.i = phi ptr [ %arrayidx32.i, %if.then29.i ], [ null, %for.cond22.preheader.i.for.end36.i_crit_edge ]
  %i.3.i = phi i32 [ %inc.i, %if.then29.i ], [ %i.1168.i, %for.cond22.preheader.i.for.end36.i_crit_edge ]
  %clienta.0.i = phi i32 [ %i.2162.i, %if.then29.i ], [ -1, %for.cond22.preheader.i.for.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.i, i32 %27)
  %cmp40163.i = icmp ult i32 %i.3.i, %27
  br i1 %cmp40163.i, label %for.end36.i.for.body41.i_crit_edge, label %for.end36.i.for.end52.i_crit_edge

for.end36.i.for.end52.i_crit_edge:                ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52.i

for.end36.i.for.body41.i_crit_edge:               ; preds = %for.end36.i
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc50.i.for.body41.i_crit_edge, %for.end36.i.for.body41.i_crit_edge
  %i.4164.i = phi i32 [ %inc51.i, %for.inc50.i.for.body41.i_crit_edge ], [ %i.3.i, %for.end36.i.for.body41.i_crit_edge ]
  %arrayidx42.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.4164.i
  %33 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool44.not.i = icmp eq i32 %34, 0
  br i1 %tobool44.not.i, label %for.inc50.i, label %if.then45.i

if.then45.i:                                      ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 4
  %arrayidx48.i = getelementptr %struct.tegra_mc_client, ptr %36, i32 %i.4164.i
  br label %for.end52.i

for.inc50.i:                                      ; preds = %for.body41.i
  %inc51.i = add i32 %i.4164.i, 1
  %exitcond171.not.i = icmp eq i32 %inc51.i, %27
  br i1 %exitcond171.not.i, label %for.inc50.i.for.end52.i_crit_edge, label %for.inc50.i.for.body41.i_crit_edge

for.inc50.i.for.body41.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41.i

for.inc50.i.for.end52.i_crit_edge:                ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52.i

for.end52.i:                                      ; preds = %for.inc50.i.for.end52.i_crit_edge, %if.then45.i, %for.end36.i.for.end52.i_crit_edge, %for.inc34.i.for.end52.i_crit_edge
  %clienta.0177.i = phi i32 [ %clienta.0.i, %if.then45.i ], [ %clienta.0.i, %for.end36.i.for.end52.i_crit_edge ], [ %clienta.0.i, %for.inc50.i.for.end52.i_crit_edge ], [ -1, %for.inc34.i.for.end52.i_crit_edge ]
  %client0.0176.i = phi ptr [ %client0.0.i, %if.then45.i ], [ %client0.0.i, %for.end36.i.for.end52.i_crit_edge ], [ %client0.0.i, %for.inc50.i.for.end52.i_crit_edge ], [ null, %for.inc34.i.for.end52.i_crit_edge ]
  %i.4157.i = phi i32 [ %i.4164.i, %if.then45.i ], [ %i.3.i, %for.end36.i.for.end52.i_crit_edge ], [ %27, %for.inc50.i.for.end52.i_crit_edge ], [ %27, %for.inc34.i.for.end52.i_crit_edge ]
  %client1.1.i = phi ptr [ %arrayidx48.i, %if.then45.i ], [ null, %for.end36.i.for.end52.i_crit_edge ], [ null, %for.inc50.i.for.end52.i_crit_edge ], [ null, %for.inc34.i.for.end52.i_crit_edge ]
  %clientb.0.i = phi i32 [ %i.4164.i, %if.then45.i ], [ %27, %for.end36.i.for.end52.i_crit_edge ], [ %27, %for.inc50.i.for.end52.i_crit_edge ], [ %27, %for.inc34.i.for.end52.i_crit_edge ]
  %tobool53.not.i = icmp eq ptr %client0.0176.i, null
  %tobool54.not.i = icmp eq ptr %client1.1.i, null
  %or.cond.i = select i1 %tobool53.not.i, i1 %tobool54.not.i, i1 false
  br i1 %or.cond.i, label %for.end52.i.tegra20_mc_collect_stats.exit_crit_edge, label %for.inc76.i

for.end52.i.tegra20_mc_collect_stats.exit_crit_edge: ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra20_mc_collect_stats.exit

for.inc76.i:                                      ; preds = %for.end52.i
  %arb_high_prio.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clienta.0177.i, i32 1
  %arb_high_prio59.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clientb.0.i, i32 1
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %client0.0176.i, ptr noundef %client1.1.i, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef %arb_high_prio.i, ptr noundef %arb_high_prio59.i) #11
  %arb_timeout.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clienta.0177.i, i32 2
  %arb_timeout62.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clientb.0.i, i32 2
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %client0.0176.i, ptr noundef %client1.1.i, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef %arb_timeout.i, ptr noundef %arb_timeout62.i) #11
  %arb_bandwidth.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clienta.0177.i, i32 3
  %arb_bandwidth65.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clientb.0.i, i32 3
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %client0.0176.i, ptr noundef %client1.1.i, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef %arb_bandwidth.i, ptr noundef %arb_bandwidth65.i) #11
  %rd_wr_change.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clienta.0177.i, i32 4
  %rd_wr_change68.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clientb.0.i, i32 4
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %client0.0176.i, ptr noundef %client1.1.i, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef %rd_wr_change.i, ptr noundef %rd_wr_change68.i) #11
  %successive.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clienta.0177.i, i32 5
  %successive71.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clientb.0.i, i32 5
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %client0.0176.i, ptr noundef %client1.1.i, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %successive.i, ptr noundef %successive71.i) #11
  %page_miss.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clienta.0177.i, i32 6
  %page_miss74.i = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %clientb.0.i, i32 6
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %3, ptr noundef %client0.0176.i, ptr noundef %client1.1.i, i32 noundef 0, i32 noundef 0, i32 noundef 7, ptr noundef %page_miss.i, ptr noundef %page_miss74.i) #11
  %inc77.i = add i32 %i.4157.i, 1
  %37 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc, align 4
  %num_clients17.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %num_clients17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_clients17.i, align 4
  %cmp18.i = icmp ult i32 %inc77.i, %40
  br i1 %cmp18.i, label %for.inc76.i.for.cond22.preheader.i_crit_edge, label %for.inc76.i.tegra20_mc_collect_stats.exit_crit_edge

for.inc76.i.tegra20_mc_collect_stats.exit_crit_edge: ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra20_mc_collect_stats.exit

for.inc76.i.for.cond22.preheader.i_crit_edge:     ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond22.preheader.i

tegra20_mc_collect_stats.exit:                    ; preds = %for.inc76.i.tegra20_mc_collect_stats.exit_crit_edge, %for.end52.i.tegra20_mc_collect_stats.exit_crit_edge, %for.cond15.preheader.i.tegra20_mc_collect_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tegra20_mc_stat_lock) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.75) #11
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.76) #11
  %41 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %soc, align 4
  %num_clients378 = getelementptr inbounds %struct.tegra_mc_soc, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %num_clients378 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_clients378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp79.not = icmp eq i32 %44, 0
  br i1 %cmp79.not, label %tegra20_mc_collect_stats.exit.for.end_crit_edge, label %tegra20_mc_collect_stats.exit.for.body_crit_edge

tegra20_mc_collect_stats.exit.for.body_crit_edge: ; preds = %tegra20_mc_collect_stats.exit
  br label %for.body

tegra20_mc_collect_stats.exit.for.end_crit_edge:  ; preds = %tegra20_mc_collect_stats.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %tegra20_mc_collect_stats.exit.for.body_crit_edge
  %45 = phi ptr [ %79, %for.body.for.body_crit_edge ], [ %42, %tegra20_mc_collect_stats.exit.for.body_crit_edge ]
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %tegra20_mc_collect_stats.exit.for.body_crit_edge ]
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %name = getelementptr %struct.tegra_mc_client, ptr %47, i32 %i.080, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, ptr noundef %49) #11
  %arrayidx5 = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080
  %50 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i) #11
  %.frozen = freeze i32 %51
  %div.i = udiv i32 %.frozen, 100
  %52 = mul i32 %div.i, 100
  %rem.i.decomposed = sub i32 %.frozen, %52
  %53 = ptrtoint ptr %percents_str.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %percents_str.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i, i32 noundef %rem.i.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, ptr noundef nonnull %percents_str.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i) #11
  %arb_timeout = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080, i32 2
  %54 = ptrtoint ptr %arb_timeout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arb_timeout, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i45) #11
  %.frozen95 = freeze i32 %55
  %div.i46 = udiv i32 %.frozen95, 100
  %56 = mul i32 %div.i46, 100
  %rem.i47.decomposed = sub i32 %.frozen95, %56
  %57 = ptrtoint ptr %percents_str.i45 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 -1, ptr %percents_str.i45, align 8
  %call.i48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i45, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i46, i32 noundef %rem.i47.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull %percents_str.i45) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i45) #11
  %arb_high_prio = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080, i32 1
  %58 = ptrtoint ptr %arb_high_prio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arb_high_prio, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i49) #11
  %.frozen96 = freeze i32 %59
  %div.i50 = udiv i32 %.frozen96, 100
  %60 = mul i32 %div.i50, 100
  %rem.i51.decomposed = sub i32 %.frozen96, %60
  %61 = ptrtoint ptr %percents_str.i49 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %percents_str.i49, align 8
  %call.i52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i49, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i50, i32 noundef %rem.i51.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, ptr noundef nonnull %percents_str.i49) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i49) #11
  %arb_bandwidth = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080, i32 3
  %62 = ptrtoint ptr %arb_bandwidth to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arb_bandwidth, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i53) #11
  %.frozen97 = freeze i32 %63
  %div.i54 = udiv i32 %.frozen97, 100
  %64 = mul i32 %div.i54, 100
  %rem.i55.decomposed = sub i32 %.frozen97, %64
  %65 = ptrtoint ptr %percents_str.i53 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -1, ptr %percents_str.i53, align 8
  %call.i56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i53, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i54, i32 noundef %rem.i55.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, ptr noundef nonnull %percents_str.i53) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i53) #11
  %rd_wr_change = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080, i32 4
  %66 = ptrtoint ptr %rd_wr_change to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rd_wr_change, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i57) #11
  %.frozen98 = freeze i32 %67
  %div.i58 = udiv i32 %.frozen98, 100
  %68 = mul i32 %div.i58, 100
  %rem.i59.decomposed = sub i32 %.frozen98, %68
  %69 = ptrtoint ptr %percents_str.i57 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 -1, ptr %percents_str.i57, align 8
  %call.i60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i57, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i58, i32 noundef %rem.i59.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, ptr noundef nonnull %percents_str.i57) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i57) #11
  %successive = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080, i32 5
  %70 = ptrtoint ptr %successive to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %successive, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i61) #11
  %.frozen99 = freeze i32 %71
  %div.i62 = udiv i32 %.frozen99, 100
  %72 = mul i32 %div.i62, 100
  %rem.i63.decomposed = sub i32 %.frozen99, %72
  %73 = ptrtoint ptr %percents_str.i61 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 -1, ptr %percents_str.i61, align 8
  %call.i64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i61, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i62, i32 noundef %rem.i63.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, ptr noundef nonnull %percents_str.i61) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i61) #11
  %page_miss = getelementptr %struct.tegra20_mc_client_stat, ptr %call8.i.i, i32 %i.080, i32 6
  %74 = ptrtoint ptr %page_miss to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %page_miss, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %percents_str.i65) #11
  %.frozen100 = freeze i32 %75
  %div.i66 = udiv i32 %.frozen100, 100
  %76 = mul i32 %div.i66, 100
  %rem.i67.decomposed = sub i32 %.frozen100, %76
  %77 = ptrtoint ptr %percents_str.i65 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %percents_str.i65, align 8
  %call.i68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %percents_str.i65, i32 noundef 8, ptr noundef nonnull @.str.86, i32 noundef %div.i66, i32 noundef %rem.i67.decomposed) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, ptr noundef nonnull %percents_str.i65) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %percents_str.i65) #11
  %inc = add nuw i32 %i.080, 1
  %78 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %soc, align 4
  %num_clients3 = getelementptr inbounds %struct.tegra_mc_soc, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %num_clients3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_clients3, align 4
  %cmp = icmp ult i32 %inc, %81
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tegra20_mc_collect_stats.exit.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra20_mc_stat_events(ptr noundef %mc, ptr noundef readonly %client0, ptr noundef readonly %client1, i32 noundef %pri_filter, i32 noundef %pri_event, i32 noundef %event, ptr nocapture noundef writeonly %result0, ptr nocapture noundef writeonly %result1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %client0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client0, align 4
  %phi.bo = shl i32 %1, 8
  %phi.bo42 = and i32 %phi.bo, 16128
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo42, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %tobool10.not = icmp eq ptr %client1, null
  br i1 %tobool10.not, label %cond.end.tegra20_mc_stat_gather.exit_crit_edge, label %cond.true11

cond.end.tegra20_mc_stat_gather.exit_crit_edge:   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra20_mc_stat_gather.exit

cond.true11:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %client1, align 4
  %phi.bo43 = shl i32 %3, 8
  %phi.bo44 = and i32 %phi.bo43, 16128
  br label %tegra20_mc_stat_gather.exit

tegra20_mc_stat_gather.exit:                      ; preds = %cond.true11, %cond.end.tegra20_mc_stat_gather.exit_crit_edge
  %shl124.i67.i = phi i32 [ 67108864, %cond.true11 ], [ 0, %cond.end.tegra20_mc_stat_gather.exit_crit_edge ]
  %cond15 = phi i32 [ %phi.bo44, %cond.true11 ], [ 0, %cond.end.tegra20_mc_stat_gather.exit_crit_edge ]
  %shl.i.i = shl i32 %event, 16
  %and15.i.i = and i32 %shl.i.i, 16711680
  %shl66.i.i = shl i32 %pri_event, 24
  %and67.i.i = and i32 %shl66.i.i, 50331648
  %shl93.i.i = shl i32 %pri_filter, 28
  %and94.i.i = and i32 %shl93.i.i, 805306368
  %shl124.i.i = select i1 %tobool.not, i32 0, i32 67108864
  %or.i.i = or i32 %and67.i.i, %and94.i.i
  %or68.i.i = or i32 %or.i.i, %shl124.i.i
  %or95.i.i = or i32 %or68.i.i, %and15.i.i
  %or126.i.i = or i32 %or95.i.i, %cond
  %or68.i63.i = or i32 %or.i.i, %shl124.i67.i
  %or95.i66.i = or i32 %or68.i63.i, %and15.i.i
  %or126.i68.i = or i32 %or95.i66.i, %cond15
  %regs.i.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !209
  %6 = tail call i32 @llvm.bswap.i32(i32 %or126.i.i) #11
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %8, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %6) #11, !srcloc !209
  %9 = tail call i32 @llvm.bswap.i32(i32 %or126.i68.i) #11
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %11, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 %9) #11, !srcloc !209
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %13, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 -1) #11, !srcloc !209
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %15, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 196608) #11, !srcloc !209
  tail call void @usleep_range_state(i32 noundef 16000, i32 noundef 32000, i32 noundef 2) #11
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %17, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 131072) #11, !srcloc !209
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %19, i32 184
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #11, !srcloc !208
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %23, i32 188
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #11, !srcloc !208
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %27, i32 164
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #11, !srcloc !208
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %29)
  %cmp.i = icmp ugt i32 %29, 19999
  %div6.i = udiv i32 %29, 10000
  %cond.i = select i1 %cmp.i, i32 %div6.i, i32 1
  %add.i = add nsw i32 %cond.i, -1
  %sub.i = add i32 %add.i, %21
  %div7.i = udiv i32 %sub.i, %cond.i
  %sub10.i = add i32 %add.i, %25
  %div11.i = udiv i32 %sub10.i, %cond.i
  %30 = ptrtoint ptr %result0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div7.i, ptr %result0, align 4
  %31 = ptrtoint ptr %result1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div11.i, ptr %result1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_gart_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_gart_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153, !154, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @tegra20_mc_soc, !1, !"tegra20_mc_soc", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra20.c", i32 796, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/memory/tegra/tegra20.c", i32 93, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/memory/tegra/tegra20.c", i32 96, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/memory/tegra/tegra20.c", i32 99, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/tegra/tegra20.c", i32 102, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra20.c", i32 105, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/tegra/tegra20.c", i32 108, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/tegra/tegra20.c", i32 111, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/tegra/tegra20.c", i32 114, i32 11}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/tegra/tegra20.c", i32 117, i32 11}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/tegra/tegra20.c", i32 120, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/tegra/tegra20.c", i32 123, i32 11}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/tegra/tegra20.c", i32 126, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/tegra/tegra20.c", i32 129, i32 11}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/tegra/tegra20.c", i32 132, i32 11}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/tegra/tegra20.c", i32 135, i32 11}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/tegra/tegra20.c", i32 138, i32 11}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/tegra/tegra20.c", i32 141, i32 11}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/tegra/tegra20.c", i32 144, i32 11}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/tegra/tegra20.c", i32 147, i32 11}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/tegra/tegra20.c", i32 150, i32 11}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/tegra/tegra20.c", i32 153, i32 11}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/tegra/tegra20.c", i32 156, i32 11}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/tegra/tegra20.c", i32 159, i32 11}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/tegra/tegra20.c", i32 162, i32 11}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memory/tegra/tegra20.c", i32 165, i32 11}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/tegra/tegra20.c", i32 168, i32 11}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/tegra/tegra20.c", i32 171, i32 11}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/tegra/tegra20.c", i32 174, i32 11}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/tegra/tegra20.c", i32 177, i32 11}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/tegra/tegra20.c", i32 180, i32 11}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/tegra/tegra20.c", i32 183, i32 11}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/tegra/tegra20.c", i32 186, i32 11}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/tegra/tegra20.c", i32 189, i32 11}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/tegra/tegra20.c", i32 192, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/tegra/tegra20.c", i32 195, i32 11}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/tegra/tegra20.c", i32 198, i32 11}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/tegra/tegra20.c", i32 201, i32 11}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/tegra/tegra20.c", i32 204, i32 11}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/tegra/tegra20.c", i32 207, i32 11}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/tegra/tegra20.c", i32 210, i32 11}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/tegra/tegra20.c", i32 213, i32 11}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/tegra/tegra20.c", i32 216, i32 11}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/tegra/tegra20.c", i32 219, i32 11}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/tegra/tegra20.c", i32 222, i32 11}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/memory/tegra/tegra20.c", i32 225, i32 11}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/tegra/tegra20.c", i32 228, i32 11}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memory/tegra/tegra20.c", i32 231, i32 11}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memory/tegra/tegra20.c", i32 234, i32 11}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/memory/tegra/tegra20.c", i32 237, i32 11}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/memory/tegra/tegra20.c", i32 240, i32 11}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memory/tegra/tegra20.c", i32 243, i32 11}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/memory/tegra/tegra20.c", i32 246, i32 11}
!106 = !{ptr @tegra20_mc_clients, !107, !"tegra20_mc_clients", i1 false, i1 false}
!107 = !{!"../drivers/memory/tegra/tegra20.c", i32 90, i32 37}
!108 = !{ptr @tegra20_mc_reset_ops, !109, !"tegra20_mc_reset_ops", i1 false, i1 false}
!109 = !{!"../drivers/memory/tegra/tegra20.c", i32 354, i32 40}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memory/tegra/tegra20.c", i32 261, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/memory/tegra/tegra20.c", i32 262, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/memory/tegra/tegra20.c", i32 263, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/tegra/tegra20.c", i32 264, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/memory/tegra/tegra20.c", i32 265, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/memory/tegra/tegra20.c", i32 266, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memory/tegra/tegra20.c", i32 267, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memory/tegra/tegra20.c", i32 268, i32 2}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/memory/tegra/tegra20.c", i32 269, i32 2}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/memory/tegra/tegra20.c", i32 270, i32 2}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memory/tegra/tegra20.c", i32 271, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/memory/tegra/tegra20.c", i32 272, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memory/tegra/tegra20.c", i32 273, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/memory/tegra/tegra20.c", i32 274, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/memory/tegra/tegra20.c", i32 275, i32 2}
!140 = !{ptr @tegra20_mc_resets, !141, !"tegra20_mc_resets", i1 false, i1 false}
!141 = !{!"../drivers/memory/tegra/tegra20.c", i32 260, i32 36}
!142 = !{ptr @tegra20_mc_icc_ops, !143, !"tegra20_mc_icc_ops", i1 false, i1 false}
!143 = !{!"../drivers/memory/tegra/tegra20.c", i32 429, i32 38}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/memory/tegra/tegra20.c", i32 410, i32 29}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/memory/tegra/tegra20.c", i32 411, i32 29}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/memory/tegra/tegra20.c", i32 424, i32 2}
!150 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tegra20_mc_of_icc_xlate_extended._entry, !149, !"_entry", i1 false, i1 false}
!155 = !{ptr @tegra20_mc_of_icc_xlate_extended._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @tegra20_mc_ops, !157, !"tegra20_mc_ops", i1 false, i1 false}
!157 = !{!"../drivers/memory/tegra/tegra20.c", i32 789, i32 34}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memory/tegra/tegra20.c", i32 684, i32 39}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memory/tegra/tegra20.c", i32 627, i32 14}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/memory/tegra/tegra20.c", i32 628, i32 14}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/memory/tegra/tegra20.c", i32 631, i32 17}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/memory/tegra/tegra20.c", i32 634, i32 34}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/memory/tegra/tegra20.c", i32 640, i32 33}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memory/tegra/tegra20.c", i32 646, i32 33}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/memory/tegra/tegra20.c", i32 658, i32 33}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/memory/tegra/tegra20.c", i32 668, i32 33}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/memory/tegra/tegra20.c", i32 674, i32 33}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/memory/tegra/tegra20.c", i32 59, i32 8}
!180 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tegra20_mc_stat_lock, !179, !"tegra20_mc_stat_lock", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/memory/tegra/tegra20.c", i32 605, i32 51}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/memory/tegra/tegra20.c", i32 729, i32 27}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/memory/tegra/tegra20.c", i32 729, i32 45}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/memory/tegra/tegra20.c", i32 744, i32 17}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/memory/tegra/tegra20.c", i32 765, i32 13}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/memory/tegra/tegra20.c", i32 778, i32 3}
!194 = !{ptr @tegra20_mc_handle_irq._rs, !193, !"_rs", i1 false, i1 false}
!195 = !{ptr @__func__.tegra20_mc_handle_irq, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tegra20_mc_handle_irq._entry, !193, !"_entry", i1 false, i1 false}
!198 = !{ptr @tegra20_mc_handle_irq._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{i64 5401671}
!209 = !{i64 5401253}
!210 = !{i64 612642, i64 612669, i64 612691, i64 612719}
!211 = !{i64 613050, i64 613077, i64 613110, i64 613131, i64 613158, i64 613184}
!212 = !{!"auto-init"}
!213 = !{!"branch_weights", i32 1, i32 2000}
