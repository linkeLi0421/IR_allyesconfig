; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-audio.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.43 = type { i32, i32, i8, i8, i16 }
%struct.anon.44 = type { i8, i8, i8 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.mmp2_audio_clk = type { ptr, %struct.clk_hw, %struct.clk_mux, %struct.clk_mux, %struct.clk_divider, %struct.clk_divider, %struct.clk_divider, %struct.clk_gate, %struct.clk_gate, %struct.clk_gate, i32, i32, i32, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_audio__184_441_mmp2_audio_clk_driver_init6 = internal global ptr @mmp2_audio_clk_driver_init, section ".initcall6.init", align 4
@mmp2_audio_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmp2_audio_clk_probe, ptr @mmp2_audio_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmp2_audio_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp2_audio_clk_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmp2_audio_clk_driver_exit = internal global ptr @mmp2_audio_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [49 x i8] c"clk_audio.author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [60 x i8] c"clk_audio.description=Clock driver for MMP2 Audio subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [41 x i8] c"clk_audio.file=drivers/clk/mmp/clk-audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [22 x i8] c"clk_audio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmp2-audio-clock\00", [47 x i8] zeroinitializer }, align 32
@mmp2_audio_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-audio-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mmp2_audio_clk_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp2_audio_clk_suspend, ptr @mmp2_audio_clk_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mmp2_audio_clk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s0\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_pll\00", [22 x i8] zeroinitializer }, align 32
@audio_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @audio_pll_recalc_rate, ptr @audio_pll_round_rate, ptr null, ptr null, ptr null, ptr @audio_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vctcxo\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sspa_mux\00", [23 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_div\00", [24 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_clk\00", [24 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sspa0_div\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sspa0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sspa1_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sspa1_div\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sspa1_clk\00", [22 x i8] zeroinitializer }, align 32
@predivs = internal constant { [4 x %struct.anon.43], [48 x i8] } { [4 x %struct.anon.43] [%struct.anon.43 { i32 26000000, i32 135475200, i8 0, i8 0, i16 -30184 }, %struct.anon.43 { i32 26000000, i32 147456000, i8 0, i8 1, i16 3489 }, %struct.anon.43 { i32 38400000, i32 135475200, i8 1, i8 2, i16 -32248 }, %struct.anon.43 { i32 38400000, i32 147456000, i8 1, i8 3, i16 -21846 }], [48 x i8] zeroinitializer }, align 32
@postdivs = internal constant { [13 x %struct.anon.44], [57 x i8] } { [13 x %struct.anon.44] [%struct.anon.44 { i8 1, i8 3, i8 0 }, %struct.anon.44 { i8 2, i8 5, i8 0 }, %struct.anon.44 { i8 4, i8 0, i8 0 }, %struct.anon.44 { i8 6, i8 1, i8 1 }, %struct.anon.44 { i8 8, i8 1, i8 0 }, %struct.anon.44 { i8 9, i8 1, i8 2 }, %struct.anon.44 { i8 12, i8 2, i8 1 }, %struct.anon.44 { i8 16, i8 2, i8 0 }, %struct.anon.44 { i8 18, i8 2, i8 2 }, %struct.anon.44 { i8 24, i8 4, i8 1 }, %struct.anon.44 { i8 36, i8 4, i8 2 }, %struct.anon.44 { i8 48, i8 6, i8 1 }, %struct.anon.44 { i8 72, i8 6, i8 2 }], [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 26000000, i64 38400000]
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"mmp2_audio_clk_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 432, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 434, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"mmp2_audio_clk_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 425, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"mmp2_audio_clk_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 421, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 357, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 369, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 237, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 241, i32 16 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"audio_pll_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 227, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 245, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 252, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 262, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 275, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 284, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 296, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 305, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 315, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 327, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [8 x i8] c"predivs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"postdivs\00", align 1
@___asan_gen_.79 = private constant [31 x i8] c"../drivers/clk/mmp/clk-audio.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 98, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_mmp2_audio_clk_driver_exit, ptr @__initcall__kmod_clk_audio__184_441_mmp2_audio_clk_driver_init6, ptr @mmp2_audio_clk_driver_exit, ptr @mmp2_audio_clk_driver, ptr @.str, ptr @mmp2_audio_clk_of_match, ptr @mmp2_audio_clk_pm_ops, ptr @mmp2_audio_clk_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @audio_pll_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @predivs, ptr @postdivs], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_audio_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_audio_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_audio_clk_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_audio_clk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @predivs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @postdivs to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_audio_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmp2_audio_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmp2_audio_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmp2_audio_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_audio_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %sspa_mux_parents.i = alloca [2 x %struct.clk_parent_data], align 4
  %sspa1_mux_parents.i = alloca [2 x %struct.clk_parent_data], align 4
  %.compoundliteral.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral9.i = alloca [1 x %struct.clk_parent_data], align 4
  %.compoundliteral16.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral36.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral42.i = alloca [1 x ptr], align 4
  %.compoundliteral74.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral80.i = alloca [1 x ptr], align 4
  %.compoundliteral100.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral106.i = alloca [1 x ptr], align 4
  %.compoundliteral141.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral147.i = alloca [1 x ptr], align 4
  %.compoundliteral168.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral193.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral199.i = alloca [1 x ptr], align 4
  %.compoundliteral234.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral240.i = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 308, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mmp2_audio_clk_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call12 = tail call i32 @pm_clk_create(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.disable_pm_runtime_crit_edge

if.end9.disable_pm_runtime_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_pm_runtime

if.end15:                                         ; preds = %if.end9
  %call17 = tail call i32 @pm_clk_add(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.destroy_pm_clk_crit_edge

if.end15.destroy_pm_clk_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_pm_clk

if.end20:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral9.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral16.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral36.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral42.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral74.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral80.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral100.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral106.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral141.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral147.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral168.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral193.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral199.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %.compoundliteral234.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral240.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sspa_mux_parents.i) #6
  %3 = getelementptr inbounds [2 x %struct.clk_parent_data], ptr %sspa_mux_parents.i, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds i8, ptr %sspa_mux_parents.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 28)
  %audio_pll_hw.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %sspa_mux_parents.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %audio_pll_hw.i, ptr %sspa_mux_parents.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.3, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sspa1_mux_parents.i) #6
  %8 = getelementptr inbounds [2 x %struct.clk_parent_data], ptr %sspa1_mux_parents.i, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds i8, ptr %sspa1_mux_parents.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 28)
  %11 = ptrtoint ptr %sspa1_mux_parents.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %audio_pll_hw.i, ptr %sspa1_mux_parents.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %8, align 4
  %13 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.5, ptr %.compoundliteral.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @audio_pll_ops, ptr %ops.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral.i, i32 0, i32 2
  %15 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral.i, i32 0, i32 3
  %16 = ptrtoint ptr %.compoundliteral9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %.compoundliteral9.i, align 4
  %fw_name12.i = getelementptr inbounds %struct.clk_parent_data, ptr %.compoundliteral9.i, i32 0, i32 1
  %17 = ptrtoint ptr %fw_name12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %fw_name12.i, align 4
  %name13.i = getelementptr inbounds %struct.clk_parent_data, ptr %.compoundliteral9.i, i32 0, i32 2
  %18 = ptrtoint ptr %name13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %name13.i, align 4
  %index.i = getelementptr inbounds %struct.clk_parent_data, ptr %.compoundliteral9.i, i32 0, i32 3
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %index.i, align 4
  %20 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.compoundliteral9.i, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral.i, i32 0, i32 4
  %21 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %parent_hws.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral.i, i32 0, i32 5
  %22 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %num_parents.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral.i, i32 0, i32 6
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %flags.i, align 4
  %init.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.compoundliteral.i, ptr %init.i, align 4
  %call.i46 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %audio_pll_hw.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.register_clocks.exit.thread_crit_edge

if.end20.register_clocks.exit.thread_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end.i:                                         ; preds = %if.end20
  %25 = ptrtoint ptr %.compoundliteral16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.7, ptr %.compoundliteral16.i, align 4
  %ops18.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral16.i, i32 0, i32 1
  %26 = ptrtoint ptr %ops18.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @clk_mux_ops, ptr %ops18.i, align 4
  %parent_names19.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral16.i, i32 0, i32 2
  %27 = ptrtoint ptr %parent_names19.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %parent_names19.i, align 4
  %parent_data20.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral16.i, i32 0, i32 3
  %28 = ptrtoint ptr %parent_data20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sspa_mux_parents.i, ptr %parent_data20.i, align 4
  %parent_hws22.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral16.i, i32 0, i32 4
  %29 = ptrtoint ptr %parent_hws22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %parent_hws22.i, align 4
  %num_parents23.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral16.i, i32 0, i32 5
  %30 = ptrtoint ptr %num_parents23.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %num_parents23.i, align 4
  %flags24.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral16.i, i32 0, i32 6
  %31 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %flags24.i, align 4
  %sspa_mux.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 2
  %init26.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %init26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.compoundliteral16.i, ptr %init26.i, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %reg.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %mask.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 7, ptr %shift.i, align 4
  %call32.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sspa_mux.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end.i.register_clocks.exit.thread_crit_edge

if.end.i.register_clocks.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end35.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %.compoundliteral36.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.8, ptr %.compoundliteral36.i, align 4
  %ops38.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral36.i, i32 0, i32 1
  %39 = ptrtoint ptr %ops38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @clk_divider_ops, ptr %ops38.i, align 4
  %parent_names39.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral36.i, i32 0, i32 2
  %40 = ptrtoint ptr %parent_names39.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %parent_names39.i, align 4
  %parent_data40.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral36.i, i32 0, i32 3
  %41 = ptrtoint ptr %parent_data40.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %parent_data40.i, align 4
  %parent_hws41.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral36.i, i32 0, i32 4
  %42 = ptrtoint ptr %.compoundliteral42.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sspa_mux.i, ptr %.compoundliteral42.i, align 4
  %43 = ptrtoint ptr %parent_hws41.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.compoundliteral42.i, ptr %parent_hws41.i, align 4
  %num_parents47.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral36.i, i32 0, i32 5
  %44 = ptrtoint ptr %num_parents47.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %num_parents47.i, align 4
  %flags48.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral36.i, i32 0, i32 6
  %45 = ptrtoint ptr %flags48.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %flags48.i, align 4
  %sysclk_div.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 4
  %init50.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %46 = ptrtoint ptr %init50.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.compoundliteral36.i, ptr %init50.i, align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %48, i32 4
  %reg54.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %reg54.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr52.i, ptr %reg54.i, align 4
  %shift56.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %shift56.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %shift56.i, align 4
  %width.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %width.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 6, ptr %width.i, align 1
  %flags59.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 4, i32 4
  %52 = ptrtoint ptr %flags59.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 21, ptr %flags59.i, align 2
  %call70.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sysclk_div.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.end35.i.register_clocks.exit.thread_crit_edge

if.end35.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end73.i:                                       ; preds = %if.end35.i
  %53 = ptrtoint ptr %.compoundliteral74.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.9, ptr %.compoundliteral74.i, align 4
  %ops76.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral74.i, i32 0, i32 1
  %54 = ptrtoint ptr %ops76.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @clk_gate_ops, ptr %ops76.i, align 4
  %parent_names77.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral74.i, i32 0, i32 2
  %55 = ptrtoint ptr %parent_names77.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %parent_names77.i, align 4
  %parent_data78.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral74.i, i32 0, i32 3
  %56 = ptrtoint ptr %parent_data78.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %parent_data78.i, align 4
  %parent_hws79.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral74.i, i32 0, i32 4
  %57 = ptrtoint ptr %.compoundliteral80.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sysclk_div.i, ptr %.compoundliteral80.i, align 4
  %58 = ptrtoint ptr %parent_hws79.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %.compoundliteral80.i, ptr %parent_hws79.i, align 4
  %num_parents85.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral74.i, i32 0, i32 5
  %59 = ptrtoint ptr %num_parents85.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %num_parents85.i, align 4
  %flags86.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral74.i, i32 0, i32 6
  %60 = ptrtoint ptr %flags86.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %flags86.i, align 4
  %sysclk_gate.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 7
  %init88.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %61 = ptrtoint ptr %init88.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.compoundliteral74.i, ptr %init88.i, align 4
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %add.ptr90.i = getelementptr i8, ptr %63, i32 4
  %reg92.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %reg92.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr90.i, ptr %reg92.i, align 4
  %bit_idx.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %bit_idx.i, align 4
  %call96.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sysclk_gate.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end99.i, label %if.end73.i.register_clocks.exit.thread_crit_edge

if.end73.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end99.i:                                       ; preds = %if.end73.i
  %66 = ptrtoint ptr %.compoundliteral100.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.10, ptr %.compoundliteral100.i, align 4
  %ops102.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral100.i, i32 0, i32 1
  %67 = ptrtoint ptr %ops102.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @clk_divider_ops, ptr %ops102.i, align 4
  %parent_names103.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral100.i, i32 0, i32 2
  %68 = ptrtoint ptr %parent_names103.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %parent_names103.i, align 4
  %parent_data104.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral100.i, i32 0, i32 3
  %69 = ptrtoint ptr %parent_data104.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %parent_data104.i, align 4
  %parent_hws105.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral100.i, i32 0, i32 4
  %70 = ptrtoint ptr %.compoundliteral106.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %sspa_mux.i, ptr %.compoundliteral106.i, align 4
  %71 = ptrtoint ptr %parent_hws105.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.compoundliteral106.i, ptr %parent_hws105.i, align 4
  %num_parents111.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral100.i, i32 0, i32 5
  %72 = ptrtoint ptr %num_parents111.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %num_parents111.i, align 4
  %flags112.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral100.i, i32 0, i32 6
  %73 = ptrtoint ptr %flags112.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %flags112.i, align 4
  %sspa0_div.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 5
  %init114.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %74 = ptrtoint ptr %init114.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %.compoundliteral100.i, ptr %init114.i, align 4
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %add.ptr116.i = getelementptr i8, ptr %76, i32 4
  %reg118.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 5, i32 1
  %77 = ptrtoint ptr %reg118.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr116.i, ptr %reg118.i, align 4
  %shift120.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %shift120.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 9, ptr %shift120.i, align 4
  %width122.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 5, i32 3
  %79 = ptrtoint ptr %width122.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 6, ptr %width122.i, align 1
  %flags124.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 5, i32 4
  %80 = ptrtoint ptr %flags124.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 21, ptr %flags124.i, align 2
  %call137.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sspa0_div.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %if.end140.i, label %if.end99.i.register_clocks.exit.thread_crit_edge

if.end99.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end140.i:                                      ; preds = %if.end99.i
  %81 = ptrtoint ptr %.compoundliteral141.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.11, ptr %.compoundliteral141.i, align 4
  %ops143.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral141.i, i32 0, i32 1
  %82 = ptrtoint ptr %ops143.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @clk_gate_ops, ptr %ops143.i, align 4
  %parent_names144.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral141.i, i32 0, i32 2
  %83 = ptrtoint ptr %parent_names144.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %parent_names144.i, align 4
  %parent_data145.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral141.i, i32 0, i32 3
  %84 = ptrtoint ptr %parent_data145.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %parent_data145.i, align 4
  %parent_hws146.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral141.i, i32 0, i32 4
  %85 = ptrtoint ptr %.compoundliteral147.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %sspa0_div.i, ptr %.compoundliteral147.i, align 4
  %86 = ptrtoint ptr %parent_hws146.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.compoundliteral147.i, ptr %parent_hws146.i, align 4
  %num_parents152.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral141.i, i32 0, i32 5
  %87 = ptrtoint ptr %num_parents152.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %num_parents152.i, align 4
  %flags153.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral141.i, i32 0, i32 6
  %88 = ptrtoint ptr %flags153.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4, ptr %flags153.i, align 4
  %sspa0_gate.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 8
  %init155.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %89 = ptrtoint ptr %init155.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %.compoundliteral141.i, ptr %init155.i, align 4
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 4
  %add.ptr157.i = getelementptr i8, ptr %91, i32 4
  %reg159.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %reg159.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr157.i, ptr %reg159.i, align 4
  %bit_idx161.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 8, i32 2
  %93 = ptrtoint ptr %bit_idx161.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 8, ptr %bit_idx161.i, align 4
  %call164.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sspa0_gate.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.end167.i, label %if.end140.i.register_clocks.exit.thread_crit_edge

if.end140.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end167.i:                                      ; preds = %if.end140.i
  %94 = ptrtoint ptr %.compoundliteral168.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.12, ptr %.compoundliteral168.i, align 4
  %ops170.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral168.i, i32 0, i32 1
  %95 = ptrtoint ptr %ops170.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @clk_mux_ops, ptr %ops170.i, align 4
  %parent_names171.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral168.i, i32 0, i32 2
  %96 = ptrtoint ptr %parent_names171.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %parent_names171.i, align 4
  %parent_data172.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral168.i, i32 0, i32 3
  %97 = ptrtoint ptr %parent_data172.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %sspa1_mux_parents.i, ptr %parent_data172.i, align 4
  %parent_hws174.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral168.i, i32 0, i32 4
  %98 = ptrtoint ptr %parent_hws174.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %parent_hws174.i, align 4
  %num_parents175.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral168.i, i32 0, i32 5
  %99 = ptrtoint ptr %num_parents175.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %num_parents175.i, align 4
  %flags176.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral168.i, i32 0, i32 6
  %100 = ptrtoint ptr %flags176.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %flags176.i, align 4
  %sspa1_mux.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 3
  %init178.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %101 = ptrtoint ptr %init178.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %.compoundliteral168.i, ptr %init178.i, align 4
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 4
  %add.ptr180.i = getelementptr i8, ptr %103, i32 4
  %reg182.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 3, i32 1
  %104 = ptrtoint ptr %reg182.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr180.i, ptr %reg182.i, align 4
  %mask184.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 3, i32 3
  %105 = ptrtoint ptr %mask184.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %mask184.i, align 4
  %shift186.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 3, i32 4
  %106 = ptrtoint ptr %shift186.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 23, ptr %shift186.i, align 4
  %call189.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sspa1_mux.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %if.end192.i, label %if.end167.i.register_clocks.exit.thread_crit_edge

if.end167.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end192.i:                                      ; preds = %if.end167.i
  %107 = ptrtoint ptr %.compoundliteral193.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.13, ptr %.compoundliteral193.i, align 4
  %ops195.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral193.i, i32 0, i32 1
  %108 = ptrtoint ptr %ops195.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @clk_divider_ops, ptr %ops195.i, align 4
  %parent_names196.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral193.i, i32 0, i32 2
  %109 = ptrtoint ptr %parent_names196.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %parent_names196.i, align 4
  %parent_data197.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral193.i, i32 0, i32 3
  %110 = ptrtoint ptr %parent_data197.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %parent_data197.i, align 4
  %parent_hws198.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral193.i, i32 0, i32 4
  %111 = ptrtoint ptr %.compoundliteral199.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %sspa1_mux.i, ptr %.compoundliteral199.i, align 4
  %112 = ptrtoint ptr %parent_hws198.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %.compoundliteral199.i, ptr %parent_hws198.i, align 4
  %num_parents204.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral193.i, i32 0, i32 5
  %113 = ptrtoint ptr %num_parents204.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %num_parents204.i, align 4
  %flags205.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral193.i, i32 0, i32 6
  %114 = ptrtoint ptr %flags205.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %flags205.i, align 4
  %sspa1_div.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 6
  %init207.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %115 = ptrtoint ptr %init207.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %.compoundliteral193.i, ptr %init207.i, align 4
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  %add.ptr209.i = getelementptr i8, ptr %117, i32 4
  %reg211.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %reg211.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr209.i, ptr %reg211.i, align 4
  %shift213.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 6, i32 2
  %119 = ptrtoint ptr %shift213.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 17, ptr %shift213.i, align 4
  %width215.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 6, i32 3
  %120 = ptrtoint ptr %width215.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 6, ptr %width215.i, align 1
  %flags217.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 6, i32 4
  %121 = ptrtoint ptr %flags217.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 21, ptr %flags217.i, align 2
  %call230.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sspa1_div.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230.i)
  %tobool231.not.i = icmp eq i32 %call230.i, 0
  br i1 %tobool231.not.i, label %if.end233.i, label %if.end192.i.register_clocks.exit.thread_crit_edge

