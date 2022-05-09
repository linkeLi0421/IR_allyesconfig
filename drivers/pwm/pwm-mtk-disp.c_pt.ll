; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-mtk-disp.c_pt.bc'
source_filename = "../drivers/pwm/pwm-mtk-disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_pwm_data = type { i32, i32, i32, i32, i8, i32, i32, i32, i32 }
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
%struct.mtk_disp_pwm = type { %struct.pwm_chip, ptr, ptr, ptr, ptr, i8 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_mtk_disp__198_316_mtk_disp_pwm_driver_init6 = internal global ptr @mtk_disp_pwm_driver_init, section ".initcall6.init", align 4
@mtk_disp_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_disp_pwm_probe, ptr @mtk_disp_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_disp_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_disp_pwm_driver_exit = internal global ptr @mtk_disp_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author199 = internal constant [53 x i8] c"pwm_mtk_disp.author=YH Huang <yh.huang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [57 x i8] c"pwm_mtk_disp.description=MediaTek SoC display PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [43 x i8] c"pwm_mtk_disp.file=drivers/pwm/pwm-mtk-disp\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [28 x i8] c"pwm_mtk_disp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek-disp-pwm\00", [46 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6595-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_pwm_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @mtk_disp_pwm_apply, ptr @mtk_disp_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwmchip_add() failed: %pe\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_disp_pwm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-mtk-disp.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_probe._entry_ptr = internal global ptr @mtk_disp_pwm_probe._entry, section ".printk_index", align 4
@mtk_disp_pwm_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 99, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't enable mdp->clk_main: %pe\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_disp_pwm_apply\00", [45 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_apply._entry_ptr = internal global ptr @mtk_disp_pwm_apply._entry, section ".printk_index", align 4
@mtk_disp_pwm_apply._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't enable mdp->clk_mm: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_apply._entry_ptr.12 = internal global ptr @mtk_disp_pwm_apply._entry.10, section ".printk_index", align 4
@mtk_disp_pwm_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.13, ptr @.str.5, i32 186, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_disp_pwm_get_state\00", [41 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_get_state._entry_ptr = internal global ptr @mtk_disp_pwm_get_state._entry, section ".printk_index", align 4
@mtk_disp_pwm_get_state._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.5, i32 192, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mtk_disp_pwm_get_state._entry_ptr.15 = internal global ptr @mtk_disp_pwm_get_state._entry.14, section ".printk_index", align 4
@mt2701_pwm_data = internal constant { %struct.mtk_pwm_data, [60 x i8] } { %struct.mtk_pwm_data { i32 65536, i32 168, i32 2, i32 172, i8 0, i32 0, i32 0, i32 176, i32 3 }, [60 x i8] zeroinitializer }, align 32
@mt8173_pwm_data = internal constant { %struct.mtk_pwm_data, [60 x i8] } { %struct.mtk_pwm_data { i32 1, i32 16, i32 0, i32 20, i8 1, i32 8, i32 1, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mt8183_pwm_data = internal constant { %struct.mtk_pwm_data, [60 x i8] } { %struct.mtk_pwm_data { i32 1, i32 24, i32 0, i32 28, i8 0, i32 0, i32 0, i32 128, i32 3 }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"mtk_disp_pwm_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 308, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 310, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"mtk_disp_pwm_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 299, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 237, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 241, i32 41 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"mtk_disp_pwm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 216, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 251, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 98, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 186, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 192, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"mt2701_pwm_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 269, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"mt8173_pwm_data\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 279, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"mt8183_pwm_data\00", align 1
@___asan_gen_.83 = private constant [30 x i8] c"../drivers/pwm/pwm-mtk-disp.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 289, i32 34 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_mtk_disp_pwm_driver_exit, ptr @__initcall__kmod_pwm_mtk_disp__198_316_mtk_disp_pwm_driver_init6, ptr @mtk_disp_pwm_apply._entry, ptr @mtk_disp_pwm_apply._entry.10, ptr @mtk_disp_pwm_apply._entry_ptr, ptr @mtk_disp_pwm_apply._entry_ptr.12, ptr @mtk_disp_pwm_driver_exit, ptr @mtk_disp_pwm_get_state._entry, ptr @mtk_disp_pwm_get_state._entry.14, ptr @mtk_disp_pwm_get_state._entry_ptr, ptr @mtk_disp_pwm_get_state._entry_ptr.15, ptr @mtk_disp_pwm_probe._entry, ptr @mtk_disp_pwm_probe._entry_ptr, ptr @mtk_disp_pwm_driver, ptr @.str, ptr @mtk_disp_pwm_of_match, ptr @.str.1, ptr @.str.2, ptr @mtk_disp_pwm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @mt2701_pwm_data, ptr @mt8173_pwm_data, ptr @mt8183_pwm_data], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_apply._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_pwm_get_state._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_pwm_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_pwm_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_pwm_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_disp_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_disp_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_disp_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %data = getelementptr inbounds %struct.mtk_disp_pwm, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.mtk_disp_pwm, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %clk_main = getelementptr inbounds %struct.mtk_disp_pwm, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk_main to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %clk_main, align 4
  %cmp.i61 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %clk_mm = getelementptr inbounds %struct.mtk_disp_pwm, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %clk_mm, align 4
  %cmp.i62 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_disp_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %npwm, align 4
  %call31 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %10 = inttoptr i32 %call31 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull %10) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end, %if.then22, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then14 ], [ %6, %if.then22 ], [ %call31, %do.end ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_pwm_apply(ptr nocapture noundef %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %base.i = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %neg.i = xor i32 %7, -1
  %and.i = and i32 %11, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #5, !srcloc !65
  %enabled2 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 5
  %13 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled2, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  br i1 %tobool3.not, label %if.then1.if.end5_crit_edge, label %if.then4

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %clk_mm = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %clk_mm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_mm, align 4
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  %clk_main = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 2
  %17 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %18) #5
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then1.if.end5_crit_edge
  %19 = ptrtoint ptr %enabled2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %enabled2, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %enabled8 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 5
  %20 = ptrtoint ptr %enabled8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled8, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end28_crit_edge

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then10:                                        ; preds = %if.end7
  %clk_main11 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 2
  %22 = ptrtoint ptr %clk_main11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_main11, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.clk_prepare_enable.exit_crit_edge

if.then10.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then10
  %call1.i = tail call i32 @clk_enable(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end16_crit_edge, label %if.then3.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then10.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then10.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp13, label %do.end, label %clk_prepare_enable.exit.if.end16_crit_edge

clk_prepare_enable.exit.if.end16_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = inttoptr i32 %retval.0.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull %26) #8
  br label %cleanup

if.end16:                                         ; preds = %clk_prepare_enable.exit.if.end16_crit_edge, %if.end.i.if.end16_crit_edge
  %clk_mm17 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 3
  %27 = ptrtoint ptr %clk_mm17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_mm17, align 4
  %call.i145 = tail call i32 @clk_prepare(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %if.end.i149, label %if.end16.clk_prepare_enable.exit152_crit_edge

if.end16.clk_prepare_enable.exit152_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit152

if.end.i149:                                      ; preds = %if.end16
  %call1.i147 = tail call i32 @clk_enable(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %tobool2.not.i148 = icmp eq i32 %call1.i147, 0
  br i1 %tobool2.not.i148, label %if.end.i149.if.end28_crit_edge, label %if.then3.i150

if.end.i149.if.end28_crit_edge:                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then3.i150:                                    ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %28) #5
  br label %clk_prepare_enable.exit152

clk_prepare_enable.exit152:                       ; preds = %if.then3.i150, %if.end16.clk_prepare_enable.exit152_crit_edge
  %retval.0.i151 = phi i32 [ %call.i145, %if.end16.clk_prepare_enable.exit152_crit_edge ], [ %call1.i147, %if.then3.i150 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i151)
  %cmp19 = icmp slt i32 %retval.0.i151, 0
  br i1 %cmp19, label %do.end23, label %clk_prepare_enable.exit152.if.end28_crit_edge

clk_prepare_enable.exit152.if.end28_crit_edge:    ; preds = %clk_prepare_enable.exit152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end23:                                         ; preds = %clk_prepare_enable.exit152
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = inttoptr i32 %retval.0.i151 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.11, ptr noundef nonnull %31) #8
  %32 = ptrtoint ptr %clk_main11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_main11, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %cleanup

if.end28:                                         ; preds = %clk_prepare_enable.exit152.if.end28_crit_edge, %if.end.i149.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %clk_main29 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 2
  %34 = ptrtoint ptr %clk_main29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_main29, align 4
  %call30 = tail call i32 @clk_get_rate(ptr noundef %35) #5
  %conv = zext i32 %call30 to i64
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %state, align 8
  %call32 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %37, i64 noundef %conv, i64 noundef 1000000000) #5
  %shr = lshr i64 %call32, 12
  %conv33 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv33)
  %cmp34 = icmp ugt i32 %conv33, 1023
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end28
  %38 = ptrtoint ptr %enabled8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enabled8, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool38.not = icmp eq i8 %39, 0
  br i1 %tobool38.not, label %if.then39, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %clk_mm40 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 3
  %40 = ptrtoint ptr %clk_mm40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_mm40, align 4
  tail call void @clk_disable(ptr noundef %41) #5
  tail call void @clk_unprepare(ptr noundef %41) #5
  %42 = ptrtoint ptr %clk_main29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_main29, align 4
  tail call void @clk_disable(ptr noundef %43) #5
  tail call void @clk_unprepare(ptr noundef %43) #5
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %44 = mul i32 %conv33, 1000000000
  %mul = add i32 %44, 1000000000
  %conv44 = zext i32 %mul to i64
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %state, align 8
  %call46 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %46, i64 noundef %conv, i64 noundef %conv44) #5
  %conv47 = trunc i64 %call46 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv47)
  %cmp48.not = icmp eq i32 %conv47, 0
  %dec = add i32 %conv47, -1
  %spec.select = select i1 %cmp48.not, i32 0, i32 %dec
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %47 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %duty_cycle, align 8
  %call52 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %48, i64 noundef %conv, i64 noundef %conv44) #5
  %conv53 = trunc i64 %call52 to i32
  %shl = shl i32 %conv53, 16
  %or = or i32 %shl, %spec.select
  %data54 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 1
  %49 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data54, align 4
  %con0 = getelementptr inbounds %struct.mtk_pwm_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %con0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %con0, align 4
  %shl55 = shl nuw nsw i32 %conv33, 16
  %base.i153 = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 4
  %53 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i153, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %56 = and i32 %55, -65284
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %or.i = or i32 %57, %shl55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %58) #5, !srcloc !65
  %59 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data54, align 4
  %con1 = getelementptr inbounds %struct.mtk_pwm_data, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %con1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %con1, align 4
  %63 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i153, align 4
  %add.ptr.i156 = getelementptr i8, ptr %64, i32 %62
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %66 = and i32 %65, 15728864
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %or.i158 = or i32 %or, %67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i158) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %68) #5, !srcloc !65
  %69 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data54, align 4
  %has_commit = getelementptr inbounds %struct.mtk_pwm_data, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %has_commit to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_commit, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool58.not = icmp eq i8 %72, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %commit = getelementptr inbounds %struct.mtk_pwm_data, ptr %70, i32 0, i32 5
  %73 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %commit, align 4
  %commit_mask = getelementptr inbounds %struct.mtk_pwm_data, ptr %70, i32 0, i32 6
  %75 = ptrtoint ptr %commit_mask to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %commit_mask, align 4
  %77 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i153, align 4
  %add.ptr.i160 = getelementptr i8, ptr %78, i32 %74
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #5, !srcloc !62
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %or.i163 = or i32 %80, %76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i163) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %81) #5, !srcloc !65
  %82 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data54, align 4
  %commit65 = getelementptr inbounds %struct.mtk_pwm_data, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %commit65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %commit65, align 4
  %commit_mask67 = getelementptr inbounds %struct.mtk_pwm_data, ptr %83, i32 0, i32 6
  %86 = ptrtoint ptr %commit_mask67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %commit_mask67, align 4
  %88 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i153, align 4
  %add.ptr.i165 = getelementptr i8, ptr %89, i32 %85
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #5, !srcloc !62
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %neg.i166 = xor i32 %87, -1
  %and.i167 = and i32 %91, %neg.i166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %92 = tail call i32 @llvm.bswap.i32(i32 %and.i167) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %92) #5, !srcloc !65
  br label %if.end77

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %bls_debug = getelementptr inbounds %struct.mtk_pwm_data, ptr %70, i32 0, i32 7
  %93 = ptrtoint ptr %bls_debug to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bls_debug, align 4
  %bls_debug_mask = getelementptr inbounds %struct.mtk_pwm_data, ptr %70, i32 0, i32 8
  %95 = ptrtoint ptr %bls_debug_mask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bls_debug_mask, align 4
  %97 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i153, align 4
  %add.ptr.i169 = getelementptr i8, ptr %98, i32 %94
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #5, !srcloc !62
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %or.i172 = or i32 %100, %96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i172) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %101) #5, !srcloc !65
  %102 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data54, align 4
  %con073 = getelementptr inbounds %struct.mtk_pwm_data, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %con073 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %con073, align 4
  %con0_sel = getelementptr inbounds %struct.mtk_pwm_data, ptr %103, i32 0, i32 2
  %106 = ptrtoint ptr %con0_sel to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %con0_sel, align 4
  %108 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i153, align 4
  %add.ptr.i174 = getelementptr i8, ptr %109, i32 %105
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #5, !srcloc !62
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %or.i177 = or i32 %111, %107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %112 = tail call i32 @llvm.bswap.i32(i32 %or.i177) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %112) #5, !srcloc !65
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then59
  %113 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data54, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %117 = ptrtoint ptr %base.i153 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i153, align 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #5, !srcloc !62
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %or.i181 = or i32 %120, %116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %121 = tail call i32 @llvm.bswap.i32(i32 %or.i181) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %121) #5, !srcloc !65
  %122 = ptrtoint ptr %enabled8 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %enabled8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then39, %if.then36.cleanup_crit_edge, %do.end23, %do.end, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ %retval.0.i, %do.end ], [ %retval.0.i151, %do.end23 ], [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then39 ], [ -22, %if.then36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_disp_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_main = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_main, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #8
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %clk_mm = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %clk_mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_mm, align 4
  %call.i131 = tail call i32 @clk_prepare(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.end.i135, label %if.end.clk_prepare_enable.exit138_crit_edge

if.end.clk_prepare_enable.exit138_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit138

if.end.i135:                                      ; preds = %if.end
  %call1.i133 = tail call i32 @clk_enable(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %tobool2.not.i134 = icmp eq i32 %call1.i133, 0
  br i1 %tobool2.not.i134, label %if.end.i135.if.end12_crit_edge, label %if.then3.i136

if.end.i135.if.end12_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then3.i136:                                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %clk_prepare_enable.exit138

clk_prepare_enable.exit138:                       ; preds = %if.then3.i136, %if.end.clk_prepare_enable.exit138_crit_edge
  %retval.0.i137 = phi i32 [ %call.i131, %if.end.clk_prepare_enable.exit138_crit_edge ], [ %call1.i133, %if.then3.i136 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i137)
  %cmp4 = icmp slt i32 %retval.0.i137, 0
  br i1 %cmp4, label %do.end8, label %clk_prepare_enable.exit138.if.end12_crit_edge

clk_prepare_enable.exit138.if.end12_crit_edge:    ; preds = %clk_prepare_enable.exit138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end8:                                          ; preds = %clk_prepare_enable.exit138
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = inttoptr i32 %retval.0.i137 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull %9) #8
  %10 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %cleanup

if.end12:                                         ; preds = %clk_prepare_enable.exit138.if.end12_crit_edge, %if.end.i135.if.end12_crit_edge
  %12 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_main, align 4
  %call14 = tail call i32 @clk_get_rate(ptr noundef %13) #5
  %conv = zext i32 %call14 to i64
  %base = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %data = getelementptr inbounds %struct.mtk_disp_pwm, ptr %chip, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %con015 = getelementptr inbounds %struct.mtk_pwm_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %con015 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %con015, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %con122 = getelementptr inbounds %struct.mtk_pwm_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %con122 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %con122, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !62
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %30 = trunc i32 %21 to i8
  %31 = and i8 %30, 1
  %32 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %enabled, align 4
  %and44 = lshr i32 %21, 16
  %shr = and i32 %and44, 1023
  %and61 = and i32 %29, 4095
  %add = add nuw nsw i32 %shr, 1
  %narrow = mul nuw nsw i32 %and61, %add
  %mul = zext i32 %narrow to i64
  %mul66 = mul nuw nsw i64 %mul, 1000000000
  %add67 = add nsw i64 %conv, -1
  %sub = add nsw i64 %add67, %mul66
  %call68 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %conv) #5
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call68, ptr %state, align 8
  %and86 = lshr i32 %29, 16
  %shr87 = and i32 %and86, 8191
  %narrow130 = mul nuw nsw i32 %shr87, %add
  %mul93 = zext i32 %narrow130 to i64
  %mul94 = mul nuw nsw i64 %mul93, 1000000000
  %sub96 = add nsw i64 %add67, %mul94
  %call97 = tail call i64 @div64_u64(i64 noundef %sub96, i64 noundef %conv) #5
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %34 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call97, ptr %duty_cycle, align 8
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %35 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %polarity, align 8
  %36 = ptrtoint ptr %clk_mm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_mm, align 4
  tail call void @clk_disable(ptr noundef %37) #5
  tail call void @clk_unprepare(ptr noundef %37) #5
  %38 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %39) #5
  tail call void @clk_unprepare(ptr noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mul_u64_u64_div_u64(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_pwm_mtk_disp__198_316_mtk_disp_pwm_driver_init6, !1, !"__initcall__kmod_pwm_mtk_disp__198_316_mtk_disp_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_mtk_disp_pwm_driver_exit, !1, !"__exitcall_mtk_disp_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author199, !4, !"__UNIQUE_ID_author199", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_description200, !6, !"__UNIQUE_ID_description200", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file201, !8, !"__UNIQUE_ID_file201", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license202, !8, !"__UNIQUE_ID_license202", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 310, i32 11}
!12 = !{ptr @mtk_disp_pwm_driver, !13, !"mtk_disp_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 308, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 237, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 241, i32 41}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 251, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mtk_disp_pwm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_disp_pwm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mtk_disp_pwm_ops, !27, !"mtk_disp_pwm_ops", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 216, i32 29}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 98, i32 4}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mtk_disp_pwm_apply._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mtk_disp_pwm_apply._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 105, i32 4}
!35 = !{ptr @mtk_disp_pwm_apply._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mtk_disp_pwm_apply._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 186, i32 3}
!39 = !{ptr @mtk_disp_pwm_get_state._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_disp_pwm_get_state._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mtk_disp_pwm_get_state._entry.14, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 192, i32 3}
!43 = !{ptr @mtk_disp_pwm_get_state._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mtk_disp_pwm_of_match, !45, !"mtk_disp_pwm_of_match", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 299, i32 34}
!46 = !{ptr @mt2701_pwm_data, !47, !"mt2701_pwm_data", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 269, i32 34}
!48 = !{ptr @mt8173_pwm_data, !49, !"mt8173_pwm_data", i1 false, i1 false}
!49 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 279, i32 34}
!50 = !{ptr @mt8183_pwm_data, !51, !"mt8183_pwm_data", i1 false, i1 false}
!51 = !{!"../drivers/pwm/pwm-mtk-disp.c", i32 289, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2062920}
!63 = !{i64 2152989537}
!64 = !{i64 2152989743}
!65 = !{i64 2062502}
!66 = !{i64 2152997373}
!67 = !{i64 2152997899}
