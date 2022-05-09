; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_disp_ovl.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_disp_ovl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.component_ops = type { ptr, ptr }
%struct.mtk_disp_ovl_data = type { i32, i32, i32, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mtk_disp_ovl = type { ptr, ptr, ptr, %struct.cmdq_client_reg, ptr, ptr, ptr }
%struct.cmdq_client_reg = type { i8, i16, i16 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }
%struct.mtk_plane_state = type { %struct.drm_plane_state, %struct.mtk_plane_pending_state }
%struct.mtk_plane_pending_state = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek-disp-ovl\00", [46 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_driver_dt_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_ovl_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_ovl_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_ovl_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-ovl-2l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_ovl_2l_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_ovl_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-ovl-2l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_ovl_2l_driver_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_disp_ovl_probe, ptr @mtk_disp_ovl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_disp_ovl_driver_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get ovl clk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_disp_ovl_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/mediatek/mtk_disp_ovl.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry_ptr = internal global ptr @mtk_disp_ovl_probe._entry, section ".printk_index", align 4
@mtk_disp_ovl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to ioremap ovl\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry_ptr.8 = internal global ptr @mtk_disp_ovl_probe._entry.6, section ".printk_index", align 4
@mtk_disp_ovl_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek_drm\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get mediatek,gce-client-reg fail!\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry_ptr.13 = internal global ptr @mtk_disp_ovl_probe._entry.11, section ".printk_index", align 4
@mtk_disp_ovl_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mtk_disp_ovl_bind, ptr @mtk_disp_ovl_unbind }, [24 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add component: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_disp_ovl_probe._entry_ptr.16 = internal global ptr @mtk_disp_ovl_probe._entry.14, section ".printk_index", align 4
@mt2701_ovl_driver_data = internal constant { %struct.mtk_disp_ovl_data, [16 x i8] } { %struct.mtk_disp_ovl_data { i32 64, i32 8, i32 4, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8173_ovl_driver_data = internal constant { %struct.mtk_disp_ovl_data, [16 x i8] } { %struct.mtk_disp_ovl_data { i32 3904, i32 8, i32 4, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8183_ovl_driver_data = internal constant { %struct.mtk_disp_ovl_data, [16 x i8] } { %struct.mtk_disp_ovl_data { i32 3904, i32 10, i32 4, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8183_ovl_2l_driver_data = internal constant { %struct.mtk_disp_ovl_data, [16 x i8] } { %struct.mtk_disp_ovl_data { i32 3904, i32 10, i32 2, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8192_ovl_driver_data = internal constant { %struct.mtk_disp_ovl_data, [16 x i8] } { %struct.mtk_disp_ovl_data { i32 3904, i32 10, i32 4, i8 1, i8 1 }, [16 x i8] zeroinitializer }, align 32
@mt8192_ovl_2l_driver_data = internal constant { %struct.mtk_disp_ovl_data, [16 x i8] } { %struct.mtk_disp_ovl_data { i32 3904, i32 10, i32 2, i8 1, i8 1 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642, i64 909199170, i64 1448695129, i64 1498831189]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 496, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [29 x i8] c"mtk_disp_ovl_driver_dt_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 475, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"mtk_disp_ovl_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 492, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 391, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 398, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 404, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 413, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"mtk_disp_ovl_component_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 368, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 419, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"mt2701_ovl_driver_data\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 431, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"mt8173_ovl_driver_data\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 438, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"mt8183_ovl_driver_data\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 445, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"mt8183_ovl_2l_driver_data\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 452, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"mt8192_ovl_driver_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 459, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"mt8192_ovl_2l_driver_data\00", align 1
@___asan_gen_.87 = private constant [43 x i8] c"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 467, i32 39 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @mtk_disp_ovl_probe._entry, ptr @mtk_disp_ovl_probe._entry.11, ptr @mtk_disp_ovl_probe._entry.14, ptr @mtk_disp_ovl_probe._entry.6, ptr @mtk_disp_ovl_probe._entry_ptr, ptr @mtk_disp_ovl_probe._entry_ptr.13, ptr @mtk_disp_ovl_probe._entry_ptr.16, ptr @mtk_disp_ovl_probe._entry_ptr.8, ptr @.str, ptr @mtk_disp_ovl_driver_dt_match, ptr @mtk_disp_ovl_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @mtk_disp_ovl_component_ops, ptr @.str.15, ptr @mt2701_ovl_driver_data, ptr @mt8173_ovl_driver_data, ptr @mt8183_ovl_driver_data, ptr @mt8183_ovl_2l_driver_data, ptr @mt8192_ovl_driver_data, ptr @mt8192_ovl_2l_driver_data], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_driver_dt_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_ovl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_ovl_driver_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_ovl_driver_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_ovl_driver_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_ovl_2l_driver_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_ovl_driver_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_ovl_2l_driver_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_enable_vblank(ptr nocapture noundef readonly %dev, ptr noundef %vblank_cb, ptr noundef %vblank_cb_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vblank_cb1 = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vblank_cb1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vblank_cb, ptr %vblank_cb1, align 4
  %vblank_cb_data2 = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %vblank_cb_data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vblank_cb_data, ptr %vblank_cb_data2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !54
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 33554432) #5, !srcloc !54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_disable_vblank(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vblank_cb = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vblank_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vblank_cb, align 4
  %vblank_cb_data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %vblank_cb_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %vblank_cb_data, align 4
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ovl_clk_enable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_clk_disable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %smi_id_en = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %smi_id_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smi_id_en, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #5, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs5 = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs5, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #5, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !54
  %data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %smi_id_en = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %smi_id_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %smi_id_en, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %11) #5, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_config(ptr nocapture noundef readonly %dev, i32 noundef %w, i32 noundef %h, i32 noundef %vrefresh, i32 noundef %bpc, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w)
  %cmp.not = icmp eq i32 %w, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp1.not = icmp eq i32 %h, 0
  %or.cond = or i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %h, 16
  %or = or i32 %shl, %w
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 3
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %or, ptr noundef %cmdq_reg, ptr noundef %3, i32 noundef 32) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmdq_reg2 = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 3
  %regs3 = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs3, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg2, ptr noundef %5, i32 noundef 40) #5
  %6 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs3, align 4
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef 1, ptr noundef %cmdq_reg2, ptr noundef %7, i32 noundef 20) #5
  %8 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs3, align 4
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg2, ptr noundef %9, i32 noundef 20) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ddp_write_relaxed(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ddp_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_ovl_layer_nr(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %layer_nr = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %layer_nr, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_ovl_supported_rotations(ptr nocapture noundef readnone %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ovl_layer_check(ptr nocapture noundef readnone %dev, i32 noundef %idx, ptr nocapture noundef %mtk_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rotation1 = getelementptr inbounds %struct.drm_plane_state, ptr %mtk_state, i32 0, i32 14
  %0 = ptrtoint ptr %rotation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotation1, align 4
  %call = tail call i32 @drm_rotation_simplify(i32 noundef %1, i32 noundef 49) #5
  %and = and i32 %call, -2
  %and2 = and i32 %call, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %mtk_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_yuv, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %rotation1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %rotation1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_layer_on(ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 3
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %mul = shl i32 %idx, 5
  %add = add i32 %mul, 192
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef 1, ptr noundef %cmdq_reg, ptr noundef %3, i32 noundef %add) #5
  %data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %gmc_bits = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %gmc_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gmc_bits, align 4
  %sub = sub i32 16, %7
  %shr4 = lshr i32 16384, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp = icmp eq i32 %7, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = mul nuw nsw i32 %shr4, 65537
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 8192, %sub
  %shl7 = shl nuw nsw i32 %shr, 8
  %or8 = or i32 %shl7, %shr
  %shl9 = shl nuw nsw i32 %shr4, 16
  %or10 = or i32 %or8, %shl9
  %shl11 = shl i32 %shr4, 24
  %or12 = or i32 %or10, %shl11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gmc_value.0 = phi i32 [ %or, %if.then ], [ %or12, %if.else ]
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add16 = add i32 %mul, 200
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef %gmc_value.0, ptr noundef %cmdq_reg, ptr noundef %9, i32 noundef %add16) #5
  %shl17 = shl nuw i32 1, %idx
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef %shl17, ptr noundef %cmdq_reg, ptr noundef %11, i32 noundef 44, i32 noundef %shl17) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ddp_write_mask(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_layer_off(ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 3
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %shl = shl nuw i32 1, %idx
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg, ptr noundef %3, i32 noundef 44, i32 noundef %shl) #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %mul = shl i32 %idx, 5
  %add = add i32 %mul, 192
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg, ptr noundef %5, i32 noundef %add) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_layer_config(ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef readonly %state, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %addr2 = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr2, align 4
  %pitch3 = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pitch3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pitch3, align 4
  %and = and i32 %5, 65535
  %y = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y, align 4
  %shl = shl i32 %7, 16
  %x = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %x, align 4
  %or = or i32 %shl, %9
  %height = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %shl4 = shl i32 %11, 16
  %width = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %or5 = or i32 %shl4, %13
  %enable = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmdq_reg.i = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 3
  %regs.i = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %shl.i = shl nuw i32 1, %idx
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg.i, ptr noundef %17, i32 noundef 44, i32 noundef %shl.i) #5
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %idx, 5
  %add.i = add i32 %mul.i, 192
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg.i, ptr noundef %19, i32 noundef %add.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %format = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %sw.bb.i [
    i32 1448695129, label %sw.bb22.i
    i32 909199170, label %sw.bb1.i
    i32 875710290, label %sw.bb6.i
    i32 875710274, label %sw.bb11.i
    i32 875714642, label %if.end.ovl_fmt_convert.exit_crit_edge
    i32 875708754, label %if.end.ovl_fmt_convert.exit_crit_edge101
    i32 875714626, label %if.end.sw.bb18.i_crit_edge
    i32 875708738, label %if.end.sw.bb18.i_crit_edge102
    i32 875713112, label %if.end.sw.bb19.i_crit_edge
    i32 875713089, label %if.end.sw.bb19.i_crit_edge103
    i32 875709016, label %if.end.sw.bb20.i_crit_edge
    i32 875708993, label %if.end.sw.bb20.i_crit_edge104
    i32 1498831189, label %sw.bb21.i
  ]

if.end.sw.bb20.i_crit_edge104:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end.sw.bb20.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20.i

if.end.sw.bb19.i_crit_edge103:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19.i

if.end.sw.bb19.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19.i

if.end.sw.bb18.i_crit_edge102:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end.sw.bb18.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end.ovl_fmt_convert.exit_crit_edge101:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fmt_convert.exit

if.end.ovl_fmt_convert.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fmt_convert.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data.i = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %fmt_rgb565_is_0.i = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %fmt_rgb565_is_0.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fmt_rgb565_is_0.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %cond.i = select i1 %tobool.not.i, i32 4096, i32 0
  br label %ovl_fmt_convert.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data2.i = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data2.i, align 4
  %fmt_rgb565_is_03.i = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %fmt_rgb565_is_03.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fmt_rgb565_is_03.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i = icmp eq i8 %30, 0
  %or.i = select i1 %tobool4.not.i, i32 16781312, i32 16777216
  br label %ovl_fmt_convert.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data7.i = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data7.i, align 4
  %fmt_rgb565_is_08.i = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %fmt_rgb565_is_08.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fmt_rgb565_is_08.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool9.not.i = icmp eq i8 %34, 0
  %cond10.i = select i1 %tobool9.not.i, i32 0, i32 4096
  br label %ovl_fmt_convert.exit

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data12.i = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %data12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data12.i, align 4
  %fmt_rgb565_is_013.i = getelementptr inbounds %struct.mtk_disp_ovl_data, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %fmt_rgb565_is_013.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fmt_rgb565_is_013.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool14.not.i = icmp eq i8 %38, 0
  %or16.i = select i1 %tobool14.not.i, i32 16777216, i32 16781312
  br label %ovl_fmt_convert.exit

sw.bb18.i:                                        ; preds = %if.end.sw.bb18.i_crit_edge, %if.end.sw.bb18.i_crit_edge102
  br label %ovl_fmt_convert.exit

sw.bb19.i:                                        ; preds = %if.end.sw.bb19.i_crit_edge, %if.end.sw.bb19.i_crit_edge103
  br label %ovl_fmt_convert.exit

sw.bb20.i:                                        ; preds = %if.end.sw.bb20.i_crit_edge, %if.end.sw.bb20.i_crit_edge104
  br label %ovl_fmt_convert.exit

sw.bb21.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fmt_convert.exit

sw.bb22.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fmt_convert.exit

ovl_fmt_convert.exit:                             ; preds = %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.end.ovl_fmt_convert.exit_crit_edge, %if.end.ovl_fmt_convert.exit_crit_edge101
  %retval.0.i = phi i32 [ %cond.i, %sw.bb.i ], [ 409600, %sw.bb21.i ], [ 16785408, %sw.bb20.i ], [ 8192, %sw.bb19.i ], [ 16789504, %sw.bb18.i ], [ %or16.i, %sw.bb11.i ], [ %cond10.i, %sw.bb6.i ], [ %or.i, %sw.bb1.i ], [ 413696, %sw.bb22.i ], [ 12288, %if.end.ovl_fmt_convert.exit_crit_edge ], [ 12288, %if.end.ovl_fmt_convert.exit_crit_edge101 ]
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %39 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fb, align 4
  %tobool7.not = icmp eq ptr %40, null
  br i1 %tobool7.not, label %ovl_fmt_convert.exit.if.end14_crit_edge, label %land.lhs.true

ovl_fmt_convert.exit.if.end14_crit_edge:          ; preds = %ovl_fmt_convert.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %ovl_fmt_convert.exit
  call void @__sanitizer_cov_trace_pc() #7
  %format10 = getelementptr inbounds %struct.drm_framebuffer, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %format10, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %has_alpha, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool11.not = icmp eq i8 %44, 0
  %or13 = or i32 %retval.0.i, 511
  %spec.select = select i1 %tobool11.not, i32 %retval.0.i, i32 %or13
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %ovl_fmt_convert.exit.if.end14_crit_edge
  %con.0 = phi i32 [ %retval.0.i, %ovl_fmt_convert.exit.if.end14_crit_edge ], [ %spec.select, %land.lhs.true ]
  %rotation = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 9
  %45 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rotation, align 4
  %and15 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %sub = add i32 %11, -1
  %mul = mul i32 %sub, %5
  %add = select i1 %tobool16.not, i32 0, i32 %mul
  %addr.0 = add i32 %add, %3
  %47 = shl nuw nsw i32 %and15, 4
  %48 = or i32 %47, %con.0
  %and23 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %sub28 = add i32 %5, -1
  %add29 = select i1 %tobool24.not, i32 0, i32 %sub28
  %addr.1 = add i32 %addr.0, %add29
  %49 = shl nuw nsw i32 %and23, 6
  %50 = or i32 %48, %49
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 3
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %mul31 = shl i32 %idx, 5
  %add32 = add i32 %mul31, 48
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %50, ptr noundef %cmdq_reg, ptr noundef %52, i32 noundef %add32) #5
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add36 = add i32 %mul31, 68
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %and, ptr noundef %cmdq_reg, ptr noundef %54, i32 noundef %add36) #5
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add40 = add i32 %mul31, 56
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %or5, ptr noundef %cmdq_reg, ptr noundef %56, i32 noundef %add40) #5
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add44 = add i32 %mul31, 60
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %or, ptr noundef %cmdq_reg, ptr noundef %58, i32 noundef %add44) #5
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add49 = add i32 %64, %mul31
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %addr.1, ptr noundef %cmdq_reg, ptr noundef %60, i32 noundef %add49) #5
  tail call void @mtk_ovl_layer_on(ptr noundef %dev, i32 noundef %idx, ptr noundef %cmdq_pkt)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_bgclr_in_on(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %5 = or i32 %4, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ovl_bgclr_in_off(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_ovl_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.mtk_disp_ovl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #5
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %regs, align 4
  %cmp.i90 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_ovl, ptr %call.i, i32 0, i32 3
  %call23 = tail call i32 @cmdq_dev_get_client_reg(ptr noundef %dev1, ptr noundef %cmdq_reg, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end35_crit_edge, label %do.body26

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_disp_ovl_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_disp_ovl_probe, %if.then31)) #5
          to label %if.end35 [label %if.then31], !srcloc !63

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_disp_ovl_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.body26, %if.end22.if.end35_crit_edge
  %call36 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call36, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.dev_name.exit_crit_edge

if.end35.dev_name.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end35.dev_name.exit_crit_edge
  %retval.0.i91 = phi ptr [ %13, %if.end.i ], [ %11, %if.end35.dev_name.exit_crit_edge ]
  %call.i92 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call2, ptr noundef nonnull @mtk_disp_ovl_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i91, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp39 = icmp slt i32 %call.i92, 0
  br i1 %cmp39, label %do.end43, label %if.end44

do.end43:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call2, i32 noundef %call.i92) #8
  br label %cleanup

if.end44:                                         ; preds = %dev_name.exit
  %call45 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @mtk_disp_ovl_component_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call45) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end44.cleanup_crit_edge, %do.end43, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %7, %do.end19 ], [ %call.i92, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call45, %do.end50 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_ovl_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mtk_disp_ovl_component_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_dev_get_client_reg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_ovl_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mtk_disp_ovl, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !54
  %vblank_cb = getelementptr inbounds %struct.mtk_disp_ovl, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %vblank_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vblank_cb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vblank_cb_data = getelementptr inbounds %struct.mtk_disp_ovl, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %vblank_cb_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vblank_cb_data, align 4
  tail call void %3(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_disp_ovl_bind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_disp_ovl_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 496, i32 11}
!2 = !{ptr @mtk_disp_ovl_driver, !3, !"mtk_disp_ovl_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 492, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 391, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_disp_ovl_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_disp_ovl_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 398, i32 3}
!14 = !{ptr @mtk_disp_ovl_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_disp_ovl_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 404, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mtk_disp_ovl_probe.__UNIQUE_ID_ddebug306, !17, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 413, i32 3}
!22 = !{ptr @mtk_disp_ovl_probe._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_disp_ovl_probe._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 419, i32 3}
!26 = !{ptr @mtk_disp_ovl_probe._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_disp_ovl_probe._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mtk_disp_ovl_component_ops, !29, !"mtk_disp_ovl_component_ops", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 368, i32 35}
!30 = !{ptr @mtk_disp_ovl_driver_dt_match, !31, !"mtk_disp_ovl_driver_dt_match", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 475, i32 34}
!32 = !{ptr @mt2701_ovl_driver_data, !33, !"mt2701_ovl_driver_data", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 431, i32 39}
!34 = !{ptr @mt8173_ovl_driver_data, !35, !"mt8173_ovl_driver_data", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 438, i32 39}
!36 = !{ptr @mt8183_ovl_driver_data, !37, !"mt8183_ovl_driver_data", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 445, i32 39}
!38 = !{ptr @mt8183_ovl_2l_driver_data, !39, !"mt8183_ovl_2l_driver_data", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 452, i32 39}
!40 = !{ptr @mt8192_ovl_driver_data, !41, !"mt8192_ovl_driver_data", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 459, i32 39}
!42 = !{ptr @mt8192_ovl_2l_driver_data, !43, !"mt8192_ovl_2l_driver_data", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_ovl.c", i32 467, i32 39}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2156483966}
!54 = !{i64 5228807}
!55 = !{i8 0, i8 2}
!56 = !{i64 5229225}
!57 = !{i64 2156485183}
!58 = !{i64 2156486311}
!59 = !{i64 2156490649}
!60 = !{i64 2156490953}
!61 = !{i64 2156491626}
!62 = !{i64 2156491930}
!63 = !{i64 2148921785, i64 2148921790, i64 2148921803, i64 2148921847, i64 2148921881, i64 2148921902}
!64 = !{i64 2156483567}