if.end192.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

if.end233.i:                                      ; preds = %if.end192.i
  %122 = ptrtoint ptr %.compoundliteral234.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.14, ptr %.compoundliteral234.i, align 4
  %ops236.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral234.i, i32 0, i32 1
  %123 = ptrtoint ptr %ops236.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @clk_gate_ops, ptr %ops236.i, align 4
  %parent_names237.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral234.i, i32 0, i32 2
  %124 = ptrtoint ptr %parent_names237.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %parent_names237.i, align 4
  %parent_data238.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral234.i, i32 0, i32 3
  %125 = ptrtoint ptr %parent_data238.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %parent_data238.i, align 4
  %parent_hws239.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral234.i, i32 0, i32 4
  %126 = ptrtoint ptr %.compoundliteral240.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %sspa1_div.i, ptr %.compoundliteral240.i, align 4
  %127 = ptrtoint ptr %parent_hws239.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %.compoundliteral240.i, ptr %parent_hws239.i, align 4
  %num_parents245.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral234.i, i32 0, i32 5
  %128 = ptrtoint ptr %num_parents245.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %num_parents245.i, align 4
  %flags246.i = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral234.i, i32 0, i32 6
  %129 = ptrtoint ptr %flags246.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4, ptr %flags246.i, align 4
  %sspa1_gate.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 9
  %init248.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %130 = ptrtoint ptr %init248.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %.compoundliteral234.i, ptr %init248.i, align 4
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i, align 4
  %add.ptr250.i = getelementptr i8, ptr %132, i32 4
  %reg252.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 9, i32 1
  %133 = ptrtoint ptr %reg252.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr250.i, ptr %reg252.i, align 4
  %bit_idx254.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 9, i32 2
  %134 = ptrtoint ptr %bit_idx254.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 16, ptr %bit_idx254.i, align 4
  %call257.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %sspa1_gate.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257.i)
  %tobool258.not.i = icmp eq i32 %call257.i, 0
  br i1 %tobool258.not.i, label %register_clocks.exit, label %if.end233.i.register_clocks.exit.thread_crit_edge

if.end233.i.register_clocks.exit.thread_crit_edge: ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %register_clocks.exit.thread

register_clocks.exit.thread:                      ; preds = %if.end233.i.register_clocks.exit.thread_crit_edge, %if.end192.i.register_clocks.exit.thread_crit_edge, %if.end167.i.register_clocks.exit.thread_crit_edge, %if.end140.i.register_clocks.exit.thread_crit_edge, %if.end99.i.register_clocks.exit.thread_crit_edge, %if.end73.i.register_clocks.exit.thread_crit_edge, %if.end35.i.register_clocks.exit.thread_crit_edge, %if.end.i.register_clocks.exit.thread_crit_edge, %if.end20.register_clocks.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call257.i, %if.end233.i.register_clocks.exit.thread_crit_edge ], [ %call230.i, %if.end192.i.register_clocks.exit.thread_crit_edge ], [ %call189.i, %if.end167.i.register_clocks.exit.thread_crit_edge ], [ %call164.i, %if.end140.i.register_clocks.exit.thread_crit_edge ], [ %call137.i, %if.end99.i.register_clocks.exit.thread_crit_edge ], [ %call96.i, %if.end73.i.register_clocks.exit.thread_crit_edge ], [ %call70.i, %if.end35.i.register_clocks.exit.thread_crit_edge ], [ %call32.i, %if.end.i.register_clocks.exit.thread_crit_edge ], [ %call.i46, %if.end20.register_clocks.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sspa1_mux_parents.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sspa_mux_parents.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral9.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral16.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral36.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral42.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral74.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral80.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral100.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral106.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral141.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral147.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral168.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral193.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral199.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral234.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral240.i)
  br label %destroy_pm_clk

register_clocks.exit:                             ; preds = %if.end233.i
  %clk_data.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 0, i32 14
  %hws.i = getelementptr inbounds %struct.mmp2_audio_clk, ptr %call.i, i32 1
  %135 = ptrtoint ptr %hws.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %sysclk_gate.i, ptr %hws.i, align 4
  %arrayidx267.i = getelementptr %struct.mmp2_audio_clk, ptr %call.i, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx267.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %sspa0_gate.i, ptr %arrayidx267.i, align 4
  %arrayidx272.i = getelementptr %struct.mmp2_audio_clk, ptr %call.i, i32 1, i32 1, i32 1
  %137 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %sspa1_gate.i, ptr %arrayidx272.i, align 4
  %138 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 3, ptr %clk_data.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %139 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %of_node.i, align 8
  %call275.i = call i32 @of_clk_add_hw_provider(ptr noundef %140, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %clk_data.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sspa1_mux_parents.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sspa_mux_parents.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral9.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral16.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral36.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral42.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral74.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral80.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral100.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral106.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral141.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral147.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral168.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral193.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral199.i)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %.compoundliteral234.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral240.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i)
  %tobool23.not = icmp eq i32 %call275.i, 0
  br i1 %tobool23.not, label %register_clocks.exit.cleanup_crit_edge, label %register_clocks.exit.destroy_pm_clk_crit_edge

register_clocks.exit.destroy_pm_clk_crit_edge:    ; preds = %register_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_pm_clk

register_clocks.exit.cleanup_crit_edge:           ; preds = %register_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

destroy_pm_clk:                                   ; preds = %register_clocks.exit.destroy_pm_clk_crit_edge, %register_clocks.exit.thread, %if.end15.destroy_pm_clk_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end15.destroy_pm_clk_crit_edge ], [ %call275.i, %register_clocks.exit.destroy_pm_clk_crit_edge ], [ %retval.0.i.ph, %register_clocks.exit.thread ]
  call void @pm_clk_destroy(ptr noundef %dev) #6
  br label %disable_pm_runtime

disable_pm_runtime:                               ; preds = %destroy_pm_clk, %if.end9.disable_pm_runtime_crit_edge
  %ret.1 = phi i32 [ %call12, %if.end9.disable_pm_runtime_crit_edge ], [ %ret.0, %destroy_pm_clk ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_pm_runtime, %register_clocks.exit.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %ret.1, %disable_pm_runtime ], [ -12, %entry.cleanup_crit_edge ], [ 0, %register_clocks.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_audio_clk_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_clk_destroy(ptr noundef %dev) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %3 = and i32 %2, -1644167297
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %7 = and i32 %6, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %parent_rate)
  %cmp13.not = icmp eq i32 %parent_rate, 26000000
  br i1 %cmp13.not, label %for.body16, label %entry.for.inc47.1_crit_edge

entry.for.inc47.1_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc47.1

for.body16:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098192, i32 %3)
  %cmp31.not = icmp eq i32 %3, -2129098192
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not = icmp eq i32 %7, 524288
  %or.cond = select i1 %cmp31.not, i1 %cmp39.not, i1 false
  br i1 %or.cond, label %for.body16.cleanup_crit_edge, label %for.inc

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3.11.cleanup_crit_edge, %for.inc.3.10.cleanup_crit_edge, %for.inc.3.9.cleanup_crit_edge, %for.inc.3.8.cleanup_crit_edge, %for.inc.3.7.cleanup_crit_edge, %for.inc.3.6.cleanup_crit_edge, %for.inc.3.5.cleanup_crit_edge, %for.inc.3.4.cleanup_crit_edge, %for.inc.3.3.cleanup_crit_edge, %for.inc.3.2.cleanup_crit_edge, %for.inc.3.1.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.body16.3.cleanup_crit_edge, %for.inc.2.11.cleanup_crit_edge, %for.inc.2.10.cleanup_crit_edge, %for.inc.2.9.cleanup_crit_edge, %for.inc.2.8.cleanup_crit_edge, %for.inc.2.7.cleanup_crit_edge, %for.inc.2.6.cleanup_crit_edge, %for.inc.2.5.cleanup_crit_edge, %for.inc.2.4.cleanup_crit_edge, %for.inc.2.3.cleanup_crit_edge, %for.inc.2.2.cleanup_crit_edge, %for.inc.2.1.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.body16.2.cleanup_crit_edge, %for.inc.1.11.cleanup_crit_edge, %for.inc.1.10.cleanup_crit_edge, %for.inc.1.9.cleanup_crit_edge, %for.inc.1.8.cleanup_crit_edge, %for.inc.1.7.cleanup_crit_edge, %for.inc.1.6.cleanup_crit_edge, %for.inc.1.5.cleanup_crit_edge, %for.inc.1.4.cleanup_crit_edge, %for.inc.1.3.cleanup_crit_edge, %for.inc.1.2.cleanup_crit_edge, %for.inc.1.1.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.body16.1.cleanup_crit_edge, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3161.cleanup_crit_edge, %for.inc.2147.cleanup_crit_edge, %for.inc.1133.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body16.cleanup_crit_edge
  %prediv.082.lcssa = phi i32 [ 0, %for.body16.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %for.inc.1133.cleanup_crit_edge ], [ 0, %for.inc.2147.cleanup_crit_edge ], [ 0, %for.inc.3161.cleanup_crit_edge ], [ 0, %for.inc.4.cleanup_crit_edge ], [ 0, %for.inc.5.cleanup_crit_edge ], [ 0, %for.inc.6.cleanup_crit_edge ], [ 0, %for.inc.7.cleanup_crit_edge ], [ 0, %for.inc.8.cleanup_crit_edge ], [ 0, %for.inc.9.cleanup_crit_edge ], [ 0, %for.inc.10.cleanup_crit_edge ], [ 0, %for.inc.11.cleanup_crit_edge ], [ 1, %for.body16.1.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ], [ 1, %for.inc.1.1.cleanup_crit_edge ], [ 1, %for.inc.1.2.cleanup_crit_edge ], [ 1, %for.inc.1.3.cleanup_crit_edge ], [ 1, %for.inc.1.4.cleanup_crit_edge ], [ 1, %for.inc.1.5.cleanup_crit_edge ], [ 1, %for.inc.1.6.cleanup_crit_edge ], [ 1, %for.inc.1.7.cleanup_crit_edge ], [ 1, %for.inc.1.8.cleanup_crit_edge ], [ 1, %for.inc.1.9.cleanup_crit_edge ], [ 1, %for.inc.1.10.cleanup_crit_edge ], [ 1, %for.inc.1.11.cleanup_crit_edge ], [ 2, %for.body16.2.cleanup_crit_edge ], [ 2, %for.inc.2.cleanup_crit_edge ], [ 2, %for.inc.2.1.cleanup_crit_edge ], [ 2, %for.inc.2.2.cleanup_crit_edge ], [ 2, %for.inc.2.3.cleanup_crit_edge ], [ 2, %for.inc.2.4.cleanup_crit_edge ], [ 2, %for.inc.2.5.cleanup_crit_edge ], [ 2, %for.inc.2.6.cleanup_crit_edge ], [ 2, %for.inc.2.7.cleanup_crit_edge ], [ 2, %for.inc.2.8.cleanup_crit_edge ], [ 2, %for.inc.2.9.cleanup_crit_edge ], [ 2, %for.inc.2.10.cleanup_crit_edge ], [ 2, %for.inc.2.11.cleanup_crit_edge ], [ 3, %for.body16.3.cleanup_crit_edge ], [ 3, %for.inc.3.cleanup_crit_edge ], [ 3, %for.inc.3.1.cleanup_crit_edge ], [ 3, %for.inc.3.2.cleanup_crit_edge ], [ 3, %for.inc.3.3.cleanup_crit_edge ], [ 3, %for.inc.3.4.cleanup_crit_edge ], [ 3, %for.inc.3.5.cleanup_crit_edge ], [ 3, %for.inc.3.6.cleanup_crit_edge ], [ 3, %for.inc.3.7.cleanup_crit_edge ], [ 3, %for.inc.3.8.cleanup_crit_edge ], [ 3, %for.inc.3.9.cleanup_crit_edge ], [ 3, %for.inc.3.10.cleanup_crit_edge ], [ 3, %for.inc.3.11.cleanup_crit_edge ]
  %postdiv.080.lcssa = phi i32 [ 0, %for.body16.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1133.cleanup_crit_edge ], [ 3, %for.inc.2147.cleanup_crit_edge ], [ 4, %for.inc.3161.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ 7, %for.inc.6.cleanup_crit_edge ], [ 8, %for.inc.7.cleanup_crit_edge ], [ 9, %for.inc.8.cleanup_crit_edge ], [ 10, %for.inc.9.cleanup_crit_edge ], [ 11, %for.inc.10.cleanup_crit_edge ], [ 12, %for.inc.11.cleanup_crit_edge ], [ 0, %for.body16.1.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ], [ 2, %for.inc.1.1.cleanup_crit_edge ], [ 3, %for.inc.1.2.cleanup_crit_edge ], [ 4, %for.inc.1.3.cleanup_crit_edge ], [ 5, %for.inc.1.4.cleanup_crit_edge ], [ 6, %for.inc.1.5.cleanup_crit_edge ], [ 7, %for.inc.1.6.cleanup_crit_edge ], [ 8, %for.inc.1.7.cleanup_crit_edge ], [ 9, %for.inc.1.8.cleanup_crit_edge ], [ 10, %for.inc.1.9.cleanup_crit_edge ], [ 11, %for.inc.1.10.cleanup_crit_edge ], [ 12, %for.inc.1.11.cleanup_crit_edge ], [ 0, %for.body16.2.cleanup_crit_edge ], [ 1, %for.inc.2.cleanup_crit_edge ], [ 2, %for.inc.2.1.cleanup_crit_edge ], [ 3, %for.inc.2.2.cleanup_crit_edge ], [ 4, %for.inc.2.3.cleanup_crit_edge ], [ 5, %for.inc.2.4.cleanup_crit_edge ], [ 6, %for.inc.2.5.cleanup_crit_edge ], [ 7, %for.inc.2.6.cleanup_crit_edge ], [ 8, %for.inc.2.7.cleanup_crit_edge ], [ 9, %for.inc.2.8.cleanup_crit_edge ], [ 10, %for.inc.2.9.cleanup_crit_edge ], [ 11, %for.inc.2.10.cleanup_crit_edge ], [ 12, %for.inc.2.11.cleanup_crit_edge ], [ 0, %for.body16.3.cleanup_crit_edge ], [ 1, %for.inc.3.cleanup_crit_edge ], [ 2, %for.inc.3.1.cleanup_crit_edge ], [ 3, %for.inc.3.2.cleanup_crit_edge ], [ 4, %for.inc.3.3.cleanup_crit_edge ], [ 5, %for.inc.3.4.cleanup_crit_edge ], [ 6, %for.inc.3.5.cleanup_crit_edge ], [ 7, %for.inc.3.6.cleanup_crit_edge ], [ 8, %for.inc.3.7.cleanup_crit_edge ], [ 9, %for.inc.3.8.cleanup_crit_edge ], [ 10, %for.inc.3.9.cleanup_crit_edge ], [ 11, %for.inc.3.10.cleanup_crit_edge ], [ 12, %for.inc.3.11.cleanup_crit_edge ]
  %arrayidx17.le = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.080.lcssa
  %freq_vco = getelementptr [4 x %struct.anon.43], ptr @predivs, i32 0, i32 %prediv.082.lcssa, i32 1
  %8 = ptrtoint ptr %freq_vco to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq_vco, align 4
  %10 = ptrtoint ptr %arrayidx17.le to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17.le, align 1
  %conv45 = zext i8 %11 to i32
  %div = udiv i32 %9, %conv45
  br label %cleanup50

for.inc:                                          ; preds = %for.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098160, i32 %3)
  %cmp31.not.1125 = icmp eq i32 %3, -2129098160
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.1130 = icmp eq i32 %7, 524288
  %or.cond162 = select i1 %cmp31.not.1125, i1 %cmp39.not.1130, i1 false
  br i1 %or.cond162, label %for.inc.cleanup_crit_edge, label %for.inc.1133

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1133:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098240, i32 %3)
  %cmp31.not.2139 = icmp eq i32 %3, -2129098240
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.2144 = icmp eq i32 %7, 524288
  %or.cond163 = select i1 %cmp31.not.2139, i1 %cmp39.not.2144, i1 false
  br i1 %or.cond163, label %for.inc.1133.cleanup_crit_edge, label %for.inc.2147

for.inc.1133.cleanup_crit_edge:                   ; preds = %for.inc.1133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2147:                                     ; preds = %for.inc.1133
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098224, i32 %3)
  %cmp31.not.3153 = icmp eq i32 %3, -2129098224
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.3158 = icmp eq i32 %7, 17301504
  %or.cond164 = select i1 %cmp31.not.3153, i1 %cmp39.not.3158, i1 false
  br i1 %or.cond164, label %for.inc.2147.cleanup_crit_edge, label %for.inc.3161

for.inc.2147.cleanup_crit_edge:                   ; preds = %for.inc.2147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3161:                                     ; preds = %for.inc.2147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098224, i32 %3)
  %cmp31.not.4 = icmp eq i32 %3, -2129098224
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.4 = icmp eq i32 %7, 524288
  %or.cond165 = select i1 %cmp31.not.4, i1 %cmp39.not.4, i1 false
  br i1 %or.cond165, label %for.inc.3161.cleanup_crit_edge, label %for.inc.4

for.inc.3161.cleanup_crit_edge:                   ; preds = %for.inc.3161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098224, i32 %3)
  %cmp31.not.5 = icmp eq i32 %3, -2129098224
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.5 = icmp eq i32 %7, 34078720
  %or.cond166 = select i1 %cmp31.not.5, i1 %cmp39.not.5, i1 false
  br i1 %or.cond166, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098208, i32 %3)
  %cmp31.not.6 = icmp eq i32 %3, -2129098208
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.6 = icmp eq i32 %7, 17301504
  %or.cond167 = select i1 %cmp31.not.6, i1 %cmp39.not.6, i1 false
  br i1 %or.cond167, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098208, i32 %3)
  %cmp31.not.7 = icmp eq i32 %3, -2129098208
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.7 = icmp eq i32 %7, 524288
  %or.cond168 = select i1 %cmp31.not.7, i1 %cmp39.not.7, i1 false
  br i1 %or.cond168, label %for.inc.6.cleanup_crit_edge, label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098208, i32 %3)
  %cmp31.not.8 = icmp eq i32 %3, -2129098208
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.8 = icmp eq i32 %7, 34078720
  %or.cond169 = select i1 %cmp31.not.8, i1 %cmp39.not.8, i1 false
  br i1 %or.cond169, label %for.inc.7.cleanup_crit_edge, label %for.inc.8

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098176, i32 %3)
  %cmp31.not.9 = icmp eq i32 %3, -2129098176
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.9 = icmp eq i32 %7, 17301504
  %or.cond170 = select i1 %cmp31.not.9, i1 %cmp39.not.9, i1 false
  br i1 %or.cond170, label %for.inc.8.cleanup_crit_edge, label %for.inc.9

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098176, i32 %3)
  %cmp31.not.10 = icmp eq i32 %3, -2129098176
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.10 = icmp eq i32 %7, 34078720
  %or.cond171 = select i1 %cmp31.not.10, i1 %cmp39.not.10, i1 false
  br i1 %or.cond171, label %for.inc.9.cleanup_crit_edge, label %for.inc.10

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098144, i32 %3)
  %cmp31.not.11 = icmp eq i32 %3, -2129098144
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.11 = icmp eq i32 %7, 17301504
  %or.cond172 = select i1 %cmp31.not.11, i1 %cmp39.not.11, i1 false
  br i1 %or.cond172, label %for.inc.10.cleanup_crit_edge, label %for.inc.11

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2129098144, i32 %3)
  %cmp31.not.12 = icmp eq i32 %3, -2129098144
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.12 = icmp eq i32 %7, 34078720
  %or.cond173 = select i1 %cmp31.not.12, i1 %cmp39.not.12, i1 false
  br i1 %or.cond173, label %for.inc.11.cleanup_crit_edge, label %for.inc.12

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  br i1 %cmp13.not, label %for.body16.1, label %for.inc.12.for.inc47.1_crit_edge

for.inc.12.for.inc47.1_crit_edge:                 ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc47.1

for.body16.1:                                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934032, i32 %3)
  %cmp31.not.1 = icmp eq i32 %3, -1985934032
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.1 = icmp eq i32 %7, 524288
  %or.cond174 = select i1 %cmp31.not.1, i1 %cmp39.not.1, i1 false
  br i1 %or.cond174, label %for.body16.1.cleanup_crit_edge, label %for.inc.1

for.body16.1.cleanup_crit_edge:                   ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1:                                        ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934000, i32 %3)
  %cmp31.not.1.1 = icmp eq i32 %3, -1985934000
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.1.1 = icmp eq i32 %7, 524288
  %or.cond175 = select i1 %cmp31.not.1.1, i1 %cmp39.not.1.1, i1 false
  br i1 %or.cond175, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.1

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.1:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934080, i32 %3)
  %cmp31.not.1.2 = icmp eq i32 %3, -1985934080
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.1.2 = icmp eq i32 %7, 524288
  %or.cond176 = select i1 %cmp31.not.1.2, i1 %cmp39.not.1.2, i1 false
  br i1 %or.cond176, label %for.inc.1.1.cleanup_crit_edge, label %for.inc.1.2

for.inc.1.1.cleanup_crit_edge:                    ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.2:                                      ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934064, i32 %3)
  %cmp31.not.1.3 = icmp eq i32 %3, -1985934064
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.1.3 = icmp eq i32 %7, 17301504
  %or.cond177 = select i1 %cmp31.not.1.3, i1 %cmp39.not.1.3, i1 false
  br i1 %or.cond177, label %for.inc.1.2.cleanup_crit_edge, label %for.inc.1.3

for.inc.1.2.cleanup_crit_edge:                    ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.3:                                      ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934064, i32 %3)
  %cmp31.not.1.4 = icmp eq i32 %3, -1985934064
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.1.4 = icmp eq i32 %7, 524288
  %or.cond178 = select i1 %cmp31.not.1.4, i1 %cmp39.not.1.4, i1 false
  br i1 %or.cond178, label %for.inc.1.3.cleanup_crit_edge, label %for.inc.1.4

for.inc.1.3.cleanup_crit_edge:                    ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.4:                                      ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934064, i32 %3)
  %cmp31.not.1.5 = icmp eq i32 %3, -1985934064
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.1.5 = icmp eq i32 %7, 34078720
  %or.cond179 = select i1 %cmp31.not.1.5, i1 %cmp39.not.1.5, i1 false
  br i1 %or.cond179, label %for.inc.1.4.cleanup_crit_edge, label %for.inc.1.5

for.inc.1.4.cleanup_crit_edge:                    ; preds = %for.inc.1.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.5:                                      ; preds = %for.inc.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934048, i32 %3)
  %cmp31.not.1.6 = icmp eq i32 %3, -1985934048
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.1.6 = icmp eq i32 %7, 17301504
  %or.cond180 = select i1 %cmp31.not.1.6, i1 %cmp39.not.1.6, i1 false
  br i1 %or.cond180, label %for.inc.1.5.cleanup_crit_edge, label %for.inc.1.6

for.inc.1.5.cleanup_crit_edge:                    ; preds = %for.inc.1.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.6:                                      ; preds = %for.inc.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934048, i32 %3)
  %cmp31.not.1.7 = icmp eq i32 %3, -1985934048
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.1.7 = icmp eq i32 %7, 524288
  %or.cond181 = select i1 %cmp31.not.1.7, i1 %cmp39.not.1.7, i1 false
  br i1 %or.cond181, label %for.inc.1.6.cleanup_crit_edge, label %for.inc.1.7

for.inc.1.6.cleanup_crit_edge:                    ; preds = %for.inc.1.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.7:                                      ; preds = %for.inc.1.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934048, i32 %3)
  %cmp31.not.1.8 = icmp eq i32 %3, -1985934048
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.1.8 = icmp eq i32 %7, 34078720
  %or.cond182 = select i1 %cmp31.not.1.8, i1 %cmp39.not.1.8, i1 false
  br i1 %or.cond182, label %for.inc.1.7.cleanup_crit_edge, label %for.inc.1.8

for.inc.1.7.cleanup_crit_edge:                    ; preds = %for.inc.1.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.8:                                      ; preds = %for.inc.1.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934016, i32 %3)
  %cmp31.not.1.9 = icmp eq i32 %3, -1985934016
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.1.9 = icmp eq i32 %7, 17301504
  %or.cond183 = select i1 %cmp31.not.1.9, i1 %cmp39.not.1.9, i1 false
  br i1 %or.cond183, label %for.inc.1.8.cleanup_crit_edge, label %for.inc.1.9

for.inc.1.8.cleanup_crit_edge:                    ; preds = %for.inc.1.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.9:                                      ; preds = %for.inc.1.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985934016, i32 %3)
  %cmp31.not.1.10 = icmp eq i32 %3, -1985934016
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.1.10 = icmp eq i32 %7, 34078720
  %or.cond184 = select i1 %cmp31.not.1.10, i1 %cmp39.not.1.10, i1 false
  br i1 %or.cond184, label %for.inc.1.9.cleanup_crit_edge, label %for.inc.1.10

for.inc.1.9.cleanup_crit_edge:                    ; preds = %for.inc.1.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.10:                                     ; preds = %for.inc.1.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985933984, i32 %3)
  %cmp31.not.1.11 = icmp eq i32 %3, -1985933984
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.1.11 = icmp eq i32 %7, 17301504
  %or.cond185 = select i1 %cmp31.not.1.11, i1 %cmp39.not.1.11, i1 false
  br i1 %or.cond185, label %for.inc.1.10.cleanup_crit_edge, label %for.inc.1.11

for.inc.1.10.cleanup_crit_edge:                   ; preds = %for.inc.1.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1.11:                                     ; preds = %for.inc.1.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985933984, i32 %3)
  %cmp31.not.1.12 = icmp eq i32 %3, -1985933984
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.1.12 = icmp eq i32 %7, 34078720
  %or.cond186 = select i1 %cmp31.not.1.12, i1 %cmp39.not.1.12, i1 false
  br i1 %or.cond186, label %for.inc.1.11.cleanup_crit_edge, label %for.inc.1.11.for.inc47.1_crit_edge

for.inc.1.11.for.inc47.1_crit_edge:               ; preds = %for.inc.1.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc47.1

for.inc.1.11.cleanup_crit_edge:                   ; preds = %for.inc.1.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc47.1:                                      ; preds = %for.inc.1.11.for.inc47.1_crit_edge, %for.inc.12.for.inc47.1_crit_edge, %entry.for.inc47.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400000, i32 %parent_rate)
  %cmp13.not.2 = icmp eq i32 %parent_rate, 38400000
  br i1 %cmp13.not.2, label %for.body16.2, label %for.inc47.1.cleanup50_crit_edge

for.inc47.1.cleanup50_crit_edge:                  ; preds = %for.inc47.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup50

for.body16.2:                                     ; preds = %for.inc47.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604496, i32 %3)
  %cmp31.not.2 = icmp eq i32 %3, -1794604496
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.2 = icmp eq i32 %7, 524288
  %or.cond187 = select i1 %cmp31.not.2, i1 %cmp39.not.2, i1 false
  br i1 %or.cond187, label %for.body16.2.cleanup_crit_edge, label %for.inc.2

for.body16.2.cleanup_crit_edge:                   ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2:                                        ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604464, i32 %3)
  %cmp31.not.2.1 = icmp eq i32 %3, -1794604464
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.2.1 = icmp eq i32 %7, 524288
  %or.cond188 = select i1 %cmp31.not.2.1, i1 %cmp39.not.2.1, i1 false
  br i1 %or.cond188, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.1

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.1:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604544, i32 %3)
  %cmp31.not.2.2 = icmp eq i32 %3, -1794604544
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.2.2 = icmp eq i32 %7, 524288
  %or.cond189 = select i1 %cmp31.not.2.2, i1 %cmp39.not.2.2, i1 false
  br i1 %or.cond189, label %for.inc.2.1.cleanup_crit_edge, label %for.inc.2.2

for.inc.2.1.cleanup_crit_edge:                    ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.2:                                      ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604528, i32 %3)
  %cmp31.not.2.3 = icmp eq i32 %3, -1794604528
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.2.3 = icmp eq i32 %7, 17301504
  %or.cond190 = select i1 %cmp31.not.2.3, i1 %cmp39.not.2.3, i1 false
  br i1 %or.cond190, label %for.inc.2.2.cleanup_crit_edge, label %for.inc.2.3

for.inc.2.2.cleanup_crit_edge:                    ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.3:                                      ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604528, i32 %3)
  %cmp31.not.2.4 = icmp eq i32 %3, -1794604528
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.2.4 = icmp eq i32 %7, 524288
  %or.cond191 = select i1 %cmp31.not.2.4, i1 %cmp39.not.2.4, i1 false
  br i1 %or.cond191, label %for.inc.2.3.cleanup_crit_edge, label %for.inc.2.4

for.inc.2.3.cleanup_crit_edge:                    ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.4:                                      ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604528, i32 %3)
  %cmp31.not.2.5 = icmp eq i32 %3, -1794604528
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.2.5 = icmp eq i32 %7, 34078720
  %or.cond192 = select i1 %cmp31.not.2.5, i1 %cmp39.not.2.5, i1 false
  br i1 %or.cond192, label %for.inc.2.4.cleanup_crit_edge, label %for.inc.2.5

for.inc.2.4.cleanup_crit_edge:                    ; preds = %for.inc.2.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.5:                                      ; preds = %for.inc.2.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604512, i32 %3)
  %cmp31.not.2.6 = icmp eq i32 %3, -1794604512
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.2.6 = icmp eq i32 %7, 17301504
  %or.cond193 = select i1 %cmp31.not.2.6, i1 %cmp39.not.2.6, i1 false
  br i1 %or.cond193, label %for.inc.2.5.cleanup_crit_edge, label %for.inc.2.6

for.inc.2.5.cleanup_crit_edge:                    ; preds = %for.inc.2.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.6:                                      ; preds = %for.inc.2.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604512, i32 %3)
  %cmp31.not.2.7 = icmp eq i32 %3, -1794604512
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.2.7 = icmp eq i32 %7, 524288
  %or.cond194 = select i1 %cmp31.not.2.7, i1 %cmp39.not.2.7, i1 false
  br i1 %or.cond194, label %for.inc.2.6.cleanup_crit_edge, label %for.inc.2.7

for.inc.2.6.cleanup_crit_edge:                    ; preds = %for.inc.2.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.7:                                      ; preds = %for.inc.2.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604512, i32 %3)
  %cmp31.not.2.8 = icmp eq i32 %3, -1794604512
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.2.8 = icmp eq i32 %7, 34078720
  %or.cond195 = select i1 %cmp31.not.2.8, i1 %cmp39.not.2.8, i1 false
  br i1 %or.cond195, label %for.inc.2.7.cleanup_crit_edge, label %for.inc.2.8

for.inc.2.7.cleanup_crit_edge:                    ; preds = %for.inc.2.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.8:                                      ; preds = %for.inc.2.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604480, i32 %3)
  %cmp31.not.2.9 = icmp eq i32 %3, -1794604480
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.2.9 = icmp eq i32 %7, 17301504
  %or.cond196 = select i1 %cmp31.not.2.9, i1 %cmp39.not.2.9, i1 false
  br i1 %or.cond196, label %for.inc.2.8.cleanup_crit_edge, label %for.inc.2.9

for.inc.2.8.cleanup_crit_edge:                    ; preds = %for.inc.2.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.9:                                      ; preds = %for.inc.2.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604480, i32 %3)
  %cmp31.not.2.10 = icmp eq i32 %3, -1794604480
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.2.10 = icmp eq i32 %7, 34078720
  %or.cond197 = select i1 %cmp31.not.2.10, i1 %cmp39.not.2.10, i1 false
  br i1 %or.cond197, label %for.inc.2.9.cleanup_crit_edge, label %for.inc.2.10

for.inc.2.9.cleanup_crit_edge:                    ; preds = %for.inc.2.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.10:                                     ; preds = %for.inc.2.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604448, i32 %3)
  %cmp31.not.2.11 = icmp eq i32 %3, -1794604448
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.2.11 = icmp eq i32 %7, 17301504
  %or.cond198 = select i1 %cmp31.not.2.11, i1 %cmp39.not.2.11, i1 false
  br i1 %or.cond198, label %for.inc.2.10.cleanup_crit_edge, label %for.inc.2.11

for.inc.2.10.cleanup_crit_edge:                   ; preds = %for.inc.2.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.11:                                     ; preds = %for.inc.2.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794604448, i32 %3)
  %cmp31.not.2.12 = icmp eq i32 %3, -1794604448
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.2.12 = icmp eq i32 %7, 34078720
  %or.cond199 = select i1 %cmp31.not.2.12, i1 %cmp39.not.2.12, i1 false
  br i1 %or.cond199, label %for.inc.2.11.cleanup_crit_edge, label %for.inc.2.12

for.inc.2.11.cleanup_crit_edge:                   ; preds = %for.inc.2.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2.12:                                     ; preds = %for.inc.2.11
  br i1 %cmp13.not.2, label %for.body16.3, label %for.inc.2.12.cleanup50_crit_edge

for.inc.2.12.cleanup50_crit_edge:                 ; preds = %for.inc.2.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup50

for.body16.3:                                     ; preds = %for.inc.2.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759696, i32 %3)
  %cmp31.not.3 = icmp eq i32 %3, -1649759696
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.3 = icmp eq i32 %7, 524288
  %or.cond200 = select i1 %cmp31.not.3, i1 %cmp39.not.3, i1 false
  br i1 %or.cond200, label %for.body16.3.cleanup_crit_edge, label %for.inc.3

for.body16.3.cleanup_crit_edge:                   ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3:                                        ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759664, i32 %3)
  %cmp31.not.3.1 = icmp eq i32 %3, -1649759664
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.3.1 = icmp eq i32 %7, 524288
  %or.cond201 = select i1 %cmp31.not.3.1, i1 %cmp39.not.3.1, i1 false
  br i1 %or.cond201, label %for.inc.3.cleanup_crit_edge, label %for.inc.3.1

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.1:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759744, i32 %3)
  %cmp31.not.3.2 = icmp eq i32 %3, -1649759744
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.3.2 = icmp eq i32 %7, 524288
  %or.cond202 = select i1 %cmp31.not.3.2, i1 %cmp39.not.3.2, i1 false
  br i1 %or.cond202, label %for.inc.3.1.cleanup_crit_edge, label %for.inc.3.2

for.inc.3.1.cleanup_crit_edge:                    ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.2:                                      ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759728, i32 %3)
  %cmp31.not.3.3 = icmp eq i32 %3, -1649759728
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.3.3 = icmp eq i32 %7, 17301504
  %or.cond203 = select i1 %cmp31.not.3.3, i1 %cmp39.not.3.3, i1 false
  br i1 %or.cond203, label %for.inc.3.2.cleanup_crit_edge, label %for.inc.3.3

for.inc.3.2.cleanup_crit_edge:                    ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.3:                                      ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759728, i32 %3)
  %cmp31.not.3.4 = icmp eq i32 %3, -1649759728
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.3.4 = icmp eq i32 %7, 524288
  %or.cond204 = select i1 %cmp31.not.3.4, i1 %cmp39.not.3.4, i1 false
  br i1 %or.cond204, label %for.inc.3.3.cleanup_crit_edge, label %for.inc.3.4

for.inc.3.3.cleanup_crit_edge:                    ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.4:                                      ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759728, i32 %3)
  %cmp31.not.3.5 = icmp eq i32 %3, -1649759728
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.3.5 = icmp eq i32 %7, 34078720
  %or.cond205 = select i1 %cmp31.not.3.5, i1 %cmp39.not.3.5, i1 false
  br i1 %or.cond205, label %for.inc.3.4.cleanup_crit_edge, label %for.inc.3.5

for.inc.3.4.cleanup_crit_edge:                    ; preds = %for.inc.3.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.5:                                      ; preds = %for.inc.3.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759712, i32 %3)
  %cmp31.not.3.6 = icmp eq i32 %3, -1649759712
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.3.6 = icmp eq i32 %7, 17301504
  %or.cond206 = select i1 %cmp31.not.3.6, i1 %cmp39.not.3.6, i1 false
  br i1 %or.cond206, label %for.inc.3.5.cleanup_crit_edge, label %for.inc.3.6

for.inc.3.5.cleanup_crit_edge:                    ; preds = %for.inc.3.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.6:                                      ; preds = %for.inc.3.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759712, i32 %3)
  %cmp31.not.3.7 = icmp eq i32 %3, -1649759712
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp39.not.3.7 = icmp eq i32 %7, 524288
  %or.cond207 = select i1 %cmp31.not.3.7, i1 %cmp39.not.3.7, i1 false
  br i1 %or.cond207, label %for.inc.3.6.cleanup_crit_edge, label %for.inc.3.7

for.inc.3.6.cleanup_crit_edge:                    ; preds = %for.inc.3.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.7:                                      ; preds = %for.inc.3.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759712, i32 %3)
  %cmp31.not.3.8 = icmp eq i32 %3, -1649759712
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.3.8 = icmp eq i32 %7, 34078720
  %or.cond208 = select i1 %cmp31.not.3.8, i1 %cmp39.not.3.8, i1 false
  br i1 %or.cond208, label %for.inc.3.7.cleanup_crit_edge, label %for.inc.3.8

for.inc.3.7.cleanup_crit_edge:                    ; preds = %for.inc.3.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.8:                                      ; preds = %for.inc.3.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759680, i32 %3)
  %cmp31.not.3.9 = icmp eq i32 %3, -1649759680
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.3.9 = icmp eq i32 %7, 17301504
  %or.cond209 = select i1 %cmp31.not.3.9, i1 %cmp39.not.3.9, i1 false
  br i1 %or.cond209, label %for.inc.3.8.cleanup_crit_edge, label %for.inc.3.9

for.inc.3.8.cleanup_crit_edge:                    ; preds = %for.inc.3.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.9:                                      ; preds = %for.inc.3.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759680, i32 %3)
  %cmp31.not.3.10 = icmp eq i32 %3, -1649759680
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.3.10 = icmp eq i32 %7, 34078720
  %or.cond210 = select i1 %cmp31.not.3.10, i1 %cmp39.not.3.10, i1 false
  br i1 %or.cond210, label %for.inc.3.9.cleanup_crit_edge, label %for.inc.3.10

for.inc.3.9.cleanup_crit_edge:                    ; preds = %for.inc.3.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.10:                                     ; preds = %for.inc.3.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759648, i32 %3)
  %cmp31.not.3.11 = icmp eq i32 %3, -1649759648
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %7)
  %cmp39.not.3.11 = icmp eq i32 %7, 17301504
  %or.cond211 = select i1 %cmp31.not.3.11, i1 %cmp39.not.3.11, i1 false
  br i1 %or.cond211, label %for.inc.3.10.cleanup_crit_edge, label %for.inc.3.11

for.inc.3.10.cleanup_crit_edge:                   ; preds = %for.inc.3.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.11:                                     ; preds = %for.inc.3.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1649759648, i32 %3)
  %cmp31.not.3.12 = icmp eq i32 %3, -1649759648
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078720, i32 %7)
  %cmp39.not.3.12 = icmp eq i32 %7, 34078720
  %or.cond212 = select i1 %cmp31.not.3.12, i1 %cmp39.not.3.12, i1 false
  br i1 %or.cond212, label %for.inc.3.11.cleanup_crit_edge, label %for.inc.3.11.cleanup50_crit_edge

for.inc.3.11.cleanup50_crit_edge:                 ; preds = %for.inc.3.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup50

for.inc.3.11.cleanup_crit_edge:                   ; preds = %for.inc.3.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup50:                                        ; preds = %for.inc.3.11.cleanup50_crit_edge, %for.inc.2.12.cleanup50_crit_edge, %for.inc47.1.cleanup50_crit_edge, %cleanup
  %retval.4 = phi i32 [ %div, %cleanup ], [ 0, %for.inc.2.12.cleanup50_crit_edge ], [ 0, %for.inc47.1.cleanup50_crit_edge ], [ 0, %for.inc.3.11.cleanup50_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %1)
  %cmp2.not = icmp eq i32 %1, 26000000
  br i1 %cmp2.not, label %entry.for.body5_crit_edge, label %entry.for.inc20.1_crit_edge

entry.for.inc20.1_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.1

entry.for.body5_crit_edge:                        ; preds = %entry
  br label %for.body5

for.body5:                                        ; preds = %if.end11.for.body5_crit_edge, %entry.for.body5_crit_edge
  %rounded.149 = phi i32 [ %rounded.2.ph, %if.end11.for.body5_crit_edge ], [ 0, %entry.for.body5_crit_edge ]
  %postdiv.048 = phi i32 [ %inc, %if.end11.for.body5_crit_edge ], [ 0, %entry.for.body5_crit_edge ]
  %arrayidx7 = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.048
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %3 to i32
  %div = udiv i32 135475200, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rate)
  %cmp8 = icmp eq i32 %div, %rate
  br i1 %cmp8, label %for.body5.cleanup23_crit_edge, label %if.end11

for.body5.cleanup23_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.end11:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rate)
  %cmp12 = icmp ult i32 %div, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rounded.149)
  %tobool.not = icmp ne i32 %rounded.149, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rounded.149)
  %cmp16 = icmp sgt i32 %div, %rounded.149
  %or.cond = select i1 %tobool.not, i1 %cmp16, i1 false
  %4 = select i1 %cmp12, i1 true, i1 %or.cond
  %rounded.2.ph = select i1 %4, i32 %rounded.149, i32 %div
  %inc = add nuw nsw i32 %postdiv.048, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc20, label %if.end11.for.body5_crit_edge

if.end11.for.body5_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.inc20:                                        ; preds = %if.end11
  br i1 %cmp2.not, label %for.inc20.for.body5.1_crit_edge, label %for.inc20.for.inc20.1_crit_edge

for.inc20.for.inc20.1_crit_edge:                  ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.1

for.inc20.for.body5.1_crit_edge:                  ; preds = %for.inc20
  br label %for.body5.1

for.body5.1:                                      ; preds = %if.end11.1.for.body5.1_crit_edge, %for.inc20.for.body5.1_crit_edge
  %rounded.149.1 = phi i32 [ %rounded.2.ph.1, %if.end11.1.for.body5.1_crit_edge ], [ %rounded.2.ph, %for.inc20.for.body5.1_crit_edge ]
  %postdiv.048.1 = phi i32 [ %inc.1, %if.end11.1.for.body5.1_crit_edge ], [ 0, %for.inc20.for.body5.1_crit_edge ]
  %arrayidx7.1 = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.048.1
  %5 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.1, align 1
  %conv.1 = zext i8 %6 to i32
  %div.1 = udiv i32 147456000, %conv.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %rate)
  %cmp8.1 = icmp eq i32 %div.1, %rate
  br i1 %cmp8.1, label %for.body5.1.cleanup23_crit_edge, label %if.end11.1

for.body5.1.cleanup23_crit_edge:                  ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.end11.1:                                       ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %rate)
  %cmp12.1 = icmp ult i32 %div.1, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rounded.149.1)
  %tobool.not.1 = icmp ne i32 %rounded.149.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %rounded.149.1)
  %cmp16.1 = icmp sgt i32 %div.1, %rounded.149.1
  %or.cond.1 = select i1 %tobool.not.1, i1 %cmp16.1, i1 false
  %7 = select i1 %cmp12.1, i1 true, i1 %or.cond.1
  %rounded.2.ph.1 = select i1 %7, i32 %rounded.149.1, i32 %div.1
  %inc.1 = add nuw nsw i32 %postdiv.048.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 13
  br i1 %exitcond.1.not, label %if.end11.1.for.inc20.1_crit_edge, label %if.end11.1.for.body5.1_crit_edge

if.end11.1.for.body5.1_crit_edge:                 ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.1

if.end11.1.for.inc20.1_crit_edge:                 ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.1

for.inc20.1:                                      ; preds = %if.end11.1.for.inc20.1_crit_edge, %for.inc20.for.inc20.1_crit_edge, %entry.for.inc20.1_crit_edge
  %rounded.3.1 = phi i32 [ %rounded.2.ph, %for.inc20.for.inc20.1_crit_edge ], [ 0, %entry.for.inc20.1_crit_edge ], [ %rounded.2.ph.1, %if.end11.1.for.inc20.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400000, i32 %1)
  %cmp2.not.2 = icmp eq i32 %1, 38400000
  br i1 %cmp2.not.2, label %for.inc20.1.for.body5.2_crit_edge, label %for.inc20.1.cleanup23_crit_edge

for.inc20.1.cleanup23_crit_edge:                  ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.inc20.1.for.body5.2_crit_edge:                ; preds = %for.inc20.1
  br label %for.body5.2

for.body5.2:                                      ; preds = %if.end11.2.for.body5.2_crit_edge, %for.inc20.1.for.body5.2_crit_edge
  %rounded.149.2 = phi i32 [ %rounded.2.ph.2, %if.end11.2.for.body5.2_crit_edge ], [ %rounded.3.1, %for.inc20.1.for.body5.2_crit_edge ]
  %postdiv.048.2 = phi i32 [ %inc.2, %if.end11.2.for.body5.2_crit_edge ], [ 0, %for.inc20.1.for.body5.2_crit_edge ]
  %arrayidx7.2 = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.048.2
  %8 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.2, align 1
  %conv.2 = zext i8 %9 to i32
  %div.2 = udiv i32 135475200, %conv.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %rate)
  %cmp8.2 = icmp eq i32 %div.2, %rate
  br i1 %cmp8.2, label %for.body5.2.cleanup23_crit_edge, label %if.end11.2

for.body5.2.cleanup23_crit_edge:                  ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.end11.2:                                       ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %rate)
  %cmp12.2 = icmp ult i32 %div.2, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rounded.149.2)
  %tobool.not.2 = icmp ne i32 %rounded.149.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %rounded.149.2)
  %cmp16.2 = icmp sgt i32 %div.2, %rounded.149.2
  %or.cond.2 = select i1 %tobool.not.2, i1 %cmp16.2, i1 false
  %10 = select i1 %cmp12.2, i1 true, i1 %or.cond.2
  %rounded.2.ph.2 = select i1 %10, i32 %rounded.149.2, i32 %div.2
  %inc.2 = add nuw nsw i32 %postdiv.048.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 13
  br i1 %exitcond.2.not, label %for.inc20.2, label %if.end11.2.for.body5.2_crit_edge

if.end11.2.for.body5.2_crit_edge:                 ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.2

for.inc20.2:                                      ; preds = %if.end11.2
  br i1 %cmp2.not.2, label %for.inc20.2.for.body5.3_crit_edge, label %for.inc20.2.cleanup23_crit_edge

for.inc20.2.cleanup23_crit_edge:                  ; preds = %for.inc20.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.inc20.2.for.body5.3_crit_edge:                ; preds = %for.inc20.2
  br label %for.body5.3

for.body5.3:                                      ; preds = %if.end11.3.for.body5.3_crit_edge, %for.inc20.2.for.body5.3_crit_edge
  %rounded.149.3 = phi i32 [ %rounded.2.ph.3, %if.end11.3.for.body5.3_crit_edge ], [ %rounded.2.ph.2, %for.inc20.2.for.body5.3_crit_edge ]
  %postdiv.048.3 = phi i32 [ %inc.3, %if.end11.3.for.body5.3_crit_edge ], [ 0, %for.inc20.2.for.body5.3_crit_edge ]
  %arrayidx7.3 = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.048.3
  %11 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7.3, align 1
  %conv.3 = zext i8 %12 to i32
  %div.3 = udiv i32 147456000, %conv.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %rate)
  %cmp8.3 = icmp eq i32 %div.3, %rate
  br i1 %cmp8.3, label %for.body5.3.cleanup23_crit_edge, label %if.end11.3

for.body5.3.cleanup23_crit_edge:                  ; preds = %for.body5.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

if.end11.3:                                       ; preds = %for.body5.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %rate)
  %cmp12.3 = icmp ult i32 %div.3, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rounded.149.3)
  %tobool.not.3 = icmp ne i32 %rounded.149.3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %rounded.149.3)
  %cmp16.3 = icmp sgt i32 %div.3, %rounded.149.3
  %or.cond.3 = select i1 %tobool.not.3, i1 %cmp16.3, i1 false
  %13 = select i1 %cmp12.3, i1 true, i1 %or.cond.3
  %rounded.2.ph.3 = select i1 %13, i32 %rounded.149.3, i32 %div.3
  %inc.3 = add nuw nsw i32 %postdiv.048.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 13
  br i1 %exitcond.3.not, label %if.end11.3.cleanup23_crit_edge, label %if.end11.3.for.body5.3_crit_edge

if.end11.3.for.body5.3_crit_edge:                 ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.3

if.end11.3.cleanup23_crit_edge:                   ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

cleanup23:                                        ; preds = %if.end11.3.cleanup23_crit_edge, %for.body5.3.cleanup23_crit_edge, %for.inc20.2.cleanup23_crit_edge, %for.body5.2.cleanup23_crit_edge, %for.inc20.1.cleanup23_crit_edge, %for.body5.1.cleanup23_crit_edge, %for.body5.cleanup23_crit_edge
  %retval.4 = phi i32 [ %rounded.2.ph.2, %for.inc20.2.cleanup23_crit_edge ], [ %rounded.3.1, %for.inc20.1.cleanup23_crit_edge ], [ %rate, %for.body5.3.cleanup23_crit_edge ], [ %rounded.2.ph.3, %if.end11.3.cleanup23_crit_edge ], [ %rate, %for.body5.2.cleanup23_crit_edge ], [ %rate, %for.body5.1.cleanup23_crit_edge ], [ %rate, %for.body5.cleanup23_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %parent_rate, label %entry.cleanup_crit_edge [
    i32 26000000, label %for.cond3.preheader
    i32 38400000, label %for.cond3.preheader.2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond3.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %rate)
  %cmp8.not = icmp eq i32 %rate, 135475200
  br i1 %cmp8.not, label %for.cond3.preheader.if.end11_crit_edge, label %for.inc

for.cond3.preheader.if.end11_crit_edge:           ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %for.inc.11.3.if.end11_crit_edge, %for.inc.10.3.if.end11_crit_edge, %for.inc.9.3.if.end11_crit_edge, %for.inc.8.3.if.end11_crit_edge, %for.inc.7.3.if.end11_crit_edge, %for.inc.6.3.if.end11_crit_edge, %for.inc.5.3.if.end11_crit_edge, %for.inc.4.3.if.end11_crit_edge, %for.inc.3.3.if.end11_crit_edge, %for.inc.2.3.if.end11_crit_edge, %for.inc.1.3.if.end11_crit_edge, %for.inc.373.if.end11_crit_edge, %for.cond3.preheader.3.if.end11_crit_edge, %for.inc.11.2.if.end11_crit_edge, %for.inc.10.2.if.end11_crit_edge, %for.inc.9.2.if.end11_crit_edge, %for.inc.8.2.if.end11_crit_edge, %for.inc.7.2.if.end11_crit_edge, %for.inc.6.2.if.end11_crit_edge, %for.inc.5.2.if.end11_crit_edge, %for.inc.4.2.if.end11_crit_edge, %for.inc.3.2.if.end11_crit_edge, %for.inc.2.2.if.end11_crit_edge, %for.inc.1.2.if.end11_crit_edge, %for.inc.271.if.end11_crit_edge, %for.cond3.preheader.2.if.end11_crit_edge, %for.inc.11.1.if.end11_crit_edge, %for.inc.10.1.if.end11_crit_edge, %for.inc.9.1.if.end11_crit_edge, %for.inc.8.1.if.end11_crit_edge, %for.inc.7.1.if.end11_crit_edge, %for.inc.6.1.if.end11_crit_edge, %for.inc.5.1.if.end11_crit_edge, %for.inc.4.1.if.end11_crit_edge, %for.inc.3.1.if.end11_crit_edge, %for.inc.2.1.if.end11_crit_edge, %for.inc.1.1.if.end11_crit_edge, %for.inc.169.if.end11_crit_edge, %for.cond3.preheader.1.if.end11_crit_edge, %for.inc.11.if.end11_crit_edge, %for.inc.10.if.end11_crit_edge, %for.inc.9.if.end11_crit_edge, %for.inc.8.if.end11_crit_edge, %for.inc.7.if.end11_crit_edge, %for.inc.6.if.end11_crit_edge, %for.inc.5.if.end11_crit_edge, %for.inc.4.if.end11_crit_edge, %for.inc.3.if.end11_crit_edge, %for.inc.2.if.end11_crit_edge, %for.inc.1.if.end11_crit_edge, %for.inc.if.end11_crit_edge, %for.cond3.preheader.if.end11_crit_edge
  %prediv.064.lcssa = phi i32 [ 0, %for.cond3.preheader.if.end11_crit_edge ], [ 0, %for.inc.if.end11_crit_edge ], [ 0, %for.inc.1.if.end11_crit_edge ], [ 0, %for.inc.2.if.end11_crit_edge ], [ 0, %for.inc.3.if.end11_crit_edge ], [ 0, %for.inc.4.if.end11_crit_edge ], [ 0, %for.inc.5.if.end11_crit_edge ], [ 0, %for.inc.6.if.end11_crit_edge ], [ 0, %for.inc.7.if.end11_crit_edge ], [ 0, %for.inc.8.if.end11_crit_edge ], [ 0, %for.inc.9.if.end11_crit_edge ], [ 0, %for.inc.10.if.end11_crit_edge ], [ 0, %for.inc.11.if.end11_crit_edge ], [ 1, %for.cond3.preheader.1.if.end11_crit_edge ], [ 1, %for.inc.169.if.end11_crit_edge ], [ 1, %for.inc.1.1.if.end11_crit_edge ], [ 1, %for.inc.2.1.if.end11_crit_edge ], [ 1, %for.inc.3.1.if.end11_crit_edge ], [ 1, %for.inc.4.1.if.end11_crit_edge ], [ 1, %for.inc.5.1.if.end11_crit_edge ], [ 1, %for.inc.6.1.if.end11_crit_edge ], [ 1, %for.inc.7.1.if.end11_crit_edge ], [ 1, %for.inc.8.1.if.end11_crit_edge ], [ 1, %for.inc.9.1.if.end11_crit_edge ], [ 1, %for.inc.10.1.if.end11_crit_edge ], [ 1, %for.inc.11.1.if.end11_crit_edge ], [ 2, %for.cond3.preheader.2.if.end11_crit_edge ], [ 2, %for.inc.271.if.end11_crit_edge ], [ 2, %for.inc.1.2.if.end11_crit_edge ], [ 2, %for.inc.2.2.if.end11_crit_edge ], [ 2, %for.inc.3.2.if.end11_crit_edge ], [ 2, %for.inc.4.2.if.end11_crit_edge ], [ 2, %for.inc.5.2.if.end11_crit_edge ], [ 2, %for.inc.6.2.if.end11_crit_edge ], [ 2, %for.inc.7.2.if.end11_crit_edge ], [ 2, %for.inc.8.2.if.end11_crit_edge ], [ 2, %for.inc.9.2.if.end11_crit_edge ], [ 2, %for.inc.10.2.if.end11_crit_edge ], [ 2, %for.inc.11.2.if.end11_crit_edge ], [ 3, %for.cond3.preheader.3.if.end11_crit_edge ], [ 3, %for.inc.373.if.end11_crit_edge ], [ 3, %for.inc.1.3.if.end11_crit_edge ], [ 3, %for.inc.2.3.if.end11_crit_edge ], [ 3, %for.inc.3.3.if.end11_crit_edge ], [ 3, %for.inc.4.3.if.end11_crit_edge ], [ 3, %for.inc.5.3.if.end11_crit_edge ], [ 3, %for.inc.6.3.if.end11_crit_edge ], [ 3, %for.inc.7.3.if.end11_crit_edge ], [ 3, %for.inc.8.3.if.end11_crit_edge ], [ 3, %for.inc.9.3.if.end11_crit_edge ], [ 3, %for.inc.10.3.if.end11_crit_edge ], [ 3, %for.inc.11.3.if.end11_crit_edge ]
  %postdiv.063.lcssa = phi i32 [ 0, %for.cond3.preheader.if.end11_crit_edge ], [ 1, %for.inc.if.end11_crit_edge ], [ 2, %for.inc.1.if.end11_crit_edge ], [ 3, %for.inc.2.if.end11_crit_edge ], [ 4, %for.inc.3.if.end11_crit_edge ], [ 5, %for.inc.4.if.end11_crit_edge ], [ 6, %for.inc.5.if.end11_crit_edge ], [ 7, %for.inc.6.if.end11_crit_edge ], [ 8, %for.inc.7.if.end11_crit_edge ], [ 9, %for.inc.8.if.end11_crit_edge ], [ 10, %for.inc.9.if.end11_crit_edge ], [ 11, %for.inc.10.if.end11_crit_edge ], [ 12, %for.inc.11.if.end11_crit_edge ], [ 0, %for.cond3.preheader.1.if.end11_crit_edge ], [ 1, %for.inc.169.if.end11_crit_edge ], [ 2, %for.inc.1.1.if.end11_crit_edge ], [ 3, %for.inc.2.1.if.end11_crit_edge ], [ 4, %for.inc.3.1.if.end11_crit_edge ], [ 5, %for.inc.4.1.if.end11_crit_edge ], [ 6, %for.inc.5.1.if.end11_crit_edge ], [ 7, %for.inc.6.1.if.end11_crit_edge ], [ 8, %for.inc.7.1.if.end11_crit_edge ], [ 9, %for.inc.8.1.if.end11_crit_edge ], [ 10, %for.inc.9.1.if.end11_crit_edge ], [ 11, %for.inc.10.1.if.end11_crit_edge ], [ 12, %for.inc.11.1.if.end11_crit_edge ], [ 0, %for.cond3.preheader.2.if.end11_crit_edge ], [ 1, %for.inc.271.if.end11_crit_edge ], [ 2, %for.inc.1.2.if.end11_crit_edge ], [ 3, %for.inc.2.2.if.end11_crit_edge ], [ 4, %for.inc.3.2.if.end11_crit_edge ], [ 5, %for.inc.4.2.if.end11_crit_edge ], [ 6, %for.inc.5.2.if.end11_crit_edge ], [ 7, %for.inc.6.2.if.end11_crit_edge ], [ 8, %for.inc.7.2.if.end11_crit_edge ], [ 9, %for.inc.8.2.if.end11_crit_edge ], [ 10, %for.inc.9.2.if.end11_crit_edge ], [ 11, %for.inc.10.2.if.end11_crit_edge ], [ 12, %for.inc.11.2.if.end11_crit_edge ], [ 0, %for.cond3.preheader.3.if.end11_crit_edge ], [ 1, %for.inc.373.if.end11_crit_edge ], [ 2, %for.inc.1.3.if.end11_crit_edge ], [ 3, %for.inc.2.3.if.end11_crit_edge ], [ 4, %for.inc.3.3.if.end11_crit_edge ], [ 5, %for.inc.4.3.if.end11_crit_edge ], [ 6, %for.inc.5.3.if.end11_crit_edge ], [ 7, %for.inc.6.3.if.end11_crit_edge ], [ 8, %for.inc.7.3.if.end11_crit_edge ], [ 9, %for.inc.8.3.if.end11_crit_edge ], [ 10, %for.inc.9.3.if.end11_crit_edge ], [ 11, %for.inc.10.3.if.end11_crit_edge ], [ 12, %for.inc.11.3.if.end11_crit_edge ]
  %modulo = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.063.lcssa, i32 1
  %1 = ptrtoint ptr %modulo to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %modulo, align 1
  %conv13 = zext i8 %2 to i32
  %shl = shl i32 %conv13, 28
  %fract = getelementptr [4 x %struct.anon.43], ptr @predivs, i32 0, i32 %prediv.064.lcssa, i32 4
  %3 = ptrtoint ptr %fract to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fract, align 2
  %conv16 = zext i16 %4 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %fbcclk = getelementptr [4 x %struct.anon.43], ptr @predivs, i32 0, i32 %prediv.064.lcssa, i32 3
  %5 = ptrtoint ptr %fbcclk to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fbcclk, align 1
  %conv20 = zext i8 %6 to i32
  %shl21 = shl nuw nsw i32 %conv20, 3
  %mclk = getelementptr [4 x %struct.anon.43], ptr @predivs, i32 0, i32 %prediv.064.lcssa, i32 2
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mclk, align 4
  %conv24 = zext i8 %8 to i32
  %shl25 = shl nuw nsw i32 %conv24, 2
  %or14 = or i32 %shl, %shl17
  %or18 = or i32 %or14, %shl21
  %or22 = or i32 %or18, %shl25
  %or26 = or i32 %or22, 129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr27 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %9) #6, !srcloc !65
  %pattern = getelementptr [13 x %struct.anon.44], ptr @postdivs, i32 0, i32 %postdiv.063.lcssa, i32 2
  %12 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pattern, align 1
  %conv29 = zext i8 %13 to i32
  %or31 = or i32 %conv29, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %add.ptr36 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %14) #6, !srcloc !65
  br label %cleanup

for.inc:                                          ; preds = %for.cond3.preheader
  %mul.1.mask = and i32 %rate, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 67737600, i32 %mul.1.mask)
  %cmp8.not.1 = icmp eq i32 %mul.1.mask, 67737600
  br i1 %cmp8.not.1, label %for.inc.if.end11_crit_edge, label %for.inc.1

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.1:                                        ; preds = %for.inc
  %mul.2.mask = and i32 %rate, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 33868800, i32 %mul.2.mask)
  %cmp8.not.2 = icmp eq i32 %mul.2.mask, 33868800
  br i1 %cmp8.not.2, label %for.inc.1.if.end11_crit_edge, label %for.inc.2

for.inc.1.if.end11_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.2:                                        ; preds = %for.inc.1
  %mul.3 = mul i32 %rate, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.3)
  %cmp8.not.3 = icmp eq i32 %mul.3, 135475200
  br i1 %cmp8.not.3, label %for.inc.2.if.end11_crit_edge, label %for.inc.3

for.inc.2.if.end11_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.3:                                        ; preds = %for.inc.2
  %mul.4.mask = and i32 %rate, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 16934400, i32 %mul.4.mask)
  %cmp8.not.4 = icmp eq i32 %mul.4.mask, 16934400
  br i1 %cmp8.not.4, label %for.inc.3.if.end11_crit_edge, label %for.inc.4

for.inc.3.if.end11_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.4:                                        ; preds = %for.inc.3
  %mul.5 = mul i32 %rate, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.5)
  %cmp8.not.5 = icmp eq i32 %mul.5, 135475200
  br i1 %cmp8.not.5, label %for.inc.4.if.end11_crit_edge, label %for.inc.5

for.inc.4.if.end11_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.5:                                        ; preds = %for.inc.4
  %mul.6 = mul i32 %rate, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.6)
  %cmp8.not.6 = icmp eq i32 %mul.6, 135475200
  br i1 %cmp8.not.6, label %for.inc.5.if.end11_crit_edge, label %for.inc.6

for.inc.5.if.end11_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.6:                                        ; preds = %for.inc.5
  %mul.7.mask = and i32 %rate, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 8467200, i32 %mul.7.mask)
  %cmp8.not.7 = icmp eq i32 %mul.7.mask, 8467200
  br i1 %cmp8.not.7, label %for.inc.6.if.end11_crit_edge, label %for.inc.7

for.inc.6.if.end11_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.7:                                        ; preds = %for.inc.6
  %mul.8 = mul i32 %rate, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.8)
  %cmp8.not.8 = icmp eq i32 %mul.8, 135475200
  br i1 %cmp8.not.8, label %for.inc.7.if.end11_crit_edge, label %for.inc.8

for.inc.7.if.end11_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.8:                                        ; preds = %for.inc.7
  %mul.9 = mul i32 %rate, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.9)
  %cmp8.not.9 = icmp eq i32 %mul.9, 135475200
  br i1 %cmp8.not.9, label %for.inc.8.if.end11_crit_edge, label %for.inc.9

for.inc.8.if.end11_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.9:                                        ; preds = %for.inc.8
  %mul.10 = mul i32 %rate, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.10)
  %cmp8.not.10 = icmp eq i32 %mul.10, 135475200
  br i1 %cmp8.not.10, label %for.inc.9.if.end11_crit_edge, label %for.inc.10

for.inc.9.if.end11_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.10:                                       ; preds = %for.inc.9
  %mul.11 = mul i32 %rate, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.11)
  %cmp8.not.11 = icmp eq i32 %mul.11, 135475200
  br i1 %cmp8.not.11, label %for.inc.10.if.end11_crit_edge, label %for.inc.11

for.inc.10.if.end11_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.11:                                       ; preds = %for.inc.10
  %mul.12 = mul i32 %rate, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.12)
  %cmp8.not.12 = icmp eq i32 %mul.12, 135475200
  br i1 %cmp8.not.12, label %for.inc.11.if.end11_crit_edge, label %for.cond3.preheader.1

for.inc.11.if.end11_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.cond3.preheader.1:                            ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %rate)
  %cmp8.not.168 = icmp eq i32 %rate, 147456000
  br i1 %cmp8.not.168, label %for.cond3.preheader.1.if.end11_crit_edge, label %for.inc.169

for.cond3.preheader.1.if.end11_crit_edge:         ; preds = %for.cond3.preheader.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.169:                                      ; preds = %for.cond3.preheader.1
  %mul.1.1.mask = and i32 %rate, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 73728000, i32 %mul.1.1.mask)
  %cmp8.not.1.1 = icmp eq i32 %mul.1.1.mask, 73728000
  br i1 %cmp8.not.1.1, label %for.inc.169.if.end11_crit_edge, label %for.inc.1.1

for.inc.169.if.end11_crit_edge:                   ; preds = %for.inc.169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.1.1:                                      ; preds = %for.inc.169
  %mul.2.1.mask = and i32 %rate, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %mul.2.1.mask)
  %cmp8.not.2.1 = icmp eq i32 %mul.2.1.mask, 36864000
  br i1 %cmp8.not.2.1, label %for.inc.1.1.if.end11_crit_edge, label %for.inc.2.1

for.inc.1.1.if.end11_crit_edge:                   ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %mul.3.1 = mul i32 %rate, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.3.1)
  %cmp8.not.3.1 = icmp eq i32 %mul.3.1, 147456000
  br i1 %cmp8.not.3.1, label %for.inc.2.1.if.end11_crit_edge, label %for.inc.3.1

for.inc.2.1.if.end11_crit_edge:                   ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %mul.4.1.mask = and i32 %rate, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 18432000, i32 %mul.4.1.mask)
  %cmp8.not.4.1 = icmp eq i32 %mul.4.1.mask, 18432000
  br i1 %cmp8.not.4.1, label %for.inc.3.1.if.end11_crit_edge, label %for.inc.4.1

for.inc.3.1.if.end11_crit_edge:                   ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %mul.5.1 = mul i32 %rate, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.5.1)
  %cmp8.not.5.1 = icmp eq i32 %mul.5.1, 147456000
  br i1 %cmp8.not.5.1, label %for.inc.4.1.if.end11_crit_edge, label %for.inc.5.1

for.inc.4.1.if.end11_crit_edge:                   ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %mul.6.1 = mul i32 %rate, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.6.1)
  %cmp8.not.6.1 = icmp eq i32 %mul.6.1, 147456000
  br i1 %cmp8.not.6.1, label %for.inc.5.1.if.end11_crit_edge, label %for.inc.6.1

for.inc.5.1.if.end11_crit_edge:                   ; preds = %for.inc.5.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.6.1:                                      ; preds = %for.inc.5.1
  %mul.7.1.mask = and i32 %rate, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 9216000, i32 %mul.7.1.mask)
  %cmp8.not.7.1 = icmp eq i32 %mul.7.1.mask, 9216000
  br i1 %cmp8.not.7.1, label %for.inc.6.1.if.end11_crit_edge, label %for.inc.7.1

for.inc.6.1.if.end11_crit_edge:                   ; preds = %for.inc.6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.7.1:                                      ; preds = %for.inc.6.1
  %mul.8.1 = mul i32 %rate, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.8.1)
  %cmp8.not.8.1 = icmp eq i32 %mul.8.1, 147456000
  br i1 %cmp8.not.8.1, label %for.inc.7.1.if.end11_crit_edge, label %for.inc.8.1

for.inc.7.1.if.end11_crit_edge:                   ; preds = %for.inc.7.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.8.1:                                      ; preds = %for.inc.7.1
  %mul.9.1 = mul i32 %rate, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.9.1)
  %cmp8.not.9.1 = icmp eq i32 %mul.9.1, 147456000
  br i1 %cmp8.not.9.1, label %for.inc.8.1.if.end11_crit_edge, label %for.inc.9.1

for.inc.8.1.if.end11_crit_edge:                   ; preds = %for.inc.8.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.9.1:                                      ; preds = %for.inc.8.1
  %mul.10.1 = mul i32 %rate, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.10.1)
  %cmp8.not.10.1 = icmp eq i32 %mul.10.1, 147456000
  br i1 %cmp8.not.10.1, label %for.inc.9.1.if.end11_crit_edge, label %for.inc.10.1

for.inc.9.1.if.end11_crit_edge:                   ; preds = %for.inc.9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.10.1:                                     ; preds = %for.inc.9.1
  %mul.11.1 = mul i32 %rate, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.11.1)
  %cmp8.not.11.1 = icmp eq i32 %mul.11.1, 147456000
  br i1 %cmp8.not.11.1, label %for.inc.10.1.if.end11_crit_edge, label %for.inc.11.1

for.inc.10.1.if.end11_crit_edge:                  ; preds = %for.inc.10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.11.1:                                     ; preds = %for.inc.10.1
  %mul.12.1 = mul i32 %rate, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.12.1)
  %cmp8.not.12.1 = icmp eq i32 %mul.12.1, 147456000
  br i1 %cmp8.not.12.1, label %for.inc.11.1.if.end11_crit_edge, label %for.inc.11.1.cleanup_crit_edge

for.inc.11.1.cleanup_crit_edge:                   ; preds = %for.inc.11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.11.1.if.end11_crit_edge:                  ; preds = %for.inc.11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.cond3.preheader.2:                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %rate)
  %cmp8.not.270 = icmp eq i32 %rate, 135475200
  br i1 %cmp8.not.270, label %for.cond3.preheader.2.if.end11_crit_edge, label %for.inc.271

for.cond3.preheader.2.if.end11_crit_edge:         ; preds = %for.cond3.preheader.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.271:                                      ; preds = %for.cond3.preheader.2
  %mul.1.2.mask = and i32 %rate, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 67737600, i32 %mul.1.2.mask)
  %cmp8.not.1.2 = icmp eq i32 %mul.1.2.mask, 67737600
  br i1 %cmp8.not.1.2, label %for.inc.271.if.end11_crit_edge, label %for.inc.1.2

for.inc.271.if.end11_crit_edge:                   ; preds = %for.inc.271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.1.2:                                      ; preds = %for.inc.271
  %mul.2.2.mask = and i32 %rate, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 33868800, i32 %mul.2.2.mask)
  %cmp8.not.2.2 = icmp eq i32 %mul.2.2.mask, 33868800
  br i1 %cmp8.not.2.2, label %for.inc.1.2.if.end11_crit_edge, label %for.inc.2.2

for.inc.1.2.if.end11_crit_edge:                   ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %mul.3.2 = mul i32 %rate, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.3.2)
  %cmp8.not.3.2 = icmp eq i32 %mul.3.2, 135475200
  br i1 %cmp8.not.3.2, label %for.inc.2.2.if.end11_crit_edge, label %for.inc.3.2

for.inc.2.2.if.end11_crit_edge:                   ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %mul.4.2.mask = and i32 %rate, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 16934400, i32 %mul.4.2.mask)
  %cmp8.not.4.2 = icmp eq i32 %mul.4.2.mask, 16934400
  br i1 %cmp8.not.4.2, label %for.inc.3.2.if.end11_crit_edge, label %for.inc.4.2

for.inc.3.2.if.end11_crit_edge:                   ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %mul.5.2 = mul i32 %rate, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.5.2)
  %cmp8.not.5.2 = icmp eq i32 %mul.5.2, 135475200
  br i1 %cmp8.not.5.2, label %for.inc.4.2.if.end11_crit_edge, label %for.inc.5.2

for.inc.4.2.if.end11_crit_edge:                   ; preds = %for.inc.4.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.5.2:                                      ; preds = %for.inc.4.2
  %mul.6.2 = mul i32 %rate, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.6.2)
  %cmp8.not.6.2 = icmp eq i32 %mul.6.2, 135475200
  br i1 %cmp8.not.6.2, label %for.inc.5.2.if.end11_crit_edge, label %for.inc.6.2

for.inc.5.2.if.end11_crit_edge:                   ; preds = %for.inc.5.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.6.2:                                      ; preds = %for.inc.5.2
  %mul.7.2.mask = and i32 %rate, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 8467200, i32 %mul.7.2.mask)
  %cmp8.not.7.2 = icmp eq i32 %mul.7.2.mask, 8467200
  br i1 %cmp8.not.7.2, label %for.inc.6.2.if.end11_crit_edge, label %for.inc.7.2

for.inc.6.2.if.end11_crit_edge:                   ; preds = %for.inc.6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.7.2:                                      ; preds = %for.inc.6.2
  %mul.8.2 = mul i32 %rate, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.8.2)
  %cmp8.not.8.2 = icmp eq i32 %mul.8.2, 135475200
  br i1 %cmp8.not.8.2, label %for.inc.7.2.if.end11_crit_edge, label %for.inc.8.2

for.inc.7.2.if.end11_crit_edge:                   ; preds = %for.inc.7.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.8.2:                                      ; preds = %for.inc.7.2
  %mul.9.2 = mul i32 %rate, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.9.2)
  %cmp8.not.9.2 = icmp eq i32 %mul.9.2, 135475200
  br i1 %cmp8.not.9.2, label %for.inc.8.2.if.end11_crit_edge, label %for.inc.9.2

for.inc.8.2.if.end11_crit_edge:                   ; preds = %for.inc.8.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.9.2:                                      ; preds = %for.inc.8.2
  %mul.10.2 = mul i32 %rate, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.10.2)
  %cmp8.not.10.2 = icmp eq i32 %mul.10.2, 135475200
  br i1 %cmp8.not.10.2, label %for.inc.9.2.if.end11_crit_edge, label %for.inc.10.2

for.inc.9.2.if.end11_crit_edge:                   ; preds = %for.inc.9.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.10.2:                                     ; preds = %for.inc.9.2
  %mul.11.2 = mul i32 %rate, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.11.2)
  %cmp8.not.11.2 = icmp eq i32 %mul.11.2, 135475200
  br i1 %cmp8.not.11.2, label %for.inc.10.2.if.end11_crit_edge, label %for.inc.11.2

for.inc.10.2.if.end11_crit_edge:                  ; preds = %for.inc.10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.11.2:                                     ; preds = %for.inc.10.2
  %mul.12.2 = mul i32 %rate, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 135475200, i32 %mul.12.2)
  %cmp8.not.12.2 = icmp eq i32 %mul.12.2, 135475200
  br i1 %cmp8.not.12.2, label %for.inc.11.2.if.end11_crit_edge, label %for.cond3.preheader.3

for.inc.11.2.if.end11_crit_edge:                  ; preds = %for.inc.11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.cond3.preheader.3:                            ; preds = %for.inc.11.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %rate)
  %cmp8.not.372 = icmp eq i32 %rate, 147456000
  br i1 %cmp8.not.372, label %for.cond3.preheader.3.if.end11_crit_edge, label %for.inc.373

for.cond3.preheader.3.if.end11_crit_edge:         ; preds = %for.cond3.preheader.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.373:                                      ; preds = %for.cond3.preheader.3
  %mul.1.3.mask = and i32 %rate, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 73728000, i32 %mul.1.3.mask)
  %cmp8.not.1.3 = icmp eq i32 %mul.1.3.mask, 73728000
  br i1 %cmp8.not.1.3, label %for.inc.373.if.end11_crit_edge, label %for.inc.1.3

for.inc.373.if.end11_crit_edge:                   ; preds = %for.inc.373
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.1.3:                                      ; preds = %for.inc.373
  %mul.2.3.mask = and i32 %rate, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %mul.2.3.mask)
  %cmp8.not.2.3 = icmp eq i32 %mul.2.3.mask, 36864000
  br i1 %cmp8.not.2.3, label %for.inc.1.3.if.end11_crit_edge, label %for.inc.2.3

for.inc.1.3.if.end11_crit_edge:                   ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %mul.3.3 = mul i32 %rate, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.3.3)
  %cmp8.not.3.3 = icmp eq i32 %mul.3.3, 147456000
  br i1 %cmp8.not.3.3, label %for.inc.2.3.if.end11_crit_edge, label %for.inc.3.3

for.inc.2.3.if.end11_crit_edge:                   ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %mul.4.3.mask = and i32 %rate, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 18432000, i32 %mul.4.3.mask)
  %cmp8.not.4.3 = icmp eq i32 %mul.4.3.mask, 18432000
  br i1 %cmp8.not.4.3, label %for.inc.3.3.if.end11_crit_edge, label %for.inc.4.3

for.inc.3.3.if.end11_crit_edge:                   ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %mul.5.3 = mul i32 %rate, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.5.3)
  %cmp8.not.5.3 = icmp eq i32 %mul.5.3, 147456000
  br i1 %cmp8.not.5.3, label %for.inc.4.3.if.end11_crit_edge, label %for.inc.5.3

for.inc.4.3.if.end11_crit_edge:                   ; preds = %for.inc.4.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.5.3:                                      ; preds = %for.inc.4.3
  %mul.6.3 = mul i32 %rate, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.6.3)
  %cmp8.not.6.3 = icmp eq i32 %mul.6.3, 147456000
  br i1 %cmp8.not.6.3, label %for.inc.5.3.if.end11_crit_edge, label %for.inc.6.3

for.inc.5.3.if.end11_crit_edge:                   ; preds = %for.inc.5.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.6.3:                                      ; preds = %for.inc.5.3
  %mul.7.3.mask = and i32 %rate, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 9216000, i32 %mul.7.3.mask)
  %cmp8.not.7.3 = icmp eq i32 %mul.7.3.mask, 9216000
  br i1 %cmp8.not.7.3, label %for.inc.6.3.if.end11_crit_edge, label %for.inc.7.3

for.inc.6.3.if.end11_crit_edge:                   ; preds = %for.inc.6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.7.3:                                      ; preds = %for.inc.6.3
  %mul.8.3 = mul i32 %rate, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.8.3)
  %cmp8.not.8.3 = icmp eq i32 %mul.8.3, 147456000
  br i1 %cmp8.not.8.3, label %for.inc.7.3.if.end11_crit_edge, label %for.inc.8.3

for.inc.7.3.if.end11_crit_edge:                   ; preds = %for.inc.7.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.8.3:                                      ; preds = %for.inc.7.3
  %mul.9.3 = mul i32 %rate, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.9.3)
  %cmp8.not.9.3 = icmp eq i32 %mul.9.3, 147456000
  br i1 %cmp8.not.9.3, label %for.inc.8.3.if.end11_crit_edge, label %for.inc.9.3

for.inc.8.3.if.end11_crit_edge:                   ; preds = %for.inc.8.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.9.3:                                      ; preds = %for.inc.8.3
  %mul.10.3 = mul i32 %rate, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.10.3)
  %cmp8.not.10.3 = icmp eq i32 %mul.10.3, 147456000
  br i1 %cmp8.not.10.3, label %for.inc.9.3.if.end11_crit_edge, label %for.inc.10.3

for.inc.9.3.if.end11_crit_edge:                   ; preds = %for.inc.9.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.10.3:                                     ; preds = %for.inc.9.3
  %mul.11.3 = mul i32 %rate, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.11.3)
  %cmp8.not.11.3 = icmp eq i32 %mul.11.3, 147456000
  br i1 %cmp8.not.11.3, label %for.inc.10.3.if.end11_crit_edge, label %for.inc.11.3

for.inc.10.3.if.end11_crit_edge:                  ; preds = %for.inc.10.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.11.3:                                     ; preds = %for.inc.10.3
  %mul.12.3 = mul i32 %rate, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %mul.12.3)
  %cmp8.not.12.3 = icmp eq i32 %mul.12.3, 147456000
  br i1 %cmp8.not.12.3, label %for.inc.11.3.if.end11_crit_edge, label %for.inc.11.3.cleanup_crit_edge

for.inc.11.3.cleanup_crit_edge:                   ; preds = %for.inc.11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.11.3.if.end11_crit_edge:                  ; preds = %for.inc.11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

cleanup:                                          ; preds = %for.inc.11.3.cleanup_crit_edge, %for.inc.11.1.cleanup_crit_edge, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -34, %for.inc.11.3.cleanup_crit_edge ], [ -34, %for.inc.11.1.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_audio_clk_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !61
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %aud_ctrl = getelementptr inbounds %struct.mmp2_audio_clk, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %aud_ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %aud_ctrl, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !61
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %aud_pll_ctrl0 = getelementptr inbounds %struct.mmp2_audio_clk, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %aud_pll_ctrl0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %aud_pll_ctrl0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !61
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %aud_pll_ctrl1 = getelementptr inbounds %struct.mmp2_audio_clk, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %aud_pll_ctrl1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %aud_pll_ctrl1, align 4
  %call17 = tail call i32 @pm_clk_suspend(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_audio_clk_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_clk_resume(ptr noundef %dev) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %aud_ctrl = getelementptr inbounds %struct.mmp2_audio_clk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aud_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aud_ctrl, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %aud_pll_ctrl0 = getelementptr inbounds %struct.mmp2_audio_clk, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %aud_pll_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aud_pll_ctrl0, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %aud_pll_ctrl1 = getelementptr inbounds %struct.mmp2_audio_clk, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %aud_pll_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aud_pll_ctrl1, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #6, !srcloc !65
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_clk_audio__184_441_mmp2_audio_clk_driver_init6, !1, !"__initcall__kmod_clk_audio__184_441_mmp2_audio_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-audio.c", i32 441, i32 1}
!2 = !{ptr @__exitcall_mmp2_audio_clk_driver_exit, !1, !"__exitcall_mmp2_audio_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author185, !4, !"__UNIQUE_ID_author185", i1 false, i1 false}
!4 = !{!"../drivers/clk/mmp/clk-audio.c", i32 443, i32 1}
!5 = !{ptr @__UNIQUE_ID_description186, !6, !"__UNIQUE_ID_description186", i1 false, i1 false}
!6 = !{!"../drivers/clk/mmp/clk-audio.c", i32 444, i32 1}
!7 = !{ptr @__UNIQUE_ID_file187, !8, !"__UNIQUE_ID_file187", i1 false, i1 false}
!8 = !{!"../drivers/clk/mmp/clk-audio.c", i32 445, i32 1}
!9 = !{ptr @__UNIQUE_ID_license188, !8, !"__UNIQUE_ID_license188", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mmp/clk-audio.c", i32 434, i32 11}
!12 = !{ptr @mmp2_audio_clk_driver, !13, !"mmp2_audio_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/mmp/clk-audio.c", i32 432, i32 31}
!14 = !{ptr @mmp2_audio_clk_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/clk/mmp/clk-audio.c", i32 357, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/mmp/clk-audio.c", i32 369, i32 31}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mmp/clk-audio.c", i32 237, i32 16}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mmp/clk-audio.c", i32 241, i32 16}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mmp/clk-audio.c", i32 245, i32 28}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mmp/clk-audio.c", i32 252, i32 27}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/mmp/clk-audio.c", i32 262, i32 29}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mmp/clk-audio.c", i32 275, i32 30}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mmp/clk-audio.c", i32 284, i32 28}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mmp/clk-audio.c", i32 296, i32 29}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mmp/clk-audio.c", i32 305, i32 28}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mmp/clk-audio.c", i32 315, i32 28}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mmp/clk-audio.c", i32 327, i32 29}
!42 = !{ptr @audio_pll_ops, !43, !"audio_pll_ops", i1 false, i1 false}
!43 = !{!"../drivers/clk/mmp/clk-audio.c", i32 227, i32 29}
!44 = !{ptr @predivs, !45, !"predivs", i1 false, i1 false}
!45 = !{!"../drivers/clk/mmp/clk-audio.c", i32 87, i32 3}
!46 = !{ptr @postdivs, !47, !"postdivs", i1 false, i1 false}
!47 = !{!"../drivers/clk/mmp/clk-audio.c", i32 98, i32 3}
!48 = !{ptr @mmp2_audio_clk_of_match, !49, !"mmp2_audio_clk_of_match", i1 false, i1 false}
!49 = !{!"../drivers/clk/mmp/clk-audio.c", i32 425, i32 34}
!50 = !{ptr @mmp2_audio_clk_pm_ops, !51, !"mmp2_audio_clk_pm_ops", i1 false, i1 false}
!51 = !{!"../drivers/clk/mmp/clk-audio.c", i32 421, i32 32}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 4038155}
!62 = !{i64 2152945413}
!63 = !{i64 2152945991}
!64 = !{i64 2152949901}
!65 = !{i64 4037737}
!66 = !{i64 2152950352}
!67 = !{i64 2152956519}
!68 = !{i64 2152957030}
!69 = !{i64 2152957541}
!70 = !{i64 2152957776}
!71 = !{i64 2152958229}
!72 = !{i64 2152958697}
